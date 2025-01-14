import DataLoadXModules
import logging
import os
import glob
import time
import threading
import pandas as pd
import sqlalchemy
import configparser
import queue

from pathlib import Path


# This function will determine if file should be split or not and do the splitting into threads
def manage_file_size(config_attribs, dir_path, file, target_table, archive_folder):
    size_in_gb = Path(file).stat().st_size / (1024 * 1024 * 1024)
    file_split = False

    if size_in_gb > config_attribs["filesizelimit"]:
        split_large_file(config_attribs, file, dir_path, archive_folder, target_table)
        while os.path.isfile(file):
            time.sleep(10)

        # While there are still files being created for this table lets wait
        files_being_created = True
        while files_being_created:
            active_file_threads = []
            for file_thread in threading.enumerate():
                if (
                    len(file_thread.name.split("%")) == 2
                ):  # This will get all active file creation threads
                    table_files = file_thread.name.split("%")
                    if table_files[0] == target_table:
                        active_file_threads.append(file_thread.name)

            if len(active_file_threads) > 0:
                time.sleep(30)
            else:
                files_being_created = False

        file_split = True

    return file_split


# Getting the file ready to be injested and logging.
def pre_process_file(config_attribs, file, dir_path, target_table, archive_folder):
    # Create entry in DataloadXLog
    ret_val = {"processstatus": 0, "processkey": None, "pre_created_table": None}

    connection = DataLoadXModules.get_db_connection(
        config_attribs["targetserver"], config_attribs["targetdatabase"]
    )

    # If we had to split the file set status, so we can restart proccessing of folder from next file.
    if manage_file_size(config_attribs, dir_path, file, target_table, archive_folder):
        ret_val["processstatus"] = 1
        return ret_val

    status = DataLoadXModules.create_file_profile(
        config_attribs, file, target_table, connection
    )  # write date profile
    if status[1] == 1:  # if profile was not created skip this file
        ret_val["processstatus"] = 1
        # This will be interpreted as continue to next file
    else:
        ret_val["processkey"] = status[0]  # This is the profile_hk

    # Check if the table has pre-defined schema and create the object if yes.
    pre_created_table = DataLoadXModules.check_table_columns_defined(
        config_attribs, target_table, connection
    )
    ret_val["pre_created_table"] = pre_created_table

    # if target table does not exist, and it is pre-defined table, lets create it from column list
    if (
        not DataLoadXModules.check_table_exists(target_table, connection)
        and len(pre_created_table["columnlist"]) != 0
    ):
        createtablescript = DataLoadXModules.generate_create_table_script(
            target_table, pre_created_table["columnlist"]
        )
        createtablequeue.put(createtablescript)
        while (
            not DataLoadXModules.check_table_exists(target_table, connection)
            and not createtablequeue.empty()
        ):
            time.sleep(5)
        DataLoadXModules.create_indexes(connection, target_table)

    return ret_val


# This function determines if file is of correct format
def check_file_format(
    config_attribs,
    file,
    error_folder,
    error_records_file,
    file_name,
    profile_hk,
    target_table,
    pre_created_table,
    connection,
):
    fileformatisvalid = True

    if pre_created_table["filenameformat"] is not None:
        if not DataLoadXModules.validate_file_format(
            pre_created_table["filenameformat"], file_name
        ):
            error_type = 8
            DataLoadXModules.generate_error_log_entry(
                config_attribs,
                profile_hk,
                target_table,
                "Invalid File Naming Format.",
                connection,
            )
            DataLoadXModules.error_file(file, error_folder)
            DataLoadXModules.prepare_email_notification(
                config_attribs,
                error_type,
                profile_hk,
                target_table,
                file,
                error_records_file,
                connection,
            )
            fileformatisvalid = False

    return fileformatisvalid


# Let's check of we have a valid agency
def check_sender_agency(
    config_attribs,
    file,
    error_folder,
    error_records_file,
    profile_hk,
    target_table,
    pre_created_table,
    connection,
):
    isvalidagency = True
    if pre_created_table["sendervalidationflag"] == 1:
        if not DataLoadXModules.validate_sender(config_attribs, file, connection):
            error_type = 7
            DataLoadXModules.generate_error_log_entry(
                config_attribs,
                profile_hk,
                target_table,
                "Uregistered Agency. please check that Sender can send " "files.",
                connection,
            )
            DataLoadXModules.error_file(file, error_folder)
            DataLoadXModules.prepare_email_notification(
                config_attribs,
                error_type,
                profile_hk,
                target_table,
                file,
                error_records_file,
                connection,
            )
            isvalidagency = False

    return isvalidagency


