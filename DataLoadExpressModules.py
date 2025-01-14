import datetime
import logging
import os
import time
import pandas as pd
import shutil
import sqlalchemy
from datetime import datetime
import hashlib
import csv
import contextlib
import re
import chardet
import openpyxl


# This function returns as database engine
def get_db_connection(server, database):
    # Set up the SQL Server connection

    connectionstring = (
        "mssql+pyodbc://{}/{}?driver=ODBC+Driver+17+for+SQL+Server".format(
            server, database
        )
    )

    try:
        connection = sqlalchemy.create_engine(connectionstring, fast_executemany=True)

    except Exception as e:
        logging.error("An exception occurred while creating database engine: %s", e)
        connection = None

    return connection


# This function will delete header and trailer lines from a file if specified
def delete_header_and_trailer_lines(file_path, pre_created_table):
    file_extension = os.path.splitext(file_path)[1].lower()
    file_name = os.path.splitext(os.path.basename(file_path))[0]
    modified_file = (
        os.path.dirname(file_path) + "/" + file_name + "_MOD" + file_extension
    )
    modified = False

    if pre_created_table["headerlines"] > 0 or pre_created_table["trailerlines"] > 0:
        headerlines = pre_created_table["headerlines"]
        trailerlines = pre_created_table["trailerlines"]

        with open(file_path, "r") as file:
            lines = file.readlines()

        # Check if there are at least two lines
        if len(lines) >= 2:
            # Remove the first and last lines
            modified_lines = lines[headerlines:-trailerlines]
        else:
            modified_lines = []

        with open(modified_file, "w") as file:
            file.writelines(modified_lines)
        modified = True

    return [modified_file, modified]


def detect_encoding(file_path):
    with open(file_path, "rb") as file:
        raw_data = file.read()
        result = chardet.detect(raw_data)
        encoding = result["encoding"]
    return encoding


# This function tries to figure out delimiter for files by looking at sample of lines,
# This function will be used if we cannot sniff delimiter with library function
def use_default_delimiter(config_params, file_path):
    delimiter_to_use = None
    match_found = False
    base_columns = 0

    file_encoding = detect_encoding(file_path)
    try:
        file = open(file_path, "r")
        sample_lines = file.readlines()[0:5]
    except Exception as e:
        print(
            "Could not implicitly read file as encoded, lets guess encoding and use it.",
            e,
        )
        try:
            file = open(file_path, "r", encoding=file_encoding)
            sample_lines = file.readlines()[0:1]
        except Exception as e:
            print("Could Not Sample File to determine delimiter", e)
            return delimiter_to_use

    first_line = sample_lines[0]

    for delimiter in config_params["delimiters"]:
        match = 0
        column_count = len(first_line.split(delimiter))
        number_of_lines = len(sample_lines) - 1

        # If we have large enough sample lets find delimiter by using all lines and making sure it is same for all
        if len(sample_lines) > 2:
            for line in sample_lines[1:5]:
                if len(line.split(delimiter)) == column_count:
                    match += 1
            if match == number_of_lines and column_count > 1:
                match_found = True
                delimiter_to_use = delimiter

        # if we do not have large enough sample, lets pick the delimiter that splits header line into most columns
        else:
            if column_count > base_columns:
                base_columns = column_count
                delimiter_to_use = delimiter

        if match_found:
            break
    return delimiter_to_use


# Uses two delimiter functions to try to figure out the delimiter to use
def get_delimiter(config_params, file_path):
    temp_file = (
        file_path + ".tmp"
    )  # This will be used to put sample file data for sniffing delimiter
    try:
        # Sniffer functions is acting funny with big files, lets try to sniff just from the first 10 lines
        with open(file_path, "r") as file:
            lines = file.readlines()[:10]
        with open(temp_file, "w") as file:
            file.writelines(lines)
        with open(temp_file, "r") as file:
            if len(lines) < 3:
                delimiter = use_default_delimiter(config_params, file_path)
            else:
                delimiter = str(csv.Sniffer().sniff(file.read()).delimiter)

        os.remove(temp_file)

    except Exception as e:
        print(
            "Could Not Sniff delimiter. Message: {}... Trying Default function.".format(
                e
            )
        )
        if os.path.isfile(temp_file):
            os.remove(temp_file)
        delimiter = use_default_delimiter(config_params, file_path)

    return delimiter


