SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Dropping constraints from [tSQLt].[CaptureOutputLog]'
GO
ALTER TABLE [tSQLt].[CaptureOutputLog] DROP CONSTRAINT [PK__CaptureO__3214EC07EE75F401]
GO
PRINT N'Dropping constraints from [tSQLt].[Private_Configurations]'
GO
ALTER TABLE [tSQLt].[Private_Configurations] DROP CONSTRAINT [PK__Private___737584F70A068F0F]
GO
PRINT N'Dropping constraints from [tSQLt].[Private_NewTestClassList]'
GO
ALTER TABLE [tSQLt].[Private_NewTestClassList] DROP CONSTRAINT [PK__Private___F8BF561A2704BF97]
GO
PRINT N'Dropping constraints from [tSQLt].[Private_RenamedObjectLog]'
GO
ALTER TABLE [tSQLt].[Private_RenamedObjectLog] DROP CONSTRAINT [PK__Private_RenamedObjectLog__Id]
GO
PRINT N'Dropping constraints from [tSQLt].[TestResult]'
GO
ALTER TABLE [tSQLt].[TestResult] DROP CONSTRAINT [PK__TestResu__3214EC07D0BF747C]
GO
PRINT N'Dropping constraints from [tSQLt].[TestResult]'
GO
ALTER TABLE [tSQLt].[TestResult] DROP CONSTRAINT [DF:TestResult(TestStartTime)]
GO
PRINT N'Dropping trigger [tSQLt].[Private_NullCellTable_StopDeletes] from [tSQLt].[Private_NullCellTable]'
GO
DROP TRIGGER [tSQLt].[Private_NullCellTable_StopDeletes]
GO
PRINT N'Dropping [tSQLt].[StubRecord]'
GO
DROP PROCEDURE [tSQLt].[StubRecord]
GO
PRINT N'Dropping [tSQLt].[SetTestResultFormatter]'
GO
DROP PROCEDURE [tSQLt].[SetTestResultFormatter]
GO
PRINT N'Dropping [tSQLt].[RunTest]'
GO
DROP PROCEDURE [tSQLt].[RunTest]
GO
PRINT N'Dropping [tSQLt].[ResultSetFilter]'
GO
DROP PROCEDURE [tSQLt].[ResultSetFilter]
GO
PRINT N'Dropping [tSQLt].[RemoveExternalAccessKey]'
GO
DROP PROCEDURE [tSQLt].[RemoveExternalAccessKey]
GO
PRINT N'Dropping [tSQLt].[Private_RemoveSchemaBoundReferences]'
GO
DROP PROCEDURE [tSQLt].[Private_RemoveSchemaBoundReferences]
GO
PRINT N'Dropping [tSQLt].[Private_RemoveSchemaBinding]'
GO
DROP PROCEDURE [tSQLt].[Private_RemoveSchemaBinding]
GO
PRINT N'Dropping [tSQLt].[NullTestResultFormatter]'
GO
DROP PROCEDURE [tSQLt].[NullTestResultFormatter]
GO
PRINT N'Dropping [tSQLt].[NewConnection]'
GO
DROP PROCEDURE [tSQLt].[NewConnection]
GO
PRINT N'Dropping [tSQLt].[ExpectNoException]'
GO
DROP PROCEDURE [tSQLt].[ExpectNoException]
GO
PRINT N'Dropping [tSQLt].[ExpectException]'
GO
DROP PROCEDURE [tSQLt].[ExpectException]
GO
PRINT N'Dropping [tSQLt].[CaptureOutput]'
GO
DROP PROCEDURE [tSQLt].[CaptureOutput]
GO
PRINT N'Dropping [tSQLt].[AssertResultSetsHaveSameMetaData]'
GO
DROP PROCEDURE [tSQLt].[AssertResultSetsHaveSameMetaData]
GO
PRINT N'Dropping [tSQLt].[Private_ExpectException]'
GO
DROP TABLE [tSQLt].[Private_ExpectException]
GO
PRINT N'Dropping [tSQLt].[Private_GetOriginalTableName]'
GO
DROP FUNCTION [tSQLt].[Private_GetOriginalTableName]
GO
PRINT N'Dropping [tSQLt].[Private_GetConstraintType]'
GO
DROP FUNCTION [tSQLt].[Private_GetConstraintType]
GO
PRINT N'Dropping [tSQLt].[Private_GetCleanSchemaName]'
GO
DROP FUNCTION [tSQLt].[Private_GetCleanSchemaName]
GO
PRINT N'Dropping [tSQLt].[F_Num]'
GO
DROP FUNCTION [tSQLt].[F_Num]
GO
PRINT N'Dropping [tSQLt].[Tests]'
GO
DROP VIEW [tSQLt].[Tests]
GO
PRINT N'Dropping [tSQLt].[XmlResultFormatter]'
GO
DROP PROCEDURE [tSQLt].[XmlResultFormatter]
GO
PRINT N'Dropping [tSQLt].[Private_PrintXML]'
GO
DROP PROCEDURE [tSQLt].[Private_PrintXML]
GO
PRINT N'Dropping [tSQLt].[Uninstall]'
GO
DROP PROCEDURE [tSQLt].[Uninstall]
GO
PRINT N'Dropping [tSQLt].[SpyProcedure]'
GO
DROP PROCEDURE [tSQLt].[SpyProcedure]
GO
PRINT N'Dropping [tSQLt].[Private_ValidateProcedureCanBeUsedWithSpyProcedure]'
GO
DROP PROCEDURE [tSQLt].[Private_ValidateProcedureCanBeUsedWithSpyProcedure]
GO
PRINT N'Dropping [tSQLt].[SetVerbose]'
GO
DROP PROCEDURE [tSQLt].[SetVerbose]
GO
PRINT N'Dropping [tSQLt].[SetFakeViewOn]'
GO
DROP PROCEDURE [tSQLt].[SetFakeViewOn]
GO
PRINT N'Dropping [tSQLt].[Private_SetFakeViewOn_SingleView]'
GO
DROP PROCEDURE [tSQLt].[Private_SetFakeViewOn_SingleView]
GO
PRINT N'Dropping [tSQLt].[SetFakeViewOff]'
GO
DROP PROCEDURE [tSQLt].[SetFakeViewOff]
GO
PRINT N'Dropping [tSQLt].[Private_SetFakeViewOff_SingleView]'
GO
DROP PROCEDURE [tSQLt].[Private_SetFakeViewOff_SingleView]
GO
PRINT N'Dropping [tSQLt].[RunWithXmlResults]'
GO
DROP PROCEDURE [tSQLt].[RunWithXmlResults]
GO
PRINT N'Dropping [tSQLt].[RunWithNullResults]'
GO
DROP PROCEDURE [tSQLt].[RunWithNullResults]
GO
PRINT N'Dropping [tSQLt].[RunTestClass]'
GO
DROP PROCEDURE [tSQLt].[RunTestClass]
GO
PRINT N'Dropping [tSQLt].[RunNew]'
GO
DROP PROCEDURE [tSQLt].[RunNew]
GO
PRINT N'Dropping [tSQLt].[RunC]'
GO
DROP PROCEDURE [tSQLt].[RunC]
GO
PRINT N'Dropping [tSQLt].[Private_InputBuffer]'
GO
DROP PROCEDURE [tSQLt].[Private_InputBuffer]
GO
PRINT N'Dropping [tSQLt].[RunAll]'
GO
DROP PROCEDURE [tSQLt].[RunAll]
GO
PRINT N'Dropping [tSQLt].[Run]'
GO
DROP PROCEDURE [tSQLt].[Run]
GO
PRINT N'Dropping [tSQLt].[Reset]'
GO
DROP PROCEDURE [tSQLt].[Reset]
GO
PRINT N'Dropping [tSQLt].[RenameClass]'
GO
DROP PROCEDURE [tSQLt].[RenameClass]
GO
PRINT N'Dropping [tSQLt].[RemoveObjectIfExists]'
GO
DROP PROCEDURE [tSQLt].[RemoveObjectIfExists]
GO
PRINT N'Dropping [tSQLt].[Private_SetConfiguration]'
GO
DROP PROCEDURE [tSQLt].[Private_SetConfiguration]
GO
PRINT N'Dropping [tSQLt].[Private_RunNew]'
GO
DROP PROCEDURE [tSQLt].[Private_RunNew]
GO
PRINT N'Dropping [tSQLt].[Private_RunMethodHandler]'
GO
DROP PROCEDURE [tSQLt].[Private_RunMethodHandler]
GO
PRINT N'Dropping [tSQLt].[Private_RunAll]'
GO
DROP PROCEDURE [tSQLt].[Private_RunAll]
GO
PRINT N'Dropping [tSQLt].[Private_RunCursor]'
GO
DROP PROCEDURE [tSQLt].[Private_RunCursor]
GO
PRINT N'Dropping [tSQLt].[Private_Run]'
GO
DROP PROCEDURE [tSQLt].[Private_Run]
GO
PRINT N'Dropping [tSQLt].[Private_SaveTestNameForSession]'
GO
DROP PROCEDURE [tSQLt].[Private_SaveTestNameForSession]
GO
PRINT N'Dropping [tSQLt].[Private_RunTestClass]'
GO
DROP PROCEDURE [tSQLt].[Private_RunTestClass]
GO
PRINT N'Dropping [tSQLt].[Private_RunTest]'
GO
DROP PROCEDURE [tSQLt].[Private_RunTest]
GO
PRINT N'Dropping [tSQLt].[GetNewTranName]'
GO
DROP PROCEDURE [tSQLt].[GetNewTranName]
GO
PRINT N'Dropping [tSQLt].[Private_GetCleanObjectName]'
GO
DROP FUNCTION [tSQLt].[Private_GetCleanObjectName]
GO
PRINT N'Dropping [tSQLt].[Private_ResetNewTestClassList]'
GO
DROP PROCEDURE [tSQLt].[Private_ResetNewTestClassList]
GO
PRINT N'Dropping [tSQLt].[Private_OutputTestResults]'
GO
DROP PROCEDURE [tSQLt].[Private_OutputTestResults]
GO
PRINT N'Dropping [tSQLt].[GetTestResultFormatter]'
GO
DROP FUNCTION [tSQLt].[GetTestResultFormatter]
GO
PRINT N'Dropping [tSQLt].[Private_Init]'
GO
DROP PROCEDURE [tSQLt].[Private_Init]
GO
PRINT N'Dropping [tSQLt].[EnableExternalAccess]'
GO
DROP PROCEDURE [tSQLt].[EnableExternalAccess]
GO
PRINT N'Dropping [tSQLt].[Private_GetSetupProcedureName]'
GO
DROP PROCEDURE [tSQLt].[Private_GetSetupProcedureName]
GO
PRINT N'Dropping [tSQLt].[Private_GetCursorForRunNew]'
GO
DROP PROCEDURE [tSQLt].[Private_GetCursorForRunNew]
GO
PRINT N'Dropping [tSQLt].[Private_GetCursorForRunAll]'
GO
DROP PROCEDURE [tSQLt].[Private_GetCursorForRunAll]
GO
PRINT N'Dropping [tSQLt].[Private_CreateProcedureSpy]'
GO
DROP PROCEDURE [tSQLt].[Private_CreateProcedureSpy]
GO
PRINT N'Dropping [tSQLt].[Private_CleanTestResult]'
GO
DROP PROCEDURE [tSQLt].[Private_CleanTestResult]
GO
PRINT N'Dropping [tSQLt].[NewTestClass]'
GO
DROP PROCEDURE [tSQLt].[NewTestClass]
GO
PRINT N'Dropping [tSQLt].[Private_DisallowOverwritingNonTestSchema]'
GO
DROP PROCEDURE [tSQLt].[Private_DisallowOverwritingNonTestSchema]
GO
PRINT N'Dropping [tSQLt].[DropClass]'
GO
DROP PROCEDURE [tSQLt].[DropClass]
GO
PRINT N'Dropping [tSQLt].[Private_QuoteClassNameForNewTestClass]'
GO
DROP FUNCTION [tSQLt].[Private_QuoteClassNameForNewTestClass]
GO
PRINT N'Dropping [tSQLt].[Private_MarkSchemaAsTestClass]'
GO
DROP PROCEDURE [tSQLt].[Private_MarkSchemaAsTestClass]
GO
PRINT N'Dropping [tSQLt].[Private_NewTestClassList]'
GO
DROP TABLE [tSQLt].[Private_NewTestClassList]
GO
PRINT N'Dropping [tSQLt].[LogCapturedOutput]'
GO
DROP PROCEDURE [tSQLt].[LogCapturedOutput]
GO
PRINT N'Dropping [tSQLt].[CaptureOutputLog]'
GO
DROP TABLE [tSQLt].[CaptureOutputLog]
GO
PRINT N'Dropping [tSQLt].[InstallExternalAccessKey]'
GO
DROP PROCEDURE [tSQLt].[InstallExternalAccessKey]
GO
PRINT N'Dropping [tSQLt].[Private_GetExternalAccessKeyBytes]'
GO
DROP FUNCTION [tSQLt].[Private_GetExternalAccessKeyBytes]
GO
PRINT N'Dropping [tSQLt].[Private_Bin2Hex]'
GO
DROP FUNCTION [tSQLt].[Private_Bin2Hex]
GO
PRINT N'Dropping [tSQLt].[FakeTable]'
GO
DROP PROCEDURE [tSQLt].[FakeTable]
GO
PRINT N'Dropping [tSQLt].[Private_ResolveFakeTableNamesForBackwardCompatibility]'
GO
DROP FUNCTION [tSQLt].[Private_ResolveFakeTableNamesForBackwardCompatibility]
GO
PRINT N'Dropping [tSQLt].[Private_ValidateFakeTableParameters]'
GO
DROP PROCEDURE [tSQLt].[Private_ValidateFakeTableParameters]
GO
PRINT N'Dropping [tSQLt].[Private_CreateFakeOfTable]'
GO
DROP PROCEDURE [tSQLt].[Private_CreateFakeOfTable]
GO
PRINT N'Dropping [tSQLt].[Private_GetDefaultConstraintDefinition]'
GO
DROP FUNCTION [tSQLt].[Private_GetDefaultConstraintDefinition]
GO
PRINT N'Dropping [tSQLt].[Private_GetIdentityDefinition]'
GO
DROP FUNCTION [tSQLt].[Private_GetIdentityDefinition]
GO
PRINT N'Dropping [tSQLt].[Private_MarkFakeTable]'
GO
DROP PROCEDURE [tSQLt].[Private_MarkFakeTable]
GO
PRINT N'Dropping [tSQLt].[FakeFunction]'
GO
DROP PROCEDURE [tSQLt].[FakeFunction]
GO
PRINT N'Dropping [tSQLt].[Private_ValidateObjectsCompatibleWithFakeFunction]'
GO
DROP PROCEDURE [tSQLt].[Private_ValidateObjectsCompatibleWithFakeFunction]
GO
PRINT N'Dropping [tSQLt].[Private_CreateFakeFunction]'
GO
DROP PROCEDURE [tSQLt].[Private_CreateFakeFunction]
GO
PRINT N'Dropping [tSQLt].[DefaultResultFormatter]'
GO
DROP PROCEDURE [tSQLt].[DefaultResultFormatter]
GO
PRINT N'Dropping [tSQLt].[Private_Print]'
GO
DROP PROCEDURE [tSQLt].[Private_Print]
GO
PRINT N'Dropping [tSQLt].[AssertStringIn]'
GO
DROP PROCEDURE [tSQLt].[AssertStringIn]
GO
PRINT N'Dropping [tSQLt].[AssertObjectDoesNotExist]'
GO
DROP PROCEDURE [tSQLt].[AssertObjectDoesNotExist]
GO
PRINT N'Dropping [tSQLt].[AssertNotEquals]'
GO
DROP PROCEDURE [tSQLt].[AssertNotEquals]
GO
PRINT N'Dropping [tSQLt].[Private_SqlVariantFormatter]'
GO
DROP FUNCTION [tSQLt].[Private_SqlVariantFormatter]
GO
PRINT N'Dropping [tSQLt].[AssertLike]'
GO
DROP PROCEDURE [tSQLt].[AssertLike]
GO
PRINT N'Dropping [tSQLt].[AssertEqualsTableSchema]'
GO
DROP PROCEDURE [tSQLt].[AssertEqualsTableSchema]
GO
PRINT N'Dropping [tSQLt].[Private_AssertEqualsTableSchema_Expected]'
GO
DROP TABLE [tSQLt].[Private_AssertEqualsTableSchema_Expected]
GO
PRINT N'Dropping [tSQLt].[Private_AssertEqualsTableSchema_Actual]'
GO
DROP TABLE [tSQLt].[Private_AssertEqualsTableSchema_Actual]
GO
PRINT N'Dropping [tSQLt].[AssertEqualsTable]'
GO
DROP PROCEDURE [tSQLt].[AssertEqualsTable]
GO
PRINT N'Dropping [tSQLt].[Private_CreateResultTableForCompareTables]'
GO
DROP PROCEDURE [tSQLt].[Private_CreateResultTableForCompareTables]
GO
PRINT N'Dropping [tSQLt].[Private_GetCommaSeparatedColumnList]'
GO
DROP FUNCTION [tSQLt].[Private_GetCommaSeparatedColumnList]
GO
PRINT N'Dropping [tSQLt].[Private_ValidateThatAllDataTypesInTableAreSupported]'
GO
DROP PROCEDURE [tSQLt].[Private_ValidateThatAllDataTypesInTableAreSupported]
GO
PRINT N'Dropping [tSQLt].[Private_CompareTables]'
GO
DROP PROCEDURE [tSQLt].[Private_CompareTables]
GO
PRINT N'Dropping [tSQLt].[Private_CompareTablesFailIfUnequalRowsExists]'
GO
DROP PROCEDURE [tSQLt].[Private_CompareTablesFailIfUnequalRowsExists]
GO
PRINT N'Dropping [tSQLt].[AssertEqualsString]'
GO
DROP PROCEDURE [tSQLt].[AssertEqualsString]
GO
PRINT N'Dropping [tSQLt].[AssertEquals]'
GO
DROP PROCEDURE [tSQLt].[AssertEquals]
GO
PRINT N'Dropping [tSQLt].[AssertEmptyTable]'
GO
DROP PROCEDURE [tSQLt].[AssertEmptyTable]
GO
PRINT N'Dropping [tSQLt].[AssertObjectExists]'
GO
DROP PROCEDURE [tSQLt].[AssertObjectExists]
GO
PRINT N'Dropping [tSQLt].[Private_GetQuotedFullName]'
GO
DROP FUNCTION [tSQLt].[Private_GetQuotedFullName]
GO
PRINT N'Dropping [tSQLt].[TableToText]'
GO
DROP PROCEDURE [tSQLt].[TableToText]
GO
PRINT N'Dropping [tSQLt].[ApplyTrigger]'
GO
DROP PROCEDURE [tSQLt].[ApplyTrigger]
GO
PRINT N'Dropping [tSQLt].[RemoveObject]'
GO
DROP PROCEDURE [tSQLt].[RemoveObject]
GO
PRINT N'Dropping [tSQLt].[ApplyConstraint]'
GO
DROP PROCEDURE [tSQLt].[ApplyConstraint]
GO
PRINT N'Dropping [tSQLt].[Private_ApplyCheckConstraint]'
GO
DROP PROCEDURE [tSQLt].[Private_ApplyCheckConstraint]
GO
PRINT N'Dropping [tSQLt].[Private_RenameObjectToUniqueNameUsingObjectId]'
GO
DROP PROCEDURE [tSQLt].[Private_RenameObjectToUniqueNameUsingObjectId]
GO
PRINT N'Dropping [tSQLt].[Private_ApplyForeignKeyConstraint]'
GO
DROP PROCEDURE [tSQLt].[Private_ApplyForeignKeyConstraint]
GO
PRINT N'Dropping [tSQLt].[Private_ApplyUniqueConstraint]'
GO
DROP PROCEDURE [tSQLt].[Private_ApplyUniqueConstraint]
GO
PRINT N'Dropping [tSQLt].[Private_GetQuotedTableNameForConstraint]'
GO
DROP FUNCTION [tSQLt].[Private_GetQuotedTableNameForConstraint]
GO
PRINT N'Dropping [tSQLt].[Private_RenameObjectToUniqueName]'
GO
DROP PROCEDURE [tSQLt].[Private_RenameObjectToUniqueName]
GO
PRINT N'Dropping [tSQLt].[Private_MarkObjectBeforeRename]'
GO
DROP PROCEDURE [tSQLt].[Private_MarkObjectBeforeRename]
GO
PRINT N'Dropping [tSQLt].[Private_RenamedObjectLog]'
GO
DROP TABLE [tSQLt].[Private_RenamedObjectLog]
GO
PRINT N'Dropping [tSQLt].[SuppressOutput]'
GO
DROP PROCEDURE [tSQLt].[SuppressOutput]
GO
PRINT N'Dropping [SQLCop].[test xp_cmdshell is enabled]'
GO
DROP PROCEDURE [SQLCop].[test xp_cmdshell is enabled]
GO
PRINT N'Dropping [SQLCop].[test Wide Table]'
GO
DROP PROCEDURE [SQLCop].[test Wide Table]
GO
PRINT N'Dropping [SQLCop].[test Varchar Size Problem]'
GO
DROP PROCEDURE [SQLCop].[test Varchar Size Problem]
GO
PRINT N'Dropping [SQLCop].[test User Aliases]'
GO
DROP PROCEDURE [SQLCop].[test User Aliases]
GO
PRINT N'Dropping [SQLCop].[test Unnamed Constraints]'
GO
DROP PROCEDURE [SQLCop].[test Unnamed Constraints]
GO
PRINT N'Dropping [SQLCop].[test UniqueIdentifier with NewId]'
GO
DROP PROCEDURE [SQLCop].[test UniqueIdentifier with NewId]
GO
PRINT N'Dropping [SQLCop].[test Tables without any data]'
GO
DROP PROCEDURE [SQLCop].[test Tables without any data]
GO
PRINT N'Dropping [SQLCop].[test Tables without a primary key]'
GO
DROP PROCEDURE [SQLCop].[test Tables without a primary key]
GO
PRINT N'Dropping [SQLCop].[test Tables that start with tbl]'
GO
DROP PROCEDURE [SQLCop].[test Tables that start with tbl]
GO
PRINT N'Dropping [SQLCop].[test Table name problems]'
GO
DROP PROCEDURE [SQLCop].[test Table name problems]
GO
PRINT N'Dropping [SQLCop].[test Service Account]'
GO
DROP PROCEDURE [SQLCop].[test Service Account]
GO
PRINT N'Dropping [SQLCop].[test Procedures without SET NOCOUNT ON]'
GO
DROP PROCEDURE [SQLCop].[test Procedures without SET NOCOUNT ON]
GO
PRINT N'Dropping [SQLCop].[test Procedures With SET ROWCOUNT]'
GO
DROP PROCEDURE [SQLCop].[test Procedures With SET ROWCOUNT]
GO
PRINT N'Dropping [SQLCop].[test Procedures with @@Identity]'
GO
DROP PROCEDURE [SQLCop].[test Procedures with @@Identity]
GO
PRINT N'Dropping [SQLCop].[test Procedures using dynamic SQL without sp_executesql]'
GO
DROP PROCEDURE [SQLCop].[test Procedures using dynamic SQL without sp_executesql]
GO
PRINT N'Dropping [SQLCop].[test Procedures that call undocumented procedures]'
GO
DROP PROCEDURE [SQLCop].[test Procedures that call undocumented procedures]
GO
PRINT N'Dropping [SQLCop].[test Procedures Named SP_]'
GO
DROP PROCEDURE [SQLCop].[test Procedures Named SP_]
GO
PRINT N'Dropping [SQLCop].[test Page life expectancy]'
GO
DROP PROCEDURE [SQLCop].[test Page life expectancy]
GO
PRINT N'Dropping [SQLCop].[test Orphaned Users]'
GO
DROP PROCEDURE [SQLCop].[test Orphaned Users]
GO
PRINT N'Dropping [SQLCop].[test Ole Automation Procedures]'
GO
DROP PROCEDURE [SQLCop].[test Ole Automation Procedures]
GO
PRINT N'Dropping [SQLCop].[test Old Backups]'
GO
DROP PROCEDURE [SQLCop].[test Old Backups]
GO
PRINT N'Dropping [SQLCop].[test Missing Foreign Keys]'
GO
DROP PROCEDURE [SQLCop].[test Missing Foreign Keys]
GO
PRINT N'Dropping [SQLCop].[test Missing Foreign Key Indexes]'
GO
DROP PROCEDURE [SQLCop].[test Missing Foreign Key Indexes]
GO
PRINT N'Dropping [SQLCop].[test Max degree of parallelism]'
GO
DROP PROCEDURE [SQLCop].[test Max degree of parallelism]
GO
PRINT N'Dropping [SQLCop].[test Login Language]'
GO
DROP PROCEDURE [SQLCop].[test Login Language]
GO
PRINT N'Dropping [SQLCop].[test Invalid Objects]'
GO
DROP PROCEDURE [SQLCop].[test Invalid Objects]
GO
PRINT N'Dropping [SQLCop].[test Instant File Initialization]'
GO
DROP PROCEDURE [SQLCop].[test Instant File Initialization]
GO
PRINT N'Dropping [SQLCop].[test Fragmented Indexes]'
GO
DROP PROCEDURE [SQLCop].[test Fragmented Indexes]
GO
PRINT N'Dropping [SQLCop].[test Forwarded Records]'
GO
DROP PROCEDURE [SQLCop].[test Forwarded Records]
GO
PRINT N'Dropping [SQLCop].[test Decimal Size Problem]'
GO
DROP PROCEDURE [SQLCop].[test Decimal Size Problem]
GO
PRINT N'Dropping [SQLCop].[test Database Mail]'
GO
DROP PROCEDURE [SQLCop].[test Database Mail]
GO
PRINT N'Dropping [SQLCop].[test Database collation]'
GO
DROP PROCEDURE [SQLCop].[test Database collation]
GO
PRINT N'Dropping [SQLCop].[test Database and Log files on the same disk]'
GO
DROP PROCEDURE [SQLCop].[test Database and Log files on the same disk]
GO
PRINT N'Dropping [SQLCop].[test Compatibility Level]'
GO
DROP PROCEDURE [SQLCop].[test Compatibility Level]
GO
PRINT N'Dropping [SQLCop].[test Columns with image data type]'
GO
DROP PROCEDURE [SQLCop].[test Columns with image data type]
GO
PRINT N'Dropping [SQLCop].[test Columns with float data type]'
GO
DROP PROCEDURE [SQLCop].[test Columns with float data type]
GO
PRINT N'Dropping [SQLCop].[test Columns of data type Text/nText]'
GO
DROP PROCEDURE [SQLCop].[test Columns of data type Text/nText]
GO
PRINT N'Dropping [SQLCop].[test Column Name Problems]'
GO
DROP PROCEDURE [SQLCop].[test Column Name Problems]
GO
PRINT N'Dropping [SQLCop].[test Column data types (Numeric vs. Int)]'
GO
DROP PROCEDURE [SQLCop].[test Column data types (Numeric vs. Int)]
GO
PRINT N'Dropping [SQLCop].[test Column collation does not match database default]'
GO
DROP PROCEDURE [SQLCop].[test Column collation does not match database default]
GO
PRINT N'Dropping [SQLCop].[test Buffer cache hit ratio]'
GO
DROP PROCEDURE [SQLCop].[test Buffer cache hit ratio]
GO
PRINT N'Dropping [SQLCop].[DmOsPerformanceCountersPermissionErrors]'
GO
DROP FUNCTION [SQLCop].[DmOsPerformanceCountersPermissionErrors]
GO
PRINT N'Dropping [SQLCop].[test Auto update statistics]'
GO
DROP PROCEDURE [SQLCop].[test Auto update statistics]
GO
PRINT N'Dropping [SQLCop].[test Auto Shrink]'
GO
DROP PROCEDURE [SQLCop].[test Auto Shrink]
GO
PRINT N'Dropping [SQLCop].[test Auto create statistics]'
GO
DROP PROCEDURE [SQLCop].[test Auto create statistics]
GO
PRINT N'Dropping [SQLCop].[test Auto close]'
GO
DROP PROCEDURE [SQLCop].[test Auto close]
GO
PRINT N'Dropping [SQLCop].[test Agent Service]'
GO
DROP PROCEDURE [SQLCop].[test Agent Service]
GO
PRINT N'Dropping [SQLCop].[test Ad hoc distributed queries]'
GO
DROP PROCEDURE [SQLCop].[test Ad hoc distributed queries]
GO
PRINT N'Dropping [tSQLt].[Fail]'
GO
DROP PROCEDURE [tSQLt].[Fail]
GO
PRINT N'Dropping [tSQLt].[TestMessage]'
GO
DROP TABLE [tSQLt].[TestMessage]
GO
PRINT N'Dropping [tSQLt].[TestCaseSummary]'
GO
DROP FUNCTION [tSQLt].[TestCaseSummary]
GO
PRINT N'Dropping [tSQLt].[Private_ScriptIndex]'
GO
DROP FUNCTION [tSQLt].[Private_ScriptIndex]
GO
PRINT N'Dropping [tSQLt].[Private_SysIndexes]'
GO
DROP VIEW [tSQLt].[Private_SysIndexes]
GO
PRINT N'Dropping [tSQLt].[Private_ResolveName]'
GO
DROP FUNCTION [tSQLt].[Private_ResolveName]
GO
PRINT N'Dropping [tSQLt].[Private_ResolveSchemaName]'
GO
DROP FUNCTION [tSQLt].[Private_ResolveSchemaName]
GO
PRINT N'Dropping [tSQLt].[Private_ResolveObjectName]'
GO
DROP FUNCTION [tSQLt].[Private_ResolveObjectName]
GO
PRINT N'Dropping [tSQLt].[Private_ResolveApplyConstraintParameters]'
GO
DROP FUNCTION [tSQLt].[Private_ResolveApplyConstraintParameters]
GO
PRINT N'Dropping [tSQLt].[Private_IsTestClass]'
GO
DROP FUNCTION [tSQLt].[Private_IsTestClass]
GO
PRINT N'Dropping [tSQLt].[TestClasses]'
GO
DROP VIEW [tSQLt].[TestClasses]
GO
PRINT N'Dropping [tSQLt].[Private_GetSchemaId]'
GO
DROP FUNCTION [tSQLt].[Private_GetSchemaId]
GO
PRINT N'Dropping [tSQLt].[Private_GetUniqueConstraintDefinition]'
GO
DROP FUNCTION [tSQLt].[Private_GetUniqueConstraintDefinition]
GO
PRINT N'Dropping [tSQLt].[Private_GetLastTestNameIfNotProvided]'
GO
DROP FUNCTION [tSQLt].[Private_GetLastTestNameIfNotProvided]
GO
PRINT N'Dropping [tSQLt].[Run_LastExecution]'
GO
DROP TABLE [tSQLt].[Run_LastExecution]
GO
PRINT N'Dropping [tSQLt].[Private_GetForeignKeyDefinition]'
GO
DROP FUNCTION [tSQLt].[Private_GetForeignKeyDefinition]
GO
PRINT N'Dropping [tSQLt].[Private_GetForeignKeyParColumns]'
GO
DROP FUNCTION [tSQLt].[Private_GetForeignKeyParColumns]
GO
PRINT N'Dropping [tSQLt].[Private_GetForeignKeyRefColumns]'
GO
DROP FUNCTION [tSQLt].[Private_GetForeignKeyRefColumns]
GO
PRINT N'Dropping [tSQLt].[Private_GetDataTypeOrComputedColumnDefinition]'
GO
DROP FUNCTION [tSQLt].[Private_GetDataTypeOrComputedColumnDefinition]
GO
PRINT N'Dropping [tSQLt].[Private_GetFullTypeName]'
GO
DROP FUNCTION [tSQLt].[Private_GetFullTypeName]
GO
PRINT N'Dropping [tSQLt].[Private_SysTypes]'
GO
DROP VIEW [tSQLt].[Private_SysTypes]
GO
PRINT N'Dropping [tSQLt].[Private_GetConfiguration]'
GO
DROP FUNCTION [tSQLt].[Private_GetConfiguration]
GO
PRINT N'Dropping [tSQLt].[Private_Configurations]'
GO
DROP TABLE [tSQLt].[Private_Configurations]
GO
PRINT N'Dropping [tSQLt].[Private_FindConstraint]'
GO
DROP FUNCTION [tSQLt].[Private_FindConstraint]
GO
PRINT N'Dropping [tSQLt].[Private_GetOriginalTableInfo]'
GO
DROP FUNCTION [tSQLt].[Private_GetOriginalTableInfo]
GO
PRINT N'Dropping [tSQLt].[Info]'
GO
DROP FUNCTION [tSQLt].[Info]
GO
PRINT N'Dropping [tSQLt].[Private_SqlVersion]'
GO
DROP FUNCTION [tSQLt].[Private_SqlVersion]
GO
PRINT N'Dropping [tSQLt].[Private_NullCellTable]'
GO
DROP TABLE [tSQLt].[Private_NullCellTable]
GO
PRINT N'Dropping [tSQLt].[TestResult]'
GO
DROP TABLE [tSQLt].[TestResult]
GO
PRINT N'Dropping types'
GO
DROP TYPE [tSQLt].[AssertStringTable]
GO
DROP TYPE [tSQLt].[Private]
GO
PRINT N'Dropping CLR assemblies'
GO
DROP ASSEMBLY [tSQLtCLR]
GO
PRINT N'Dropping schemas'
GO
IF SCHEMA_ID(N'SQLCop') IS NOT NULL
DROP SCHEMA [SQLCop]
GO
IF SCHEMA_ID(N'tSQLt') IS NOT NULL
DROP SCHEMA [tSQLt]
GO