def move_data_into_final_destination(load_table, table_name, connection):
    # If there are no schema differences drop index and then copy data into main table
    schemacompare = DataLoadXModules.check_schema_differences(
        load_table, table_name, connection
    )
    if schemacompare is None:
        # Drop Indexes on target table be
        DataLoadXModules.drop_indexes(connection, table_name)
        conn = connection.connect()
        try:
            insert_statement = "INSERT INTO dbo.{} SELECT * FROM dbo.[{}];".format(
                table_name, load_table
            )
            conn.execute(sqlalchemy.text(insert_statement))  # Insert Data
            conn.commit()
            conn.close()
            deletetablequeue.put(load_table)
            ret_val = [0, "Data was successfully copied to final destination."]

        except Exception as e:
            conn.close()
            ret_val = [1, "Data was not copied to final destination: {}".format(e)]

    else:
        ret_val = [3, "Schema Differences Detected.", load_table]

    return ret_val


def clean_intermediate_table(load_table, connection):
    if DataLoadXModules.check_table_exists(load_table, connection):
        ret_val = [2, "Intermediate table was not cleaned up from last Run."]
        deletetablequeue.put(load_table)
        while (
            DataLoadXModules.check_table_exists(load_table, connection)
            and not deletetablequeue.empty()
        ):
            time.sleep(5)
    else:
        ret_val = [0, "Intermediate did not persist from last run!"]
    return ret_val


def create_new_table(table_name, connection, df_object):
    if not DataLoadXModules.check_table_exists(table_name, connection):
        createtablescript = DataLoadXModules.generate_create_table_script(
            table_name, df_object.columns
        )
        createtablequeue.put(createtablescript)
        time.sleep(10)
        while (
            not DataLoadXModules.check_table_exists(table_name, connection)
            and not createtablequeue.empty()
        ):
            time.sleep(10)
        DataLoadXModules.create_indexes(connection, table_name)


def create_intermediate_table(load_table, df_object, connection):
    createtablescript = str(
        pd.io.sql.get_schema(df_object, "load_table_name", con=connection)
    ).replace("load_table_name", "dbo." + load_table)
    createtablequeue.put(createtablescript)
    # let's wait for the table to be created
    time.sleep(10)
    while (
        not DataLoadXModules.check_table_exists(load_table, connection)
        and not createtablequeue.empty()
    ):
        time.sleep(10)
    # Check if we were able to create load table
    if not DataLoadXModules.check_table_exists(load_table, connection):
        ret_val = [
            4,
            "Could not create table from script: {}".format(createtablescript),
        ]

    else:
        ret_val = [0, "Intermediate Table Create"]
    return ret_val


# This functions takes a dataframe and loads into and intermediate table then copies the data into final table.
def load_data_into_database_table(df_object, file_path, table_name, connection):
    file_name = os.path.basename(file_path)
    load_table = (
        table_name + "_" + file_name.replace(".", "").replace("-", "").replace(" ", "")
    )

    # If temp table for a file persists from last attempt, someone needs to delete manually
    ret_val = clean_intermediate_table(load_table, connection)
    if ret_val[0] != 0:
        return ret_val

    # Here we get create table statement and put in queue.
    ret_val = create_intermediate_table(load_table, df_object, connection)
    if ret_val[0] != 0:
        return ret_val
    # Dump dataframe into intermedate table
    try:
        df_object.to_sql(
            load_table,
            con=connection,
            schema="dbo",
            if_exists="append",
            index=False,
            chunksize=10000,
        )
    except Exception as e:
        ret_val = [0, e]
        return ret_val

    # Clear dataframe from Memory
    del df_object

    ret_val = move_data_into_final_destination(load_table, table_name, connection)

    return ret_val


# This function will continuously run to drop tmp tables, this is to deal with deadlock issues when multiple tables
# are being dropped
def delete_load_table(connection):
    while True:
        # Drop temp table is insert was successful
        if not deletetablequeue.empty():
            tablename = deletetablequeue.get()
            if DataLoadXModules.check_table_exists(tablename, connection):
                drop_table = "DROP TABLE {}".format(tablename)
                conn = connection.connect()
                try:
                    conn.execute(sqlalchemy.text(drop_table))
                    conn.commit()
                    conn.close()
                except Exception as e:
                    conn.close()
                    print(
                        "Could Not drop table {}. Make sure it exists. {}".format(
                            tablename, e
                        )
                    )
        time.sleep(10)