# This function created a dataframe from a csv file
def process_data_from_csv(load_file, delimiter, header_line, error_records_path):
    message = "Successfully read data and prepared dataframe."
    if delimiter is not None:
        try:
            with open(error_records_path, "w") as log:
                with contextlib.redirect_stderr(log):
                    df_object = pd.read_csv(
                        load_file,
                        sep=delimiter,
                        low_memory=False,
                        header=header_line,
                        dtype=str,
                        on_bad_lines="warn",
                    )
        except Exception as e:
            print(
                "Could Not read none unicode file {}... Trying to read as unicode".format(
                    e
                )
            )
            df_object = None

        if not isinstance(df_object, pd.DataFrame):
            # Try reading none unicode data
            try:
                with open(error_records_path, "w") as log:
                    with contextlib.redirect_stderr(log):
                        df_object = pd.read_csv(
                            load_file,
                            sep=delimiter,
                            low_memory=False,
                            encoding="unicode_escape",
                            on_bad_lines="warn",
                            header=header_line,
                            dtype=str,
                        )

            except Exception as e:
                message = "Error encountered in read_csv: Could not read dataframe. {}".format(
                    e
                )
                df_object = None

    else:
        message = "Could Not Process File, because no delimiter was identified."
        df_object = None

    return [df_object, message]


# Check that we have valid columns information, number of columns and list of columns
def check_valid_columns(df_object, message, pre_created_table):
    # If we have a dataframe lets validate the columns against predefined schema if we have to
    if isinstance(df_object, pd.DataFrame) and len(pre_created_table["columnlist"]) > 0:
        if len(df_object.columns) != len(pre_created_table["columnlist"]):
            message = "Schema Differences: Number of Columns in file: ({}) does not match pre-defined template ({}).".format(
                str(len(df_object.columns)),
                str(len(pre_created_table["columnlist"])),
            )
            df_object = None
        if pre_created_table["columnnamesincluded"] == 1:
            for element in range(len(df_object.columns)):
                if (
                    pre_created_table["columnlist"][element]
                    != df_object.columns[element]
                ):
                    message = (
                        "Schema Differences: Column Names Read from the file do not match the Column Names "
                        "expected."
                    )
                    df_object = None
                    return df_object, message

    return df_object, message


# This function assigns column header to dataframe if file did not have any headers.
def assign_column_header(df_object, pre_created_table):
    # Update header with what is stored in database table
    message = "Successfully Assigned columns to dataframe."
    if (
        len(pre_created_table["columnlist"]) > 0
        and pre_created_table["columnnamesincluded"] == 0
    ):
        df_object.columns = pre_created_table["columnlist"]
    else:
        message = "No Column Assignment happened."

    return [df_object, message]


# This function reads data from csv file after preping it
def read_data_from_csv(config_params, file_path, pre_created_table, error_records_path):
    delimiter = None
    load_file = file_path
    header_line = 0
    modified_file = ""

    # if column list is not empty means the table is pre-defined
    if len(pre_created_table["columnlist"]) != 0:
        modified_file, modified = delete_header_and_trailer_lines(
            file_path, pre_created_table
        )
        if modified:
            load_file = modified_file

        delimiter = pre_created_table["delimiter"]
        header_line = None if pre_created_table["columnnamesincluded"] == 0 else 0

    # If delimiter is still empty means either not pre-defined schema or predefined schema has no delimiter so
    # let's figure is out!
    if delimiter is None:
        delimiter = get_delimiter(config_params, file_path)

    # Try reading unicode data
    df_object, message = process_data_from_csv(
        load_file, delimiter, header_line, error_records_path
    )
    # Delete intermediate file if it was created.
    if os.path.exists(modified_file):
        os.remove(modified_file)

    # if a dataframe was return let's check if we need to update columns
    df_object, message = check_valid_columns(df_object, message, pre_created_table)
    if isinstance(df_object, pd.DataFrame):
        df_object, message = assign_column_header(df_object, pre_created_table)

    return [df_object, message, delimiter]


