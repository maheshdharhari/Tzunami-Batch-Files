@echo off
for /f "tokens=1,2 delims==" %%a in (..\..\settings.ini) do (
    if %%a==rootPath set %%a=%%b
	if %%a==targetPath set %%a=%%b
)

set SourceDir=%rootPath%Deployer\TzDE2 .net2\Exporters\Tzunami.Common.EcmDM5Exporter\bin\Debug
set TargetDir=%rootPath%%targetPath%
set SourceExporterConfigXmlFile=%rootPath%Deployer\TzDE2 .net2\Exporters\Tzunami Generic Exporter\Configurations

echo.
echo ========== Copying config file of 'DM5 Exporter' to 'Tzunami Generic Exporter\bin\Debug\' ==========
echo ___________________________________________________________________________________________________________

echo.
copy /Y  "%SourceExporterConfigXmlFile%\DM5ExporterConfiguration.xml" "%TargetDir%\ExporterConfiguration.xml" 
echo.
echo ========== Copying files of 'DM5 Exporter' to 'Tzunami Generic Exporter\bin\Debug\' ==========
echo ___________________________________________________________________________________________________________

echo.
xcopy /y "%SourceDir%\*.*" "%TargetDir%\"
echo.
echo ========== Copied files of 'DM5 Exporter' to 'Tzunami Generic Exporter\bin\Debug\' ==========
echo __________________________________________________________________________________________________________

echo.