# This function will continuously run to create tmp tables, this is to deal with deadlock issues when multiple tables
# are being created
def create_load_table(connection):
    while True:
        # Drop temp table is insert was successful
        if not createtablequeue.empty():
            createtablescript = createtablequeue.get()
            conn = connection.connect()
            try:
                conn.execute(sqlalchemy.text(createtablescript))
                conn.commit()
                conn.close()
            except Exception as e:
                conn.close()
                print(
                    "Could Not Create Table from Script {} {}".format(
                        createtablescript, e
                    )
                )
        time.sleep(10)


# This function takes chunk of file lines and writes to a file
def create_file_chunk(file_number, file_path, header_line, file_lines):
    small_file = open(f"{file_path}", "a")

    if file_number > 0:  # Place header for subsequent files
        small_file.write(header_line)

    small_file.write("".join(file_lines))  # small_file.writelines(file_lines)

    small_file.close()

    return


# This function manages the queue of chunks of lines, popping elements and calling function to create small files
def manage_create_file_queue(thread):
    logging.warning("Thread %s: starting", thread)
    while True:
        if not createfilequeue.empty():
            active_file_threads = []
            for file_thread in threading.enumerate():
                if (
                    len(file_thread.name.split("%")) == 2
                ):  # This will get all active file creation threads
                    active_file_threads.append(file_thread.name)

            if (
                len(active_file_threads) < 5
            ):  # if we have less than five file creation threads add
                fileattribs = createfilequeue.get()
                thread = fileattribs[0] + "%" + str(fileattribs[1])
                createfilethread = threading.Thread(
                    target=create_file_chunk,
                    name=thread,
                    args=(
                        fileattribs[1],
                        fileattribs[2],
                        fileattribs[3],
                        fileattribs[4],
                    ),
                )
                createfilethread.start()
        time.sleep(5)


# This function splits large file into manageable chunks and puts in a queue
def split_large_file(config_attribs, file_path, folder_name, archive_path, table_name):
    folder_name = folder_name + "/"
    breakup_size = config_attribs["chunksize"] * 1024 * 1024  # Convert MB to bytes

    with open(file_path, "r") as file:
        # memory-map the file
        base_file_name = os.path.splitext(os.path.basename(file_path))[0]
        base_file_ext = os.path.splitext(os.path.basename(file_path))[1]
        file_lines = file.readlines(breakup_size)
        file_number = 0
        # While we are able to read lines from file
        while len(file_lines) > 0:
            if file_number == 0:  # Get header from first file
                header_line = file_lines[0]
            file_name = (
                folder_name
                + base_file_name
                + "_"
                + str(file_number)
                + "_"
                + str(config_attribs["chunksize"])
                + base_file_ext
            )

            # I only want to have 10 chunks in queue at a given time, this is to manage memory
            while createfilequeue.qsize() > 9:
                time.sleep(30)

            createfilequeue.put(
                [table_name, file_number, file_name, header_line, file_lines]
            )

            file_lines = file.readlines(breakup_size)
            file_number += 1

    DataLoadXModules.archive_file(file_path, archive_path)
    return


def process_file_success(
    config_attribs,
    file,
    target_table,
    profile_hk,
    status,
    connection,
    archive_folder,
    file_name,
    error_records_file,
):
    # We were able to load file but some records had errors.
    if os.path.isfile(error_records_file):
        DataLoadXModules.prepare_email_notification(
            config_attribs,
            status[0],
            profile_hk,
            target_table,
            file,
            error_records_file,
            connection,
        )

    DataLoadXModules.archive_file(file, archive_folder)  # Archive the file
    # Only move to next file if archiving is done
    while os.path.isfile(file):
        time.sleep(10)
    DataLoadXModules.set_file_processed_status(
        config_attribs, profile_hk, 1, connection
    )
    print(f"Successfully loaded File '{file_name}' into table {target_table}")