# This function reads data from Excel files
def read_data_from_excel(config_params, dir_path, file_path, pre_created_table):
    # for Excel documents lets see if a sheetname is specified and use that, else use default sheet (first sheet.)
    message = "Successfully read data and prepared dataframe."
    load_file = file_path
    sheet_name_path = os.path.dirname(dir_path) + "/" + config_params["xlsheetnamefile"]
    sheetname = 0

    if os.path.exists(sheet_name_path):
        with open(sheet_name_path, "r") as file:
            try:
                sheetname = file.readlines()[0]
            except Exception as e:
                message = e

    # here we will use sheetname specified to read data from Excel file
    try:
        df_object = pd.read_excel(load_file, dtype=str, sheet_name=sheetname)
        message = "Successfully read data and prepared dataframe."
    except Exception as e:
        message = "Excel file processing error: {}".format(e)
        df_object = None

    df_object, message = check_valid_columns(df_object, message, pre_created_table)

    return [df_object, message]


# This function reads JSON data
def read_data_from_json(file_path, pre_created_table):
    message = "Successfully read data and prepared dataframe."
    try:
        df_object = pd.read_json(file_path, lines=True, dtype=str)
    except Exception as e:
        message = "Json file processing error: {}".format(e)
        df_object = None

    # If we have a dataframe lets validate the columns against predefined schema if we have to
    df_object, message = check_valid_columns(df_object, message, pre_created_table)

    return [df_object, message]


# This function reads xml data
def read_data_from_xml(file_path, pre_created_table):
    message = "Successfully read data and prepared dataframe."
    try:
        df_object = pd.read_xml(file_path, dtype=str)
    except Exception as e:
        message = "XML file processing error: {}".format(e)
        df_object = None

    # If we have a dataframe lets validate the columns against predefined schema if we have to
    df_object, message = check_valid_columns(df_object, message, pre_created_table)

    return [df_object, message]


# This function determines how to process file based on extension
def post_process_file(
    config_params, dir_path, file_path, error_records_path, pre_created_table
):
    # Determine file extension
    file_extension = os.path.splitext(file_path)[1].lower()
    delimiter = None
    error_lines = 0

    # 1.
    if file_extension not in [".xlsx", ".xls", ".json", ".xml"]:
        df_object, message, delimiter = read_data_from_csv(
            config_params, file_path, pre_created_table, error_records_path
        )

    # 2.
    elif file_extension in [".xlsx", ".xls"]:
        df_object, message = read_data_from_excel(
            config_params, dir_path, file_path, pre_created_table
        )

    # 3.
    elif file_extension == ".json":
        df_object, message = read_data_from_json(file_path, pre_created_table)

    # 4.
    elif file_extension == ".xml":
        df_object, message = read_data_from_xml(file_path, pre_created_table)

    # 5.
    else:
        message = f"Unsupported file format: {file_extension}"
        df_object = None

    # Let's Count number of records that have errors.
    if os.path.exists(error_records_path):
        with open(error_records_path, "r") as err_file:
            error_lines = len(err_file.readlines())
        if error_lines == 0:  # Delete error-records file if no error recorded
            os.remove(error_records_path)

    df_object = add_metadata(df_object, file_path)

    return [df_object, delimiter, error_lines, message]


# This function adds additional columns to dataframe created from file
def add_metadata(df_object, file_path):
    # Add load_datetime and filename columns to the start of DataFrame
    if isinstance(df_object, pd.DataFrame):
        df_object.insert(0, "load_datetime", datetime.now())
        df_object.insert(0, "filename", os.path.basename(file_path))
        # Cleanup Column Names remove lead and trailing spaces and newline characters from column names.
        df_object = df_object.rename(
            columns=lambda x: x.strip().replace("\n", " ").replace("  ", " ")
        )
    return df_object


# This function create initial audit entry when new file is encountered
def create_file_profile(config_params, file_path, targettable, connection):
    ret_val = []
    # Perform data profiling
    file_name = os.path.basename(file_path)

    t_obj = time.strptime(time.ctime(os.path.getmtime(file_path)))
    file_drop_time = time.strftime("%Y-%m-%d %H:%M:%S", t_obj)

    profile_time = datetime.now()
    profile_hk = file_name + str(profile_time)

    profile_hk = profile_hk.encode("utf-8")
    hashed_var = hashlib.md5(profile_hk).hexdigest()

    profiling_entry = {
        "DataloadXHK": hashed_var,
        "Filename": file_name,
        "Delimiter": None,
        "TargetTableName": targettable,
        "NumberOfColumns": None,
        "TotalRecords": None,
        "DuplicateRecords": None,
        "InvalidCharactersRecords": 0,
        "ErrorRecords": None,
        "LoadSuccessStatus": 0,
        "FileCreateTime": datetime.strptime(file_drop_time, "%Y-%m-%d %H:%M:%S"),
        "LoadStartTime": profile_time,
    }
    ret_val.append(hashed_var)
    try:
        # Insert data profiling details into the DataProfiling table
        pd.DataFrame([profiling_entry]).to_sql(
            config_params["log_table"],
            con=connection,
            schema=config_params["log_schema"],
            if_exists="append",
            index=False,
        )
        ret_val.append(0)
    except Exception as e:
        logging.error("An exception occurred while writing to log table: %s", e)
        ret_val.append(1)
        ret_val.append(e)

    return ret_val


