USE [STAGINGDB]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[admin].[DATALOADXFILECOLUMNS]') AND type in (N'U'))
DROP TABLE [admin].[DATALOADXFILECOLUMNS]
GO

CREATE TABLE [admin].[DATALOADXFILECOLUMNS](
	[TableName] [varchar](255) NULL,
	[ColumnName] [varchar](255) NULL,
	[Position] [int] NULL,
	[DataType] [varchar](100) NULL,
	[Length] [int] NULL,
	[Delimiter] [varchar](5) NULL,
	[TableType] [varchar](100) NULL,
	[FirstRowIsColumnNames] [int] NOT NULL,
	[HeaderLines] [int] NOT NULL,
	[TrailerLines] [int] NOT NULL,
	[ValidateSender] [int] NULL,
	[FileNameFormat] [varchar](max) NULL,
	[CreatedBy] [varchar](255) NULL,
	[ModifiedBy] [varchar](255) NULL,
	[CreateDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'DataSubmitterCode', 3, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'PayerCode', 4, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'PlanID', 5, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'MemberInsuranceProductCategorycode', 6, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'PayerClaimControlNumber', 7, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'LineCounter', 8, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'VersionNumber', 9, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'CrossReferenceClaimsID', 10, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'InsuredGrouporPolicyNumber', 11, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'MedicaidAIDCategory', 12, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'SubscriberSocialSecurityNumber', 13, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'PlanSpecificContractNumber', 14, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'SubscriberLastName', 15, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'SubscriberFirstName', 16, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'SequenceNumber', 17, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'MemberSocialSecurityNumber', 18, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'IndividualRelationshipCode', 19, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'MemberGender', 20, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'MemberDateofBirth', 21, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'MemberLastName', 22, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'MemberFirstName', 23, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'MemberZIPCode', 24, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'PaidDate', 25, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'PlaceofServiceProfessional', 26, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'DiagnosisCode', 27, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'ICD9ICD10Flag', 28, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'CDTCode', 29, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'OralCavity1', 30, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'OralCavity2', 31, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'OralCavity3', 32, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'OralCavity4', 33, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'OralCavity5', 34, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'ToothNumberorLetter1', 35, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'Tooth1Surface1', 36, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'Tooth1Surface2', 37, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'Tooth1Surface3', 38, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'Tooth1Surface4', 39, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'Tooth1Surface5', 40, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'ToothNumberorLetter2', 41, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'Tooth2Surface1', 42, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'Tooth2Surface2', 43, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'Tooth2Surface3', 44, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'Tooth2Surface4', 45, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'Tooth2Surface5', 46, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'ToothNumberorLetter3', 47, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'Tooth3Surface1', 48, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'Tooth3Surface2', 49, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'Tooth3Surface3', 50, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'Tooth3Surface4', 51, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'Tooth3Surface5', 52, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'ToothNumberorLetter4', 53, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'Tooth4Surface1', 54, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'Tooth4Surface2', 55, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'Tooth4Surface3', 56, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'Tooth4Surface4', 57, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'Tooth4Surface5', 58, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'DateofServiceFrom', 59, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'DateofServiceThru', 60, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'ChargeAmount', 61, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'PlanPaidAmount', 62, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'CopayAmount', 63, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'CoinsuranceAmount', 64, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'DeductibleAmount', 65, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'AllowedAmount', 66, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'PaymentArrangementTypeFlag', 67, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'RenderingProviderID', 68, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'RenderingProviderNPI', 69, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'RenderingProviderEntityTypeQualifier', 70, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'RenderingProviderFirstName', 71, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'RenderingProviderMiddleName', 72, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'RenderingProviderLastNameorOrganizationName', 73, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'RenderingProviderSuffix', 74, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'RenderingProviderSpecialty', 75, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'RenderingProviderCityName', 76, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'RenderingProviderStateorProvince', 77, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'RenderingProviderZIPCode', 78, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'RenderingProviderGroupPracticeNPI', 79, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'BillingProviderID', 80, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'BillingProviderNPI', 81, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'BillingProviderLastNameorOrganizationName', 82, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'BillingProviderTaxID', 83, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'CarrierAssociatedwithClaim', 84, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'ClaimStatus', 85, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'ClaimLineType', 86, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'CarrierSpecificUniqueMemberID', 87, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'CarrierSpecificUniqueSubscriberID', 88, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'Unassigned', 89, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_DC', N'RecordType', 90, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'DataSubmitterCode', 3, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'PayerCode', 4, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'PlanID', 5, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'MemberInsuranceProductCategoryCode', 6, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'PayerClaimControlNumber', 7, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'LineCounter', 8, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'VersionNumber', 9, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'CrossReferenceClaimsID', 10, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'InsuredGrouporPolicyNumber', 11, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'MedicaidAIDCategory', 12, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'SubscriberSocialSecurityNumber', 13, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'PlanSpecificContractNumber', 14, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'SubscriberLastName', 15, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'SubscriberFirstName', 16, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'SequenceNumber', 17, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'MemberSocialSecurityNumber', 18, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'IndividualRelationshipCode', 19, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'MemberGender', 20, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'MemberDateofBirth', 21, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'MemberLastName', 22, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'MemberFirstName', 23, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'MemberZIPCode', 24, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'PatientControlNumber', 25, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'PaidDate', 26, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'AdmissionDate', 27, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'AdmissionHour', 28, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'AdmissionType', 29, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'PointofOrigin', 30, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'DischargeDate', 31, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'DischargeHour', 32, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'DischargeStatus', 33, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'TypeofBillInstitutional', 34, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'PlaceofServiceProfessional', 35, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'AdmittingDiagnosis', 36, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'FirstExternalCauseCode', 37, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'ICDVersionIndicator', 38, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'PrincipalDiagnosis', 39, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherDiagnosis1', 40, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherDiagnosis2', 41, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherDiagnosis3', 42, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherDiagnosis4', 43, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherDiagnosis5', 44, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherDiagnosis6', 45, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherDiagnosis7', 46, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherDiagnosis8', 47, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherDiagnosis9', 48, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherDiagnosis10', 49, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherDiagnosis11', 50, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherDiagnosis12', 51, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherDiagnosis13', 52, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherDiagnosis14', 53, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherDiagnosis15', 54, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherDiagnosis16', 55, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherDiagnosis17', 56, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherDiagnosis18', 57, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherDiagnosis19', 58, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherDiagnosis20', 59, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherDiagnosis21', 60, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherDiagnosis22', 61, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherDiagnosis23', 62, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherDiagnosis24', 63, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'PresentonAdmissionCode01', 64, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'PresentonAdmissionCode02', 65, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'PresentonAdmissionCode03', 66, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'PresentonAdmissionCode04', 67, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'PresentonAdmissionCode05', 68, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'PresentonAdmissionCode06', 69, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'PresentonAdmissionCode07', 70, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'PresentonAdmissionCode08', 71, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'PresentonAdmissionCode09', 72, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'PresentonAdmissionCode10', 73, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'PresentonAdmissionCode11', 74, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'PresentonAdmissionCode12', 75, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'PresentonAdmissionCode13', 76, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'PresentonAdmissionCode14', 77, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'PresentonAdmissionCode15', 78, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'PresentonAdmissionCode16', 79, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'PresentonAdmissionCode17', 80, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'PresentonAdmissionCode18', 81, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'PresentonAdmissionCode19', 82, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'PresentonAdmissionCode20', 83, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'PresentonAdmissionCode21', 84, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'PresentonAdmissionCode22', 85, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'PresentonAdmissionCode23', 86, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'PresentonAdmissionCode24', 87, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'PresentonAdmissionCode25', 88, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'RevenueCode', 89, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'ProcedureCode', 90, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'ProcedureModifier1', 91, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'ProcedureModifier2', 92, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'ProcedureModifier3', 93, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'ProcedureModifier4', 94, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'PrincipalProcedureCode', 95, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherProcedureCode1', 96, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherProcedureCode2', 97, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherProcedureCode3', 98, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherProcedureCode4', 99, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherProcedureCode5', 100, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherProcedureCode6', 101, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherProcedureCode7', 102, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherProcedureCode8', 103, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherProcedureCode9', 104, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherProcedureCode10', 105, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherProcedureCode11', 106, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherProcedureCode12', 107, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherProcedureCode13', 108, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherProcedureCode14', 109, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherProcedureCode15', 110, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherProcedureCode16', 111, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherProcedureCode17', 112, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherProcedureCode18', 113, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherProcedureCode19', 114, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherProcedureCode20', 115, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherProcedureCode21', 116, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherProcedureCode22', 117, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherProcedureCode23', 118, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherProcedureCode24', 119, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherProcedureCode25', 120, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'DateofServiceFrom', 121, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'DateofServiceThru', 122, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'ServiceUnitsQuantity', 123, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'UnitofMeasure', 124, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'ChargeAmount', 125, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'WithholdAmount', 126, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'PlanPaidAmount', 127, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'CoPayAmount', 128, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'CoinsuranceAmount', 129, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'DeductibleAmount', 130, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'OtherInsurancePaidAmount', 131, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'COBTPLAmount', 132, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'AllowedAmount', 133, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'PaymentArrangementTypeIndicator', 134, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'DrugCode', 135, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'RenderingProviderID', 136, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'RenderingProviderNPI', 137, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'RenderingProviderEntityTypeQualifier', 138, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'InPlanNetworkIndicator', 139, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'RenderingProviderFirstName', 140, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'RenderingProviderMiddleName', 141, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'RenderingProviderLastNameorOrganizationName', 142, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'RenderingProviderSuffix', 143, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'RenderingProviderSpecialty', 144, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'RenderingProviderCityName', 145, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'RenderingProviderStateorProvince', 146, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'RenderingProviderZIPCode', 147, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'RenderingProviderGroupPracticeNPI', 148, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'BillingProviderID', 149, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'BillingProviderNPI', 150, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'BillingProviderLastNameorOrganizationName', 151, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'BillingProviderTaxID', 152, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'ReferringProviderID', 153, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'ReferringProviderNPI', 154, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'AttendingProviderID', 155, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'AttendingProviderNPI', 156, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'CarrierAssociatedwithClaim', 157, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'TypeofClaim', 158, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'ClaimStatus', 159, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'DeniedClaimLineIndicator', 160, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'Claimadjustmentreasoncode', 161, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'ClaimLineType', 162, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'CarrierSpecificUniqueMemberID', 163, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'CarrierSpecificUniqueSubscriberID', 164, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'RenderingProviderStreetAddress', 165, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'Unassigned', 167, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'RecordType', 168, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'DataSubmitterCode', 3, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'PayerCode', 4, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'PlanID', 5, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'MemberInsuranceProductCategorycode', 6, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'PayerClaimControlNumber', 7, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'LineCounter', 8, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'VersionNumber', 9, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'CrossReferenceClaimsID', 10, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'InsuredGrouporPolicyNumber', 11, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'MedicaidAIDCategory', 12, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'SubscriberSocialSecurityNumber', 13, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'PlanSpecificContractNumber', 14, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'SubscriberLastName', 15, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'SubscriberFirstName', 16, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'SequenceNumber', 17, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'MemberSocialSecurityNumber', 18, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'IndividualRelationshipCode', 19, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'MemberGender', 20, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'MemberDateofBirth', 21, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'MemberLastName', 22, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'MemberFirstName', 23, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'MemberZIPCode', 24, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'DatePrescriptionFilled', 25, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'PaidDate', 26, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'DrugCode', 27, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'NewPrescriptionorRefill', 28, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'GenericDrugIndicator', 29, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'DispensedasWrittenCode', 30, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'CompoundDrugIndicator', 31, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'CompoundDrugNameorCompoundDrugIngredientList', 32, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'FormularyIndicator', 33, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'QuantityDispensed', 34, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'DaysSupply', 35, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'DrugUnitofMeasure', 36, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'PrescriptionNumber', 37, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'ChargeAmount', 38, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'PlanPaidAmount', 39, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'AllowedAmount', 40, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'SalesTaxAmount', 41, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'IngredientCostListPrice', 42, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'PostageAmountClaimed', 43, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'DispensingFee', 44, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'CoPayAmount', 45, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'CoinsuranceAmount', 46, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'DeductibleAmount', 47, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'COBTPLAmount', 48, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'OtherInsurancePaidAmount', 49, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'MemberSelfPayAmount', 50, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'PaymentArrangementTypeFlag', 51, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'PrescribingPhysicianID', 52, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'PrescribingPhysicianNPI', 53, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'PrescribingPhysicianFirstName', 54, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'PrescribingPhysicianLastName', 55, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'PharmacyNCPDPNumber', 56, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'PharmacyID', 57, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'PharmacyTaxIDNumber', 58, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'PharmacyNPI', 59, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'PharmacyLocationStreetAddress', 60, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'PharmacyLocationState', 61, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'PharmacyZIPCode', 62, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'PharmacyCountryCode', 63, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'MailOrderPharmacyIndicator', 64, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'CarrierAssociatedwithClaim', 65, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'InPlanNetworkIndicator', 66, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'RecordStatusCode', 67, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'ClaimLineType', 68, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'RejectCode', 69, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'CarrierSpecificUniqueMemberID', 70, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'CarrierSpecificUniqueSubscriberID', 71, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'PrescriberSpecialty', 72, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'PharmacyCity', 73, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'Unassigned', 74, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PC', N'RecordType', 75, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PV', N'DataSubmitterCode', 3, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PV', N'PayerCode', 4, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PV', N'PlanID', 5, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PV', N'PayerAssignedProviderIDforMemberPCP', 6, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PV', N'ProviderTaxID', 7, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PV', N'EntityTypeQualifier', 8, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PV', N'ProviderNPI', 9, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PV', N'ProviderDEANumber', 10, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PV', N'ProviderStateLicenseNumber', 11, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PV', N'ProviderFirstName', 12, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PV', N'ProviderMiddleNameorInitial', 13, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PV', N'ProviderLastNameorOrganizationName', 14, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PV', N'ProviderSuffix', 15, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PV', N'ProviderOfficeStreetAddress', 16, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PV', N'ProviderOfficeCity', 17, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PV', N'ProviderOfficeState', 18, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PV', N'ProviderOfficeZipCode', 19, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PV', N'ProviderFIPSCountyCode', 20, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PV', N'ProviderCountryCode', 21, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PV', N'ProviderPhone', 22, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PV', N'ProviderSpecialty', 23, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PV', N'AtypicalProviderTaxonomyCode', 24, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PV', N'ProviderMedicareProviderID', 25, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PV', N'ProviderMedicaidProviderID', 26, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PV', N'ProviderSpecialty2', 27, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PV', N'ProviderSpecialty3', 28, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PV', N'ProviderSpecialty4', 29, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PV', N'ProviderSpecialty5', 30, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PV', N'Unassigned', 31, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_PV', N'RecordType', 32, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_SU', N'PlanCode', 3, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_SU', N'ClientIdentificationNumber', 4, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_SU', N'ClaimControlNumber', 5, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_SU', N'ClaimControlNumberLineNumber', 6, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_SU', N'AdjustmentIndicator', 7, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_SU', N'PriorAuthorizationNumber', 8, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_SU', N'FFSBillingProviderType', 9, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_SU', N'EmergencyCode', 10, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_SU', N'AccommodationCode', 11, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_SU', N'DRGCode', 12, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_SU', N'UPN', 13, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_SU', N'GCN', 14, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_SU', N'SourceCode', 15, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_SU', N'ProgramCode', 16, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_SU', N'ClaimTypeCode', 17, N'bigint', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_SU', N'SPDClaimFlag', 18, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_SU', N'CCSClaimFlag', 19, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_SU', N'CCI_IHSSClaimFlag', 20, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_SU', N'HIST_IND', 21, N'float', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2023-12-26T17:12:11.010' AS DateTime), CAST(N'2023-12-26T17:12:11.010' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_BehavioralHealth', N'SOURCE_RECORD_ID', 1, N'ALPHA-NUMERIC', 20, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_BehavioralHealth', N'RECORD_SENT_TIMESTAMP', 2, N'DATETIME', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_BehavioralHealth', N'VOID', 3, N'BIT', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_BehavioralHealth', N'HPSJ_MEM_ID', 4, N'ALPHA-NUMERIC', 9, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_BehavioralHealth', N'CIN', 5, N'ALPHA-NUMERIC', 15, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_BehavioralHealth', N'MEDICARE_ID', 6, N'ALPHA-NUMERIC', 15, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_BehavioralHealth', N'SERVICE_DATE', 7, N'DATE', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_BehavioralHealth', N'REFERRAL_SOURCE', 8, N'ALPHA-NUMERIC', 20, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_BehavioralHealth', N'APPOINTMENT_INFORMATION ', 9, N'ALPHA-NUMERIC', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_BehavioralHealth', N'APPOINTMENT_OUTCOME', 10, N'ALPHA-NUMERIC', 2, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_BehavioralHealth', N'REFERRAL_RECEIVED DATE', 11, N'DATE', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_BehavioralHealth', N'ASSESSMENT_RECORD_NUMBER', 12, N'ALPHA-NUMERIC', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_BehavioralHealth', N'DATE_FIRST_CONTACT', 13, N'DATE', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_BehavioralHealth', N'FIRST_AVAILABLE_APPOINTMENT_DATE', 14, N'DATE', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_BehavioralHealth', N'DISPOSITION_OUTCOME', 15, N'ALPHA-NUMERIC', 2, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_BehavioralHealth', N'ASSESSMENT_START_DATE', 16, N'DATE', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_BehavioralHealth', N'ASSESSMENT_END_DATE', 17, N'DATE', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_BehavioralHealth', N'TREATMENT_START_DATE', 18, N'DATE', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_BehavioralHealth', N'CLOSED_OUT_DATE', 19, N'DATE', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_BehavioralHealth', N'REFFERED_TO', 20, N'ALPHA-NUMERIC', 2, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_BehavioralHealth', N'SCREENING_DONE', 21, N'ALPHA-NUMERIC', 2, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_BehavioralHealth', N'SCREENING_COMPLETED_DATE', 22, N'DATE', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_BehavioralHealth', N'SCREENING_SCORE', 23, N'ALPHA-NUMERIC', 2, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_BehavioralHealth', N'SERVICES_USING', 24, N'ALPHA-NUMERIC', 5, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_BehavioralHealth', N'SHARING_WITH_PCP', 25, N'ALPHA-NUMERIC', 2, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'SOURCE_RECORD_ID', 1, N'ALPHA-NUMERIC', 20, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'RECORD_SENT_TIMESTAMP', 2, N'DATETIME', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'VOID', 3, N'BIT', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'HPSJ_MEM_ID', 4, N'ALPHA-NUMERIC', 15, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'CIN', 5, N'ALPHA-NUMERIC', 15, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'MEDICARE_ID', 6, N'ALPHA-NUMERIC', 15, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'LAST_NAME', 7, N'ALPHA-NUMERIC', 30, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'FIRST_NAME', 8, N'ALPHA-NUMERIC', 30, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'MIDDLE_NAME', 9, N'ALPHA-NUMERIC', 30, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'GENDER', 10, N'ALPHA-NUMERIC', 1, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'BIRTH_DATE', 11, N'DATE', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'HOMELESSNESS_IND', 12, N'ALPHA-NUMERIC', 1, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'RESIDENTIAL_ADDRESS', 13, N'ALPHA-NUMERIC', 50, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'RESIDENTIAL_CITY', 14, N'ALPHA-NUMERIC', 30, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'RESIDENTIAL_STATE', 15, N'ALPHA-NUMERIC', 2, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'RESIDENTIAL_ZIP', 16, N'ALPHA-NUMERIC', 5, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'MAILING_ADDRESS', 17, N'ALPHA-NUMERIC', 50, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'MAILING_CITY', 18, N'ALPHA-NUMERIC', 30, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'MAILING_STATE', 19, N'ALPHA-NUMERIC', 2, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'MAILING_ZIP', 20, N'ALPHA-NUMERIC', 5, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'HOME_PHONE', 21, N'NUMERIC TEXT', 10, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'WORK_PHONE', 22, N'NUMERIC TEXT', 10, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'CELL_PHONE', 23, N'NUMERIC TEXT', 10, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'EMAIL', 24, N'ALPHA-NUMERIC', 100, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'PREFERRED_FORM_OF_CONTACT', 25, N'ALPHA-NUMERIC', 10, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'OPT_IN_TEXT', 26, N'BIT', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'OPT_IN_CALL', 27, N'BIT', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'ALTERNATIVE_FORMAT', 28, N'ALPHA-NUMERIC', 2, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'ETHNICITY', 29, N'ALPHA-NUMERIC', 2, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'RACE', 30, N'ALPHA-NUMERIC', 2, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'RELIGION', 31, N'ALPHA-NUMERIC', 50, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'LANGUAGE_SPOKEN', 32, N'ALPHA-NUMERIC', 2, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'LANGUAGE_WRITTEN', 33, N'ALPHA-NUMERIC', 2, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'PREFERRED_LANGUAGE_SPOKEN', 34, N'ALPHA-NUMERIC', 2, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'PREFERRED_LANGUAGE_WRITTEN', 35, N'ALPHA-NUMERIC', 2, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'SEXUAL_ORIENTATION', 36, N'ALPHA-NUMERIC', 2, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'SITE_TIN', 37, N'ALPHA-NUMERIC', 9, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'SITE_NPI', 38, N'ALPHA-NUMERIC', 10, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'MARITAL_STATUS', 39, N'ALPHA-NUMERIC', 2, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'EMERGENCY_CONTACT_NAME', 40, N'ALPHA-NUMERIC', 50, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'EMERGENCY_CONTACT_RELATIONSHIP', 41, N'ALPHA-NUMERIC', 50, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'EMERGENCY_CONTACT_NUMBER', 42, N'NUMERC TEXT', 10, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'EMERGENCY_CONTACT_EMAIL', 43, N'ALPHA-NUMERIC', 100, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'EMERGENCY_CONTACT_PREFERRED_LANGUAGE_SPOKEN', 44, N'ALPHA-NUMERIC', 50, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'RELIGIOUS_ORG_CONTACT_NAME', 45, N'ALPHA-NUMERIC', 50, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'RELIGIOUS_ORG_CONTACT_PHONE', 46, N'ALPHA-NUMERIC', 10, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'MEMBER_STATED_LANGUAGE_FLAG', 47, N'ALPHA-NUMERIC', 1, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'HAS_INTERNET_ACCESS', 48, N'ALPHA-NUMERIC', 1, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'HAS_DISABILITY', 49, N'ALPHA-NUMERIC', 2, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'NEEDS_SPECIAL_ACCOMODATIONS', 50, N'ALPHA-NUMERIC', 2, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'NEEDS_DME', 51, N'ALPHA-NUMERIC', 2, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'UDF_1_CODE', 52, N'ALPHA-NUMERIC', 20, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'UDF_1_DESC', 53, N'ALPHA-NUMERIC', 250, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'UDF_2_CODE', 54, N'ALPHA-NUMERIC', 20, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'UDF_2_DESC', 55, N'ALPHA-NUMERIC', 250, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'UDF_3_CODE', 56, N'ALPHA-NUMERIC', 20, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'UDF_3_DESC', 57, N'ALPHA-NUMERIC', 250, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'UDF_4_CODE', 58, N'ALPHA-NUMERIC', 20, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Demographic', N'UDF_4_DESC', 59, N'ALPHA-NUMERIC', 250, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_DEMOGRAPHIC_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_DEMOGRAPHIC_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'SOURCE_RECORD_ID', 1, N'ALPHA-NUMERIC', 20, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'RECORD_SENT_TIMESTAMP', 2, N'DATETIME', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'VOID', 3, N'BIT', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'EMR_RECORD_NUMBER', 4, N'ALPHA-NUMERIC', 50, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'HPSJ_MEM_ID', 5, N'ALPHA-NUMERIC', 9, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'MEDICARE_ID', 6, N'ALPHA-NUMERIC', 15, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'CIN', 7, N'ALPHA-NUMERIC', 15, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'SERVICE_DATE', 8, N'DATE', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'SERVICE_CODE', 9, N'ALPHA-NUMERIC', 7, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'SERVICE_MOD_1', 10, N'ALPHA-NUMERIC', 2, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'SERVICE_MOD_2', 11, N'ALPHA-NUMERIC', 2, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'SERVICE_PLACE', 12, N'ALPHA-NUMERIC', 2, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'BILLED_UNITS', 13, N'NUMERIC', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'FACILITY_TYPE', 14, N'NUMERIC', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'NDC', 15, N'ALPHA-NUMERIC', 20, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'DIAG_1', 16, N'ALPHA-NUMERIC', 8, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'DIAG_2', 17, N'ALPHA-NUMERIC', 8, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'DIAG_3', 18, N'ALPHA-NUMERIC', 8, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'DIAG_4', 19, N'ALPHA-NUMERIC', 8, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'DIAG_5', 20, N'ALPHA-NUMERIC', 8, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'DIAG_6', 21, N'ALPHA-NUMERIC', 8, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'DIAG_7', 22, N'ALPHA-NUMERIC', 8, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'DIAG_8', 23, N'ALPHA-NUMERIC', 8, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'DIAG_9', 24, N'ALPHA-NUMERIC', 8, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'DIAG_10', 25, N'ALPHA-NUMERIC', 8, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'DIAG_11', 26, N'ALPHA-NUMERIC', 8, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'DIAG_12', 27, N'ALPHA-NUMERIC', 8, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'BP_SYSTOLIC', 28, N'NUMERIC', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'BP_DIASTOLIC', 29, N'NUMERIC', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'HEIGHT_INCHES', 30, N'NUMERIC', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'WEIGHT_POUNDS', 31, N'NUMERIC', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'BMI', 32, N'NUMERIC', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'BMI_PERCENTILE', 33, N'NUMERIC', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'SITE_DISPLAY_NAME', 34, N'ALPHA-NUMERIC', 100, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'SITE_TIN', 35, N'ALPHA-NUMERIC', 9, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'SITE_NPI', 36, N'NUMERIC TEXT', 10, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'RENDERING_TIN', 37, N'ALPHA-NUMERIC', 9, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_EMR', N'RENDERING_NPI', 38, N'NUMERIC TEXT', 10, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_EMR_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_EMR_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Enrollment', N'SOURCE_RECORD_ID', 1, N'ALPHA-NUMERIC', 20, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Enrollment', N'RECORD_SENT_TIMESTAMP', 2, N'DATETIME', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Enrollment', N'VOID', 3, N'BIT', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Enrollment', N'HPSJ_MEM_ID', 4, N'ALPHA-NUMERIC', 15, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Enrollment', N'CIN', 5, N'ALPHA-NUMERIC', 15, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Enrollment', N'MEDICARE_ID', 6, N'ALPHA-NUMERIC', 15, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Enrollment', N'IS_PRESUMPTIVE', 7, N'BIT', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Enrollment', N'IS_ENROLLED_IN_PROGRAM', 8, N'BIT', 1, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Enrollment', N'PROGRAM_NAME', 9, N'ALPHA-NUMERIC', 30, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Enrollment', N'ENROLLMENT_EFFECTIVE_DATE', 10, N'DATE', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Enrollment', N'ENROLLMENT_TERM_DATE', 11, N'DATE', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Enrollment', N'APPROVED_HOURS', 12, N'ALPHA-NUMERIC', 5, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Enrollment', N'DISENROLLMENT_REASON', 13, N'ALPHA-NUMERIC', 5, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Enrollment', N'DISENROLLMENT_DATE', 14, N'DATE', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Enrollment', N'NOA_NEEDED', 15, N'BIT', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Enrollment', N'NOA_IDENTIFIED_DATE', 16, N'DATE', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Enrollment', N'IS_NEXT_VISIT_SCHEDULED', 17, N'BIT', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Enrollment', N'NEXT_VISIT_DATE', 18, N'DATE', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Enrollment', N'CONTACT_ROLE', 19, N'ALPHA-NUMERIC', 2, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Enrollment', N'CONTACT_ROLE_OTHER', 20, N'ALPHA', 50, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Enrollment', N'CONTACT_DATE', 21, N'DATE', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Enrollment', N'SITE_TIN', 22, N'ALPHA-NUMERIC', 9, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Enrollment', N'SITE_NPI', 23, N'ALPHA-NUMERIC', 10, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Enrollment', N'UDF_1_CODE', 24, N'ALPHA-NUMERIC', 20, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Enrollment', N'UDF_1_DESC', 25, N'ALPHA-NUMERIC', 250, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Enrollment', N'UDF_2_CODE', 26, N'ALPHA-NUMERIC', 20, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Enrollment', N'UDF_2_DESC', 27, N'ALPHA-NUMERIC', 250, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Enrollment', N'UDF_3_CODE', 28, N'ALPHA-NUMERIC', 20, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Enrollment', N'UDF_3_DESC', 29, N'ALPHA-NUMERIC', 250, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Enrollment', N'UDF_4_CODE', 30, N'ALPHA-NUMERIC', 20, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Enrollment', N'UDF_4_DESC', 31, N'ALPHA-NUMERIC', 250, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_ENROLLMENT_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_ENROLLMENT_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_LAB', N'SOURCE_RECORD_ID', 1, N'ALPHA-NUMERIC', 20, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_LAB', N'RECORD_SENT_TIMESTAMP', 2, N'DATETIME', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_LAB', N'VOID', 3, N'BIT', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_LAB', N'HPSJ_MEM_ID', 4, N'ALPHA-NUMERIC', 15, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_LAB', N'CIN', 5, N'ALPHA-NUMERIC', 15, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_LAB', N'MEDICARE_ID', 6, N'ALPHA-NUMERIC', 15, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_LAB', N'LAB_NAME', 7, N'ALPHA-NUMERIC', 250, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_LAB', N'LAB_ENCOUNTER_ID', 8, N'ALPHA-NUMERIC', 100, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_LAB', N'LAB_ENCOUNTER_DATE', 9, N'DATE', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_LAB', N'LAB_SAMPLE_ID', 10, N'ALPHA-NUMERIC', 20, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_LAB', N'LAB_SAMPLE_RECEIVE_DATE', 11, N'DATE', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_LAB', N'LAB_SAMPLE_PROCESS_DATE', 12, N'DATE', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_LAB', N'LAB_CUSTOMER_SAMPLE_DRAWN_DATE', 13, N'DATE', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_LAB', N'ORDERED_PANEL_CODE', 14, N'ALPHA-NUMERIC', 20, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_LAB', N'ORDERED_PANEL_DESCRIPTION', 15, N'ALPHA-NUMERIC', 80, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_LAB', N'PANEL_TEST_PERFORMED_CODE', 16, N'ALPHA-NUMERIC', 80, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_LAB', N'PANEL_TEST_PERFORMED_DESC', 17, N'ALPHA-NUMERIC', 100, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_LAB', N'PANEL_TEST_RESULT', 18, N'ALPHA-NUMERIC', 250, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_LAB', N'PANEL_TEST_RESULT_UNITS', 19, N'ALPHA-NUMERIC', 20, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_LAB', N'PANEL_TEST_RESULT_NORMAL_RANGE', 20, N'ALPHA-NUMERIC', 60, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_LAB', N'PANEL_TEST_RESULT_NORMAL_LOW', 21, N'ALPHA-NUMERIC', 20, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_LAB', N'PANEL_TEST_RESULT_NORMAL_HIGH', 22, N'ALPHA-NUMERIC', 20, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_LAB', N'LOINC', 23, N'ALPHA-NUMERIC', 20, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_LAB', N'LAB_SERVICE_CODE_TYPE', 24, N'ALPHA-NUMERIC', 1, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_LAB', N'LAB_SERVICE_CODE', 25, N'ALPHA-NUMERIC', 5, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_LAB', N'SITE_TIN', 26, N'ALPHA-NUMERIC', 9, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_LAB', N'SITE_NPI', 27, N'ALPHA-NUMERIC', 10, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_LAB', N'LAB_PROVIDER_TIN', 28, N'ALPHA-NUMERIC', 9, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_LAB', N'LAB_PROVIDER_NPI', 29, N'ALPHA-NUMERIC', 10, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_LAB_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_LAB_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Outreach', N'SOURCE_RECORD_ID', 1, N'ALPHA-NUMERIC', 20, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Outreach', N'RECORD_SENT_TIMESTAMP', 2, N'DATETIME', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Outreach', N'VOID', 3, N'BIT', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Outreach', N'HPSJ_MEM_ID', 4, N'ALPHA-NUMERIC', 15, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Outreach', N'CIN', 5, N'ALPHA-NUMERIC', 15, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Outreach', N'MEDICARE_ID', 6, N'ALPHA-NUMERIC', 15, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Outreach', N'PROGRAM_NAME', 7, N'ALPHA-NUMERIC', 30, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Outreach', N'PROVIDER_TYPE', 8, N'ALPHA-NUMERIC', 1, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Outreach', N'ATTEMPTED_CONTACT_DATETIME', 9, N'DATETIME', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Outreach', N'OUTREACH_ATTEMPT_METHOD', 10, N'ALPHA-NUMERIC', 1, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Outreach', N'ATTEMPT_RESULT', 11, N'ALPHA-NUMERIC', 1, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Outreach', N'ATTEMPT_SUCCESFUL_DISPOSITION', 12, N'ALPHA-NUMERIC', 2, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Outreach', N'ATTEMPT_UNSUCCESFUL_DISPOSITION', 13, N'ALPHA-NUMERIC', 2, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Outreach', N'APPT_RESCHEDULED', 14, N'BIT', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Outreach', N'APPT_CANCELLED', 15, N'BIT', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Outreach', N'APPT_DATETIME', 16, N'DATETIME', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Outreach', N'SITE_TIN', 17, N'ALPHA-NUMERIC', 9, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Outreach', N'SITE_NPI', 18, N'ALPHA-NUMERIC', 10, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Outreach', N'UDF_1_CODE', 19, N'ALPHA-NUMERIC', 20, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Outreach', N'UDF_1_DESC', 20, N'ALPHA-NUMERIC', 250, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Outreach', N'UDF_2_CODE', 21, N'ALPHA-NUMERIC', 20, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Outreach', N'UDF_2_DESC', 22, N'ALPHA-NUMERIC', 250, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Outreach', N'UDF_3_CODE', 23, N'ALPHA-NUMERIC', 20, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Outreach', N'UDF_3_DESC', 24, N'ALPHA-NUMERIC', 250, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Outreach', N'UDF_4_CODE', 25, N'ALPHA-NUMERIC', 20, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_Outreach', N'UDF_4_DESC', 26, N'ALPHA-NUMERIC', 250, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_OUTREACH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_OUTREACH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_RX', N'SOURCE_RECORD_ID', 1, N'ALPHA-NUMERIC', 20, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_RX', N'RECORD_SENT_TIMESTAMP', 2, N'DATETIME', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_RX', N'VOID', 3, N'BIT', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_RX', N'HPSJ_MEM_ID', 4, N'ALPHA-NUMERIC', 15, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_RX', N'CIN', 5, N'ALPHA-NUMERIC', 15, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_RX', N'MEDICARE_ID', 6, N'ALPHA-NUMERIC', 15, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_RX', N'RX_NDC', 7, N'ALPHA-NUMERIC', 11, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_RX', N'CVX CODE', 8, N'NUMERIC', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_RX', N'RX_DAYS_SUPPLY', 9, N'NUMERIC', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_RX', N'RX_QTY_DISPENSED', 10, N'NUMERIC', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_RX', N'RX_DOSAGE', 11, N'ALPHA-NUMERIC', 20, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_RX', N'RX_FREQUENCY', 12, N'ALPHA-NUMERIC', 20, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_RX', N'PRESCRIBED_DRUG_NAME', 13, N'ALPHA-NUMERIC', 250, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_RX', N'RX_SCRIPT_DATE', 14, N'DATE', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_RX', N'RX_SCRIPT_NUMBER', 15, N'ALPHA-NUMERIC', 20, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_RX', N'RX_DISPENSED_DATE', 16, N'DATE', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_RX', N'RX_START_DATE', 17, N'DATE', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_RX', N'RX_END_DATE', 18, N'DATE', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_RX', N'RX_ACTIVE_FLAG', 19, N'BIT', NULL, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_RX', N'PHARMACY_NPI', 20, N'ALPHA-NUMERIC', 10, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_RX', N'SITE_TIN', 21, N'ALPHA-NUMERIC', 9, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_RX', N'SITE_NPI', 22, N'ALPHA-NUMERIC', 10, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_RX', N'PRESCRIBER_TIN', 23, N'ALPHA-NUMERIC', 9, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_RX', N'PRESCRIBER_NPI', 24, N'ALPHA-NUMERIC', 10, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_RX_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_RX_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_BehavioralHealth', N'SITE_TIN', 26, N'ALPHA-NUMERIC', 9, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_BehavioralHealth', N'SITE_NPI', 27, N'ALPHA-NUMERIC', 10, N'|', N'SDS', 0, 0, 0, 1, N'[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_[A-Z]+_BEHAVIORALHEALTH_[PT]_\d{12}
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}_RESPONSE
  ,[A-Z]+_HPSJ_NONPROGRAM_BEHAVIORALHEALTH_[PT]_\d{12}', NULL, NULL, CAST(N'2024-04-18T14:52:38.487' AS DateTime), CAST(N'2024-04-18T14:52:38.487' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_MC', N'MedicalRecordNumber', 166, N'varchar', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2024-09-24T22:59:09.610' AS DateTime), CAST(N'2024-09-24T22:59:09.610' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_SU', N'SVC_PROVIDER_ID_QUAL', 22, N'VARCHAR', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, N'HPSJ\mawad', CAST(N'2024-10-30T22:47:06.843' AS DateTime), CAST(N'2024-10-30T22:47:06.843' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_SU', N'DISPENSING_STAT_CD', 23, N'VARCHAR', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, N'HPSJ\mawad', CAST(N'2024-10-30T22:48:05.207' AS DateTime), CAST(N'2024-10-30T22:48:05.207' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_SU', N'PRESCRIBER_ID_QUAL', 24, N'VARCHAR', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, N'HPSJ\mawad', CAST(N'2024-10-30T22:48:41.830' AS DateTime), CAST(N'2024-10-30T22:48:41.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_SU', N'NON_STD_FMT_CD', 25, N'VARCHAR', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, N'HPSJ\mawad', CAST(N'2024-10-30T22:49:15.120' AS DateTime), CAST(N'2024-10-30T22:49:15.120' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_SU', N'Service_Units', 26, N'VARCHAR', NULL, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, N'HPSJ\mawad', CAST(N'2024-10-30T22:50:36.363' AS DateTime), CAST(N'2024-10-30T22:50:36.363' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_TA', N'Plan Code/ County Code', 1, NULL, 3, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2024-11-07T15:02:31.660' AS DateTime), CAST(N'2024-11-07T15:02:31.660' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_TA', N'Service Indicator Description', 2, NULL, 40, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2024-11-07T15:02:31.660' AS DateTime), CAST(N'2024-11-07T15:02:31.660' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_TA', N'TAR Control Number (TCN)', 3, NULL, 10, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2024-11-07T15:02:31.660' AS DateTime), CAST(N'2024-11-07T15:02:31.660' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_TA', N'Recipient ID', 4, NULL, 9, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2024-11-07T15:02:31.660' AS DateTime), CAST(N'2024-11-07T15:02:31.660' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_TA', N'Service Description', 5, NULL, 40, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2024-11-07T15:02:31.660' AS DateTime), CAST(N'2024-11-07T15:02:31.660' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_TA', N'Service Code', 6, NULL, 27, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2024-11-07T15:02:31.660' AS DateTime), CAST(N'2024-11-07T15:02:31.660' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_TA', N'Procedure Modifier Code 1', 7, NULL, 2, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2024-11-07T15:02:31.660' AS DateTime), CAST(N'2024-11-07T15:02:31.660' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_TA', N'Procedure Modifier Code 2', 8, NULL, 2, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2024-11-07T15:02:31.660' AS DateTime), CAST(N'2024-11-07T15:02:31.660' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_TA', N'Procedure Modifier Code 3', 9, NULL, 2, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2024-11-07T15:02:31.660' AS DateTime), CAST(N'2024-11-07T15:02:31.660' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_TA', N'Procedure Modifier Code 4', 10, NULL, 2, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2024-11-07T15:02:31.660' AS DateTime), CAST(N'2024-11-07T15:02:31.660' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_TA', N'Sub-Service Indicator Code', 11, NULL, 4, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2024-11-07T15:02:31.660' AS DateTime), CAST(N'2024-11-07T15:02:31.660' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_TA', N'Sub-Service Indicator Description', 12, NULL, 45, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2024-11-07T15:02:31.660' AS DateTime), CAST(N'2024-11-07T15:02:31.660' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_TA', N'Diagnosis Code Type', 13, NULL, 1, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2024-11-07T15:02:31.660' AS DateTime), CAST(N'2024-11-07T15:02:31.660' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_TA', N'Diagnosis Code', 14, NULL, 8, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2024-11-07T15:02:31.660' AS DateTime), CAST(N'2024-11-07T15:02:31.660' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_TA', N'Diagnosis Description', 15, NULL, 60, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2024-11-07T15:02:31.660' AS DateTime), CAST(N'2024-11-07T15:02:31.660' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_TA', N'Units Approved Number', 16, N'Numeric', 5, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2024-11-07T15:02:31.660' AS DateTime), CAST(N'2024-11-07T15:02:31.660' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_TA', N'Service Quantity', 17, N'Numeric', 10, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2024-11-07T15:02:31.660' AS DateTime), CAST(N'2024-11-07T15:02:31.660' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_TA', N'Day Approved Number', 18, N'Numeric', 10, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2024-11-07T15:02:31.660' AS DateTime), CAST(N'2024-11-07T15:02:31.660' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_TA', N'Submitting Provider Name', 19, NULL, 28, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2024-11-07T15:02:31.660' AS DateTime), CAST(N'2024-11-07T15:02:31.660' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_TA', N'Submitting Provider Number', 20, NULL, 10, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2024-11-07T15:02:31.660' AS DateTime), CAST(N'2024-11-07T15:02:31.660' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_TA', N'Rendering Provider Name', 21, NULL, 28, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2024-11-07T15:02:31.660' AS DateTime), CAST(N'2024-11-07T15:02:31.660' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_TA', N'Rendering Provider Number', 22, NULL, 10, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2024-11-07T15:02:31.660' AS DateTime), CAST(N'2024-11-07T15:02:31.660' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_TA', N'Service From Date', 23, N'Date', 8, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2024-11-07T15:02:31.660' AS DateTime), CAST(N'2024-11-07T15:02:31.660' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'APCD_TA', N'Service Through Date', 24, N'Date', 8, N'|', N'APCD', 0, 1, 1, NULL, NULL, NULL, NULL, CAST(N'2024-11-07T15:02:31.660' AS DateTime), CAST(N'2024-11-07T15:02:31.660' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Corrected Data (Y/N)', 1, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Member Client Index Number (CIN)', 2, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'MCP Name', 3, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Member First Name', 4, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Member Last Name', 5, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Member Date of Birth', 6, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Member Gender Code', 7, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Member Phone Number', 8, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Alternative contact information', 9, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Name of Parent/Custodian', 10, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Phone Number of Parent/Custodian', 11, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Member Residential Address Line 1', 12, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Member Residential Address Line 2', 13, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Member Residential City', 14, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Member Residential State', 15, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Member Residential Zip', 16, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Expected release date', 17, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Actual release date (if released)', 18, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Correctional Facility Name', 19, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Correctional Facility TIN', 20, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Correctional Facility NPI', 21, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Pre-Release Provider Name', 22, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Pre-Release Provider Tax ID Number (TIN)', 23, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Pre-Release Provider National Provider Identifier (NPI)', 24, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Pre-Release CM Name', 25, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Pre-Release CM Telephone', 26, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Pre-Release CM Email', 27, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Pre-Release continues as Post-Release ECM provider (Y/N)', 28, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Re-Entry Care Plan Sent (Y/N)', 29, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Preferred ECM Provider Name', 30, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Preferred ECM Provider Tax ID Number (TIN)', 31, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Preferred ECM Provider National Provider Identifier (NPI)', 32, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Preferred ECM Provider Phone Number', 33, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'CDCR/Unique Facility Client Identifier (Could be PIN # or CDCR #)', 34, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Adult - Individual Experiencing Homelessness: Adults without Dependent Children/Youth Living with Them Experiencing Homelessness', 35, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Adult - Individual Experiencing Homelessness: Homeless Family', 36, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Adult - Individuals at Risk for Avoidable Hospital or ED Utilization', 37, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Adult - Individuals with Serious Mental Health or Substance Use Disorder (SUD) Needs', 38, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Adult - Individuals Transitioning from Incarceration', 39, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Adult - Individuals Living in the Community and at Risk for LTC Institutionalization', 40, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Adult - Nursing Facility Residents Transitioning to Community', 41, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Adult - Birth Equity Population of Focus', 42, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Child/Youth - Individuals Experiencing Homelessness: Unaccompanied Children/Youth Experiencing Homelessness', 43, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Child/Youth - Individual Experiencing Homelessness: Homeless Family', 44, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Child/Youth - Individuals at Risk for Avoidable Hospital or ED Utilization', 45, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Child/Youth - Individuals with Serious Mental Health or Substance Use Disorder (SUD) Needs', 46, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Child/Youth - Enrolled in CCS or CCS WCM with Additional Needs Beyond the CCS Condition', 47, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Child/Youth - Involved in Child Welfare', 48, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Child/Youth - Individuals Transitioning from Incarceration', 49, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'Child/Youth - Birth Equity Population of Focus', 50, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
INSERT [admin].[DATALOADXFILECOLUMNS] ([TableName], [ColumnName], [Position], [DataType], [Length], [Delimiter], [TableType], [FirstRowIsColumnNames], [HeaderLines], [TrailerLines], [ValidateSender], [FileNameFormat], [CreatedBy], [ModifiedBy], [CreateDate], [ModifiedDate]) VALUES (N'SDS_JI_MCP_CorrectionFacility_Inbound', N'File Production Date', 51, NULL, NULL, N'|', N'SDS', 1, 0, 0, 0, N'CF_\d{8}_FROM_[0-9]+_TO_HPSJ', NULL, NULL, CAST(N'2024-12-27T12:00:11.830' AS DateTime), CAST(N'2024-12-27T12:00:11.830' AS DateTime))
GO
