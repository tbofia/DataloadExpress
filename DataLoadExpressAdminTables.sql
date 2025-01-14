USE STAGINGDB
GO

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='DATALOADXLOG' AND xtype='U')
BEGIN
CREATE TABLE [admin].[DATALOADXLOG](
	[DataProfilingID] [int] IDENTITY(1,1) NOT NULL,
	[DataloadXHK] [char](32) NOT NULL,
	[Filename] [nvarchar](255) NULL,
	[Delimiter] [varchar](5) NULL,
	[TargetTableName] [varchar](255) NULL,
	[NumberOfColumns] [int] NULL,
	[TotalRecords] [int] NULL,
	[DuplicateRecords] [int] NULL,
	[InvalidCharactersRecords] [int] NULL,
	[ErrorRecords] [int] NULL,
	[LoadSuccessStatus] [int] NOT NULL,
	[ResponseGenerated] [char](1) NULL,
	[FileCreateTime] [datetime] NOT NULL,
	[LoadStartTime] [datetime] NOT NULL,
	[LoadEndTime] [datetime] NULL
) ON [PRIMARY]

END
GO

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='DATALOADXERRORLOG' AND xtype='U')
BEGIN

CREATE TABLE [admin].[DATALOADXERRORLOG](
	[ErrorLogId] [int] IDENTITY(1,1) NOT NULL,
	[DataloadXHK] [varchar](max) NULL,
	[TargetTableName] [varchar](255) NULL,
	[Message] [varchar](max) NULL,
	[OtherMessages] [nvarchar](max) NULL,
	[ErrorDateTime] [datetime] NULL
) ON [PRIMARY];

END
GO

IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='DATALOADXSENDER' AND xtype='U')
BEGIN
CREATE TABLE [admin].[DATALOADXSENDER](
	[Agencyid] [int] IDENTITY(1,1) NOT NULL,
	[AgencyName] [varchar](255) NULL,
	[Senderid] [varchar](255) NULL,
	[SFTPInPath] [varchar](255) NULL,
	[SFTPOutPath] [varchar](255) NULL,
	[EffDate] [datetime] NULL,
	[Termdate] [datetime] NULL,
	[Createdate] [datetime] NULL,
	[Updatedate] [datetime] NULL
) ON [PRIMARY]
END
GO

-- Add OtherMessages column
IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'DATALOADXERRORLOG' AND TABLE_SCHEMA = 'admin' AND COLUMN_NAME = 'OtherMessages')
BEGIN

	SELECT [ErrorLogId]
		  ,[DataloadXHK]
		  ,[TargetTableName]
		  ,[Message]
		  ,CAST(NULL AS nvarchar(MAX)) AS [OtherMessages]
		  ,[ErrorDateTime]
	INTO #TEMP
	FROM  [admin].[DATALOADXERRORLOG];

	DROP TABLE [admin].[DATALOADXERRORLOG];

	SELECT * INTO [admin].[DATALOADXERRORLOG] FROM #TEMP;

	DROP TABLE #TEMP;
END

GO

-- Add ErrorRecords column
IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'DATALOADXLOG' AND TABLE_SCHEMA = 'admin' AND COLUMN_NAME = 'ErrorRecords')
BEGIN

	SELECT [DataProfilingID]
		  ,[DataloadXHK]
		  ,[Filename]
		  ,[Delimiter]
		  ,[TargetTableName]
		  ,[NumberOfColumns]
		  ,[TotalRecords]
		  ,[DuplicateRecords]
		  ,[InvalidCharactersRecords]
		  ,CAST(NULL AS INT) ErrorRecords
		  ,[LoadSuccessStatus]
		  ,[FileCreateTime]
		  ,[LoadStartTime]
		  ,[LoadEndTime]
	INTO #TEMP
	FROM [admin].[DATALOADXLOG];

	DROP TABLE [admin].[DATALOADXLOG];

	SELECT * INTO [admin].[DATALOADXLOG] FROM #TEMP;

	DROP TABLE #TEMP;
END

GO
-- Add Response File Column
IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'DATALOADXLOG' AND TABLE_SCHEMA = 'admin' AND COLUMN_NAME = 'ResponseGenerated')
BEGIN

	SELECT [DataProfilingID]
		  ,[DataloadXHK]
		  ,[Filename]
		  ,[Delimiter]
		  ,[TargetTableName]
		  ,[NumberOfColumns]
		  ,[TotalRecords]
		  ,[DuplicateRecords]
		  ,[InvalidCharactersRecords]
		  ,[ErrorRecords]
		  ,[LoadSuccessStatus]
		  ,CAST(NULL AS CHAR(1)) ResponseGenerated
		  ,[FileCreateTime]
		  ,[LoadStartTime]
		  ,[LoadEndTime]
	INTO #TEMP
	FROM [admin].[DATALOADXLOG];

	DROP TABLE [admin].[DATALOADXLOG];

	SELECT * INTO [admin].[DATALOADXLOG] FROM #TEMP;

	DROP TABLE #TEMP;
END

GO