# This function updates audit entry when file is read and processes into dataframe
def update_file_profile(
    config_params, df, error_lines_count, delimiter, profile_hk, connection
):
    # update file profile status as completed
    conn = connection.connect()

    try:
        conn.execute(
            sqlalchemy.text(
                "UPDATE {}.{} "
                "SET Delimiter=:del "
                "   ,NumberOfColumns=:cols "
                "   ,TotalRecords=:recs "
                "   ,DuplicateRecords=:dups "
                "   ,ErrorRecords=:errs "
                "WHERE DataloadXHK=:id".format(
                    config_params["log_schema"], config_params["log_table"]
                )
            ),
            {
                "id": profile_hk,
                "del": delimiter,
                "cols": len(df.columns) - 2,
                "recs": len(df),
                "dups": int(df.duplicated().sum()),
                "errs": error_lines_count,
            },
        )
        conn.commit()
        conn.close()
    except Exception as e:
        conn.close()
        logging.error("An exception occurred while updating log: %s", e)


# This function creates and error entry if encounter and error while processing file,
# it also updates audit log to mark load as failed.
def generate_error_log_entry(
    config_params, profile_hk, targettable, error_message, connection
):
    # Insert log entry into the LoadLog table
    log_entry = {
        "DataloadXHK": profile_hk,
        "TargetTableName": targettable,
        "Message": error_message,
        "OtherMessages": None,
        "ErrorDateTime": datetime.now(),
    }

    try:
        # Add Error log entry
        pd.DataFrame([log_entry]).to_sql(
            config_params["error_log_table"],
            con=connection,
            schema=config_params["log_schema"],
            if_exists="append",
            index=False,
        )

    except Exception as e:
        logging.error("An exception occurred while logging error: %s", e)

    # update log table mark record as incomplete with error.
    set_file_processed_status(config_params, profile_hk, -1, connection)


# This function returns True if a given table exists in the connection
def check_table_exists(targettable, connection):
    conn = connection.connect()
    tableexists = None
    try:
        tableexists = conn.execute(
            sqlalchemy.text(
                "SELECT TABLE_NAME "
                "FROM INFORMATION_SCHEMA.TABLES "
                "WHERE TABLE_SCHEMA = 'dbo'"
                "AND TABLE_NAME=:id"
            ),
            {"id": targettable},
        ).fetchall()
        conn.close()
    except Exception as e:
        conn.close()
        logging.error("An exception occurred while logging error: %s", e)

    return len(tableexists) > 0


# This function will return reference data on the table schema if it is pre-defined
def check_table_columns_defined(config_params, targettable, connection):
    result = None
    ret_val = {
        "delimiter": None,
        "columnlist": [],
        "tabletype": None,
        "columnnamesincluded": None,
        "headerlines": None,
        "trailerlines": None,
        "filenameformat": None,
        "sendervalidationflag": None,
    }

    conn = connection.connect()
    try:
        result = conn.execute(
            sqlalchemy.text(
                "SELECT TableName "
                ", Delimiter "
                ", ColumnName "
                ", TableType "
                ", FirstRowIsColumnNames "
                ", HeaderLines "
                ", TrailerLines "
                ", FileNameFormat "
                ", ValidateSender "
                "FROM {}.{} "
                "WHERE TableName  = '{}' "
                "ORDER BY Position".format(
                    config_params["log_schema"],
                    config_params["columns_table"],
                    targettable,
                )
            )
        ).fetchall()
        conn.close()
    except Exception as e:
        conn.close()
        logging.error("An exception occurred while logging error: %s", e)

    if len(result) > 0:
        # get data elements from result
        for row in result:
            ret_val["delimiter"] = row[1]
            ret_val["columnlist"].append(row[2])
            ret_val["tabletype"] = row[3]
            ret_val["columnnamesincluded"] = row[4]
            ret_val["headerlines"] = row[5]
            ret_val["trailerlines"] = row[6]
            ret_val["filenameformat"] = row[7]
            ret_val["sendervalidationflag"] = row[8]

    # return results
    return ret_val


