
@echo off
for /f "tokens=1,2 delims==" %%a in (..\..\settings.ini) do (
    if %%a==rootPath set %%a=%%b
	if %%a==targetDir set %%a=%%b
)

set SourceDir=%rootPath%Deployer\TzDE2 .net2\Exporters\Tzunami.Common.EcmDocumentumExporter\bin\Debug
set TargetDir=%rootPath%%targetDir%
set SourceExporterConfigXmlFile=%rootPath%Deployer\TzDE2 .net2\Exporters\Tzunami Generic Exporter\Configurations
echo.
echo ========== Copying config file of 'Documentum Exporter Configuration' to 'Tzunami Generic Exporter\bin\Debug\' ==========
echo ___________________________________________________________________________________________________________
echo.
copy /Y  "%SourceExporterConfigXmlFile%\DocumentumExporterConfiguration.xml" "%TargetDir%\ExporterConfiguration.xml" 



echo ========== Copying all files of 'Documentum Exporter' to 'Tzunami Generic Exporter\bin\Debug\' ==========
echo ___________________________________________________________________________________________________________

xcopy /y "%SourceDir%\*.*" "%TargetDir%\"

echo ========== Copied all files of 'Documentum Exporter' to 'Tzunami Generic Exporter\bin\Debug\' ==========
echo __________________________________________________________________________________________________________