def process_file_errors(
    config_attribs,
    file,
    target_table,
    profile_hk,
    status,
    connection,
    error_folder,
    error_records_file,
):
    DataLoadXModules.generate_error_log_entry(
        config_attribs,
        profile_hk,
        target_table,
        str(status[1]),
        connection,
    )
    # If the error is not persistent intermediate table or error creating intermediate table then move file and send
    # notification Else move file and send notification if it has failed more than 2 times already.
    if (
        status[0] not in [2, 4]
        or DataLoadXModules.get_failure_counts(
            config_attribs, file, target_table, connection
        )
        > 2
    ):
        DataLoadXModules.error_file(file, error_folder)
        DataLoadXModules.prepare_email_notification(
            config_attribs,
            status[0],
            profile_hk,
            target_table,
            file,
            error_records_file,
            connection,
        )
    if status[0] == 3:
        temp_table = status[2]
        deletetablequeue.put(temp_table)
        while (
            DataLoadXModules.check_table_exists(temp_table, connection)
            and not deletetablequeue.empty()
        ):
            time.sleep(10)


def process_file_not_processed(
    config_attribs,
    file,
    target_table,
    profile_hk,
    prep_message,
    connection,
    error_folder,
    error_records_file,
):
    error_type = 6
    message = prep_message
    DataLoadXModules.generate_error_log_entry(
        config_attribs, profile_hk, target_table, message, connection
    )
    DataLoadXModules.error_file(file, error_folder)
    DataLoadXModules.prepare_email_notification(
        config_attribs,
        error_type,
        profile_hk,
        target_table,
        file,
        error_records_file,
        connection,
    )


# This is the function that loads all the files for a given table
def process_folder(thread, dir_path, config_attribs):
    logging.warning("Thread %s: starting", thread)
    connection = DataLoadXModules.get_db_connection(
        config_attribs["targetserver"], config_attribs["targetdatabase"]
    )
    files = glob.glob(os.path.join(dir_path, "*"))
    archive_folder = (
        os.path.dirname(dir_path) + "/archive/"
    )  # get parent directory of 'drop'
    error_folder = os.path.dirname(dir_path) + "/error/"
    target_table = str(os.path.basename(os.path.dirname(dir_path))).upper()

    for file in files:
        if os.path.isfile(file):
            file_name = os.path.basename(file)
            error_records_file = file_name.replace(".", "_") + "_ERROR_RECORDS.txt"
            error_records_file = os.path.dirname(dir_path) + "/" + error_records_file

            # Check that file is not being used (in flight...)
            if not DataLoadXModules.check_file_status(file):
                continue

            # Check that file is not already loaded
            if DataLoadXModules.is_file_loaded(
                config_attribs, file_name, target_table, connection
            ):
                DataLoadXModules.archive_file(file, archive_folder)  # Archive the file
                continue

            # Pre-process the file to get profile_hk and check if schema is pre-defined
            ret_val = pre_process_file(
                config_attribs, file, dir_path, target_table, archive_folder
            )
            profile_hk = ret_val["processkey"]
            pre_created_table = ret_val["pre_created_table"]

            # Move to next file if we were not able to create profile record or if we had to split the file.
            if ret_val["processstatus"] == 1:
                continue

            # Let's check if naming format is correct
            if not check_file_format(
                config_attribs,
                file,
                error_folder,
                error_records_file,
                file_name,
                profile_hk,
                target_table,
                pre_created_table,
                connection,
            ):
                continue

            # Let's see if this is valid sender before doing anything
            if not check_sender_agency(
                config_attribs,
                file,
                error_folder,
                error_records_file,
                profile_hk,
                target_table,
                pre_created_table,
                connection,
            ):
                continue

            # Here we try to create a dataframe from current file
            data_object = DataLoadXModules.post_process_file(
                config_attribs, dir_path, file, error_records_file, pre_created_table
            )
            df = data_object[0]  # process file i.e. read into dataframe
            delimiter = data_object[1]
            error_lines = data_object[2]
            prep_message = data_object[3]

            if isinstance(df, pd.DataFrame):  # if a dataframe was returned
                DataLoadXModules.update_file_profile(
                    config_attribs, df, error_lines, delimiter, profile_hk, connection
                )

                # If this is first file for given table create the target table
                create_new_table(target_table, connection, df)

                # load data to target database
                status = load_data_into_database_table(
                    df, file, target_table, connection
                )
                # if file was successfully loaded
                if status[0] == 0:
                    # File Loaded Successfully
                    process_file_success(
                        config_attribs,
                        file,
                        target_table,
                        profile_hk,
                        status,
                        connection,
                        archive_folder,
                        file_name,
                        error_records_file,
                    )
                # File Processed errors
                else:
                    process_file_errors(
                        config_attribs,
                        file,
                        target_table,
                        profile_hk,
                        status,
                        connection,
                        error_folder,
                        error_records_file,
                    )
                    continue
            # data was not processed into dataframe
            else:
                process_file_not_processed(
                    config_attribs,
                    file,
                    target_table,
                    profile_hk,
                    prep_message,
                    connection,
                    error_folder,
                    error_records_file,
                )

    # Recreate Index on target table
    DataLoadXModules.create_indexes(connection, target_table)

    connection.dispose()

    logging.warning("Thread %s: Ending", thread)