# This function sets final status for processes file
def set_file_processed_status(config_params, profile_hk, loadstatus, connection):
    # update file profile status as completed
    conn = connection.connect()

    try:
        conn.execute(
            sqlalchemy.text(
                "UPDATE {}.{} "
                "SET LoadSuccessStatus=:loadstatus"
                "   ,LoadEndTime=:loadtime  "
                "WHERE DataloadXHK=:id".format(
                    config_params["log_schema"], config_params["log_table"]
                )
            ),
            {"id": profile_hk, "loadstatus": loadstatus, "loadtime": datetime.now()},
        )
        conn.commit()
        conn.close()
    except Exception as e:
        conn.close()
        logging.error(
            "An exception occurred while attempting to update loadstatus: %s", e
        )


# This function moves file to archive folder
def archive_file(file_path, archive_path):
    # Archive the file by moving it to the archive folder
    file_name = str(os.path.basename(file_path))
    archive_path = os.path.join(archive_path, file_name)
    shutil.move(file_path, archive_path)

    return


# function to compare table shemas and return any differences
def check_schema_differences(left_table, right_table, connection):
    # Query List
    l1 = []
    htmlcode = ""

    if check_table_exists(left_table, connection) and check_table_exists(
        right_table, connection
    ):
        # Query to get new columns.
        newcolumns = sqlalchemy.text(
            "SELECT TL.COLUMN_NAME AS NewColumns "
            "FROM INFORMATION_SCHEMA.COLUMNS TL "
            "LEFT OUTER JOIN INFORMATION_SCHEMA.COLUMNS TR "
            "ON TL.COLUMN_NAME = TR.COLUMN_NAME "
            "AND TR.TABLE_NAME = '{}' "
            "WHERE TL.TABLE_NAME = '{}' "
            "AND TR.COLUMN_NAME IS NULL".format(right_table, left_table)
        )
        h1 = "<h2>New Columns</h2>"
        t1 = {"header": h1, "code": newcolumns}
        l1.append(t1)
        # Query to get columns missing from new dataset.
        missingcolumns = sqlalchemy.text(
            "SELECT TL.COLUMN_NAME AS MissingColumns "
            "FROM INFORMATION_SCHEMA.COLUMNS TL "
            "LEFT OUTER JOIN INFORMATION_SCHEMA.COLUMNS TR "
            "ON TL.COLUMN_NAME = TR.COLUMN_NAME "
            "AND TR.TABLE_NAME = '{}' "
            "WHERE TL.TABLE_NAME = '{}' "
            "AND TR.COLUMN_NAME IS NULL "
            "AND TR.COLUMN_NAME <> 'dataloadxid'".format(left_table, right_table)
        )
        h1 = "<h2>Missing Columns</h2>"
        t1 = {"header": h1, "code": missingcolumns}
        l1.append(t1)

        # Query to get any data type changes.
        datatypechanges = sqlalchemy.text(
            "SELECT TL.COLUMN_NAME AS ColumnName, "
            "TL.DATA_TYPE AS NewDataType, "
            "TR.DATA_TYPE AS OldDataType "
            "FROM INFORMATION_SCHEMA.COLUMNS TL "
            "INNER JOIN INFORMATION_SCHEMA.COLUMNS TR "
            "ON TL.COLUMN_NAME = TR.COLUMN_NAME "
            "AND TR.TABLE_NAME = '{}' "
            "WHERE TL.TABLE_NAME = '{}' "
            "AND TR.DATA_TYPE <> TL.DATA_TYPE".format(right_table, left_table)
        )
        h1 = "<h2>Datatype Changes</h2>"
        t1 = {"header": h1, "code": datatypechanges}
        l1.append(t1)

        # Query to get column position changes
        columnpositionchanges = sqlalchemy.text(
            "SELECT TL.COLUMN_NAME AS ColumnName, "
            "TL.ORDINAL_POSITION AS NewPosition, "
            "TR.ORDINAL_POSITION AS OldPosition "
            "FROM INFORMATION_SCHEMA.COLUMNS TL "
            "INNER JOIN INFORMATION_SCHEMA.COLUMNS TR "
            "ON TL.COLUMN_NAME = TR.COLUMN_NAME "
            "AND TR.TABLE_NAME = '{}' "
            "WHERE TL.TABLE_NAME = '{}' "
            "AND (TR.ORDINAL_POSITION - 1) <> TL.ORDINAL_POSITION".format(
                right_table, left_table
            )
        )
        h1 = "<h2>Column Position Changes</h2>"
        t1 = {"header": h1, "code": columnpositionchanges}
        l1.append(t1)

        for element in l1:
            data = pd.read_sql(element["code"], connection)
            if not data.empty:
                data = data.to_html(classes="table table-stripped")
                htmlcode = htmlcode + element["header"] + data

    if htmlcode == "":
        htmlcode = None

    return htmlcode


