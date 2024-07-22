@echo off
for /f "tokens=1,2 delims==" %%a in (..\..\settings.ini) do (
    if %%a==rootPath set %%a=%%b
	if %%a==targetPathAnyCpu set %%a=%%b
)
set SourceDir=%rootPath%Deployer\TzDE2 .net2\Exporters\Tzunami.Common.EcmConfluenceExporter\bin\Debug
set TargetDir=%rootPath%%targetPathAnyCpu%

set SourceExporterConfigXmlFile=%rootPath%Deployer\TzDE2 .net2\Exporters\Tzunami Generic Exporter\Configurations

echo.
echo ========== Copying config file of 'Confluence Exporter Configuration' to 'Tzunami Generic Exporter AnyCPU\bin\Debug\' ==========
echo ___________________________________________________________________________________________________________

echo.
copy /Y  "%SourceExporterConfigXmlFile%\ConfluenceExporterConfiguration.xml" "%TargetDir%\ExporterConfiguration.xml" 

echo.
echo ========== Copying files of 'Confluence Exporter' to 'Tzunami Generic Exporter AnyCPU\bin\Debug\' ==========
echo ___________________________________________________________________________________________________________

echo.
xcopy /y "%SourceDir%\*.*" "%TargetDir%\"
echo.
echo ========== Copied files of 'Confluence Exporter' to 'Tzunami Generic Exporter AnyCPU\bin\Debug\' ==========
echo __________________________________________________________________________________________________________

echo.