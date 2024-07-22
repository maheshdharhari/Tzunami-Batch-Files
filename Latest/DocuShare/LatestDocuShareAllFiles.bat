@echo off
for /f "tokens=1,2 delims==" %%a in (..\..\settings.ini) do (
    if %%a==rootPath set %%a=%%b
	if %%a==targetPathAnyCpu set %%a=%%b
)

set SourceDir=%rootPath%Deployer\TzDE2 .net2\Exporters\Tzunami.Common.EcmDocuShareExporter\bin\Debug
set TargetDir=%rootPath%%targetPathAnyCpu%
set SourceExporterConfigXmlFile=%rootPath%Deployer\TzDE2 .net2\Exporters\Tzunami Generic Exporter\Configurations
echo.
echo ========== Copying config file of 'DocuShare Exporter Configuration' to 'Tzunami Generic Exporter AnyCPU\bin\Debug\' ==========
echo ___________________________________________________________________________________________________________

echo.
copy /Y  "%SourceExporterConfigXmlFile%\DocuShareExporterConfiguration.xml" "%TargetDir%\ExporterConfiguration.xml" 





echo ========== Copying files of 'DocuShare Exporter' to 'Tzunami Generic Exporter AnyCPU\bin\Debug\' ==========
echo ___________________________________________________________________________________________________________

xcopy /y "%SourceDir%\*.*" "%TargetDir%\"

echo ========== Copied files of 'DocuShare Exporter' to 'Tzunami Generic Exporter AnyCPU\bin\Debug\' ==========
echo __________________________________________________________________________________________________________