# This function sends out email notification using stored procedure
def send_email_notification(
    connection, config_params, emailsubject, emailbody, error_records_file, profile_hk
):
    conn = connection.connect()
    try:
        conn.execute(
            sqlalchemy.text(
                "EXEC {}.{} @EmailRecipients=:sendto, @EmailBody=:body, @EmailSubject=:subject, "
                "@Attachments=:errorfile ".format(
                    config_params["log_schema"], config_params["notification_procedure"]
                )
            ),
            {
                "sendto": config_params["email"],
                "body": emailbody,
                "subject": emailsubject,
                "errorfile": error_records_file,
            },
        )
        conn.commit()
        conn.close()
        update_error_log(config_params, profile_hk, "Error Email: Success.", connection)
    except Exception as e:
        conn.close()
        update_error_log(
            config_params, profile_hk, "Error Email: Failure...{}".format(e), connection
        )
        print("Could not send Error Email Notification")


# This function prepares email message based on error type
def prepare_email_notification(
    config_params,
    error_code,
    profile_hk,
    targettable,
    file_path,
    error_records_file,
    connection,
):
    file_name = os.path.basename(file_path)
    error_records_file = error_records_file.replace("/", "\\")

    emailcontent = "<p><b>Table Name: </b>{}</p><p><b>File Name: </b>{}</p>".format(
        targettable, file_name
    )
    temp_table = (
        targettable + "_" + file_name.replace(".", "").replace("-", "").replace(" ", "")
    )

    if error_code != 0:
        emailcontent = emailcontent + "<p><b>Error Folder: </b>{}</p>".format(
            file_path.replace("/", "\\").replace("drop", "error").replace(file_name, "")
        )

    if os.path.isfile(error_records_file):
        emailcontent = emailcontent + "<p><b>Error Records File: </b>{}</p><p>".format(
            error_records_file
        )

    # Let's get Extra messages to add to body from the error log
    sql_script = "SELECT Message FROM {}.{} WHERE DataloadXHK = '{}' ".format(
        config_params["log_schema"], config_params["error_log_table"], profile_hk
    )

    message = pd.read_sql(sql_script, connection)
    errormessage = "".join(message["Message"].to_list())
    errormessage = "<p>{}</p>".format(errormessage)

    if error_code == 0:
        emailsubject = (
            "DATALOADX: File contains error records: See log table for error details."
        )
        emailbody = "File loaded but there are some error records, please see link to error records file."
        emailbody = emailcontent + emailbody + errormessage
        send_email_notification(
            connection,
            config_params,
            emailsubject,
            emailbody,
            error_records_file,
            profile_hk,
        )

    elif error_code == 1:
        emailsubject = "DATALOADX: File load Error: See log table for error details."
        emailbody = "Failed to load data from intermediate. This is a sql insert error."
        emailbody = emailcontent + emailbody + errormessage
        send_email_notification(
            connection,
            config_params,
            emailsubject,
            emailbody,
            error_records_file,
            profile_hk,
        )

    elif error_code == 2:
        emailsubject = "DATALOADX: Cleanup error: See log table for error details."
        emailbody = "Failed to load file because intermediate table persisted from previous run."
        emailbody = emailcontent + emailbody + errormessage
        send_email_notification(
            connection,
            config_params,
            emailsubject,
            emailbody,
            error_records_file,
            profile_hk,
        )

    elif error_code == 3:
        schema_differences = check_schema_differences(
            temp_table, targettable, connection
        )
        emailsubject = (
            "DATALOADX: Schema differences error: See log table for error details."
        )
        emailbody = "Failed to load file due to schema differences."
        emailbody = emailcontent + emailbody + schema_differences + errormessage
        send_email_notification(
            connection,
            config_params,
            emailsubject,
            emailbody,
            error_records_file,
            profile_hk,
        )

    elif error_code == 4:
        emailsubject = "DATALOADX: Intermidiate table creation error: See log table for error details."
        emailbody = "Failed to create intermediate table from script."
        emailbody = emailcontent + emailbody + errormessage
        send_email_notification(
            connection,
            config_params,
            emailsubject,
            emailbody,
            error_records_file,
            profile_hk,
        )

    elif error_code == 5:
        emailsubject = "DATALOADX: Intermidiate table loading error: See log table for error details."
        emailbody = "Failed to load data into intermediate table from dataframe."
        emailbody = emailcontent + emailbody + errormessage
        send_email_notification(
            connection,
            config_params,
            emailsubject,
            emailbody,
            error_records_file,
            profile_hk,
        )

    elif error_code == 6:
        emailsubject = "DATALOADX: Data File error: See log table for error details."
        emailbody = (
            "Failed to create dataframe from file, make sure file is correctly configured with headers or "
            "check for invalid file format."
        )
        emailbody = emailcontent + emailbody + errormessage
        send_email_notification(
            connection,
            config_params,
            emailsubject,
            emailbody,
            error_records_file,
            profile_hk,
        )

    elif error_code == 7:
        emailsubject = "DATALOADX: File Sender error: See log table for error details."
        emailbody = "Failed to create dataframe from file (File Rejected), the sender is not registered as an Agency. "
        emailbody = emailcontent + emailbody + errormessage
        send_email_notification(
            connection,
            config_params,
            emailsubject,
            emailbody,
            error_records_file,
            profile_hk,
        )

    elif error_code == 8:
        emailsubject = "DATALOADX: File Name Error: See log table for error details."
        emailbody = "Failed to create dataframe from file (File Rejected). File name does not match defined format."
        emailbody = emailcontent + emailbody + errormessage
        send_email_notification(
            connection,
            config_params,
            emailsubject,
            emailbody,
            error_records_file,
            profile_hk,
        )


