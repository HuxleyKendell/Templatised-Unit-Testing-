$SQLServer = "REDGATE-DEMO\SQLEXPRESS"
$Database = "Westwind_Test"
 
Invoke-Sqlcmd -ServerInstance "REDGATE-DEMO\SQLEXPRESS" -Database "Westwind_Teste" -Query "BEGIN TRY EXEC tSQLt.RunAll END TRY BEGIN CATCH END CATCH; EXEC tSQLt.XmlResultFormatter" | Out-File -FilePath "$(System.DefaultWorkingDirectory)\TestResults\DatabaseTestResults.xml"