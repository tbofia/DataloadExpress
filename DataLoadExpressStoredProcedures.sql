USE [STAGINGDB]
GO

CREATE PROCEDURE [admin].[send_notification] (
  @EmailRecipients VARCHAR(255),
  @EmailBody VARCHAR(MAX),
  @EmailSubject VARCHAR(255),
  @Attachments VARCHAR(1000))
  AS
  BEGIN
  EXEC msdb.dbo.sp_send_dbmail
    @profile_name = 'DataServices',
    @recipients = @EmailRecipients,
    @subject = @EmailSubject,
    @body = @EmailBody,
    @body_format = 'HTML';
  END

  GO
  USE [STAGINGDB]
GO

DROP PROCEDURE [admin].[DATALOADXCLEANUP]
GO


CREATE PROCEDURE [admin].[DATALOADXCLEANUP]
AS
BEGIN

DECLARE  @TableName VARCHAR(255)
		,@schemaName VARCHAR(255)
		,@DropStatement NVARCHAR(4000);

BEGIN TRY
BEGIN TRAN
	DECLARE myCursor CURSOR FOR
	WITH DataLoadXTables AS(
	SELECT DISTINCT
		TargetTableName
	FROM STAGINGDB.admin.DATALOADXLOG
	)
	SELECT
		I.TABLE_SCHEMA, I.TABLE_NAME
	FROM STAGINGDB.INFORMATION_SCHEMA.TABLES I
	LEFT OUTER JOIN DataLoadXTables D
	ON I.TABLE_NAME = D.TargetTableName
	WHERE I.TABLE_CATALOG = 'STAGINGDB'
	AND I.TABLE_SCHEMA <> 'admin'
	AND D.TargetTableName IS NULL

	OPEN myCursor
	FETCH NEXT FROM myCursor INTO @schemaName,@TableName
	WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @DropStatement = 'DROP TABLE ['+@schemaName+'].['+@TableName+'];'
		EXEC sp_executesql @DropStatement
		PRINT @DropStatement

		FETCH NEXT FROM myCursor INTO @schemaName,@TableName

	END
COMMIT TRAN
END TRY
BEGIN CATCH
	ROLLBACK
END CATCH
CLOSE myCursor
DEALLOCATE myCursor
END

GO