# This function updated error log after sending notifications
def update_error_log(config_params, profile_hk, othermessage, connection):
    # update file profile status as completed
    conn = connection.connect()

    try:
        conn.execute(
            sqlalchemy.text(
                "UPDATE {}.{} "
                "SET OtherMessages=:message  "
                "WHERE DataloadXHK=:id".format(
                    config_params["log_schema"], config_params["error_log_table"]
                )
            ),
            {"id": profile_hk, "message": othermessage},
        )
        conn.commit()
        conn.close()
    except Exception as e:
        logging.error("An exception occurred while updating error log: %s", e)
        conn.close()


# This moves file to error folder
def error_file(file_path, error_path):
    # error_type: 1: large file, 2: Could not write panda to table of copy data
    # 3: No DataFrame created Invalid File type

    # Archive the file by moving it to the archive folder
    file_name = str(os.path.basename(file_path))
    error_path = os.path.join(error_path, file_name)
    shutil.move(file_path, error_path)

    return


# This code will check if file has already been loaded
def is_file_loaded(config_params, file_name, targettable, connection):
    conn = connection.connect()
    isfileloaded = None
    try:
        isfileloaded = conn.execute(
            sqlalchemy.text(
                "SELECT DISTINCT dataprofilingid "
                "FROM {}.{} "
                "WHERE filename=:file "
                "AND targettablename=:targettable "
                "AND loadsuccessstatus = 1".format(
                    config_params["log_schema"], config_params["log_table"]
                )
            ),
            {"targettable": targettable, "file": file_name},
        ).fetchall()
        conn.close()
    except Exception as e:
        conn.close()
        logging.error(
            "An exception occurred while checking if file had been loaded. error log: %s",
            e,
        )
    return len(isfileloaded) > 0


# This function will tell us if file is being used. This is to make sure that we don't process files that are still
# being writen (Created)
def check_file_status(file_path):
    try:
        # If you can open the file without any exceptions, it's not open in write mode by another process.
        with open(file_path, "r") as file:
            fileisnotinuse = True
    except PermissionError:
        fileisnotinuse = False

    return fileisnotinuse