if __name__ == "__main__":
    # get information from configuration file.
    config = configparser.RawConfigParser()
    config.read(".config")

    config_params = {
        "targetserver": config["DATABASE_SERVER"]["SERVER"],
        "targetdatabase": config["DATABASE_SERVER"]["DATABASE"],
        "monitor_folder": config["FILE_PATH"]["ROOTDROPFOLDER"],
        "email": config["COMMUNICATION"]["EMAIL"],
        "notification_procedure": config["COMMUNICATION"]["NOTIFICATIONSP"],
        "log_schema": config["ADMINISTRATION"]["SCHEMA_NAME"],
        "log_table": config["ADMINISTRATION"]["LOG_TABLE"],
        "senders_table": config["ADMINISTRATION"]["SENDERS_TABLE"],
        "error_log_table": config["ADMINISTRATION"]["ERROR_LOG"],
        "columns_table": config["ADMINISTRATION"]["TABLE_COLUMNS"],
        "chunksize": int(config["MISC"]["SPLITSIZE"]),
        "filesizelimit": float(config["MISC"]["FILELIMIT"]),
        "delimiters": config["MISC"]["SUPPORTEDDELIMITERS"].strip().split("~"),
        "xlsheetnamefile": config["MISC"]["SHEETNAMEFILE"],
    }

    # This will be token used to determine which new table is in creation
    deletetablequeue = queue.Queue()
    createtablequeue = queue.Queue()
    createfilequeue = queue.Queue()

    while True:
        # Check all active threads
        active_threads = []
        for active_thread in threading.enumerate():
            active_threads.append(active_thread.name)

        # Monitor root folder and all sub folders and for each path check for files
        for dir_root, dir_name, file_list in os.walk(config_params["monitor_folder"]):
            # if the path is 'drop' folder
            # and 'drop' folder not in root,
            # and we are just one level deep from root ,
            # and folder is not empty,
            # and folder is not currently being processed, start a thread to process files in the folder
            if (
                (
                    (os.path.basename(dir_root) == "drop")
                    and (config_params["monitor_folder"] != os.path.dirname(dir_root))
                    and (dir_root.count(os.path.sep) == 2)
                )
                and len(file_list) != 0
            ) and str(
                os.path.basename(os.path.dirname(dir_root))
            ) not in active_threads:

                mainconnection = DataLoadXModules.get_db_connection(
                    config_params["targetserver"], config_params["targetdatabase"]
                )
                # We are naming the thread with folder name (So we should have only one thread per folder)

                # Check if there is a load table delete thread
                if "datafilestage_delete_load_table" not in active_threads:
                    threadname = "datafilestage_delete_load_table"
                    deletethread = threading.Thread(
                        target=delete_load_table,
                        name=threadname,
                        args=(mainconnection,),
                    )
                    deletethread.start()

                # Check if there is a load table create thread
                if "datafilestage_create_load_table" not in active_threads:
                    threadname = "datafilestage_create_load_table"
                    createthread = threading.Thread(
                        target=create_load_table,
                        name=threadname,
                        args=(mainconnection,),
                    )
                    createthread.start()

                # Check if there is a load table create thread
                if "datafilestage_create_file" not in active_threads:
                    threadname = "datafilestage_create_file"
                    filecreationthread = threading.Thread(
                        target=manage_create_file_queue,
                        name=threadname,
                        args=(threadname,),
                    )
                    filecreationthread.start()

                threadname = str(os.path.basename(os.path.dirname(dir_root)))
                folderthread = threading.Thread(
                    target=process_folder,
                    name=threadname,
                    args=(
                        threadname,
                        dir_root,
                        config_params,
                    ),
                )
                folderthread.start()

        time.sleep(120)  # Wait for 2 minutes before checking for new files