# This function builds create table script from list of columns
def generate_create_table_script(targettablename, columnslist):
    creattablescript = (
        "CREATE TABLE dbo.{} (\n"
        "[dataloadxid] int identity(1,1) NOT NULL,\n"
        "[filename] varchar(1000) NOT NULL,\n"
        "[load_datetime] datetime NOT NULL"
    ).format(targettablename)

    for column in columnslist:
        if column not in ("dataloadxid", "filename", "load_datetime"):
            creattablescript = (
                creattablescript + ",\n[" + column + "] varchar(max) NULL"
            )

    creattablescript = creattablescript + ");\n\n"

    return creattablescript


# THis function creates indexes if they don't exist and the table exiist
def create_indexes(connection, targettablename):
    conn = connection.connect()

    create_clustered_index = (
        "IF NOT EXISTS (SELECT * FROM sys.indexes WHERE name = '{}_IX' AND object_id = "
        "OBJECT_ID('{}')) "
        "AND EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = '{}') "
        "BEGIN "
        "CREATE CLUSTERED INDEX {}_IX ON dbo.{} ([dataloadxid],[filename],[load_datetime]); "
        "END"
    ).format(
        targettablename,
        targettablename,
        targettablename,
        targettablename,
        targettablename,
    )
    create_nonclustered_index = (
        "IF NOT EXISTS (SELECT * FROM sys.indexes WHERE name = '{}_NCIX' AND object_id = "
        "OBJECT_ID('{}')) "
        "AND EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = '{}') "
        "BEGIN "
        "CREATE NONCLUSTERED INDEX {}_NCIX ON dbo.{} ([load_datetime]); "
        "END ".format(
            targettablename,
            targettablename,
            targettablename,
            targettablename,
            targettablename,
        )
    )

    try:
        conn.execute(sqlalchemy.text(create_clustered_index))  # Create Index
        conn.execute(sqlalchemy.text(create_nonclustered_index))  # Create Index
        conn.commit()
        conn.close()
    except Exception as e:
        conn.close()
        print(
            "DataLoadX: Could Not Create Indexes \n {} \n {} \n {}".format(
                create_clustered_index, create_nonclustered_index, e
            )
        )


# This function drops non-clustered indexes in a given table if they exist
def drop_indexes(connection, targettablename):
    conn = connection.connect()

    drop_nonclustered_index = "DROP INDEX IF EXISTS {}_NCIX ON dbo.{};".format(
        targettablename, targettablename
    )

    try:
        conn.execute(sqlalchemy.text(drop_nonclustered_index))  # Create Index
        conn.commit()
        conn.close()
    except Exception as e:
        conn.close()
        print(
            "DataLoadX: Could Not Drop Indexes \n {} \n {}".format(
                drop_nonclustered_index, e
            )
        )


# This function validates that file follows regex format defined
def validate_file_format(filenameformat, file_name):
    isvalidefileformat = False
    filenameformat = filenameformat.replace("\n", "")
    pattern_list = filenameformat.split(",")
    for pattern in pattern_list:
        pattern = re.compile(pattern.strip())
        if pattern.match(file_name):
            # return true of at least one of patterns is matched
            isvalidefileformat = True
            break

    return isvalidefileformat  # If no pattern is matched


# This function validates that the file sender is in list of approved senders
def validate_sender(config_params, file_path, connection):
    isactivesender = False
    file_name = os.path.basename(file_path)
    sql_script = "SELECT Senderid FROM {}.{} WHERE GETDATE() BETWEEN EffDate AND ISNULL(Termdate,GETDATE()) ".format(
        config_params["log_schema"], config_params["senders_table"]
    )

    senders = pd.read_sql(sql_script, connection)

    for sender in senders["Senderid"].to_list():
        if file_name.startswith(sender):
            isactivesender = True
            break

    return isactivesender


def get_failure_counts(config_attribs, file_path, target_table, connection):
    file_name = os.path.basename(file_path)
    sql_script = (
        "SELECT COUNT(1) Num_errors "
        "FROM {}.{} L "
        "INNER JOIN {}.{} E "
        "ON L.DataloadXHK = E.DataloadXHK "
        "WHERE L.TargetTableName = '{}' AND L.filename = '{}' ".format(
            config_attribs["log_schema"],
            config_attribs["log_table"],
            config_attribs["log_schema"],
            config_attribs["error_log_table"],
            target_table,
            file_name,
        )
    )
    error_count_data = pd.read_sql(sql_script, connection)
    if len(error_count_data) == 1:
        return error_count_data["Num_errors"][0]
    else:
        return 0
