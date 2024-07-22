set SourceDir=C:\Data\Tzunami\TzunamiProjects\Deployer\TzDE2 .net2\Exporters\Tzunami.Common.EcmFileNetExporter\bin\Debug
set TargetDir=C:\Data\Tzunami\TzunamiProjects\Deployer\TzDE2 .net2\Exporters\Tzunami Generic Exporter\bin\Debug

set SourceExporterConfigXmlFile=C:\Data\Tzunami\TzunamiProjects\Deployer\TzDE2 .net2\Exporters\Tzunami Generic Exporter\Configurations


echo.
echo ========== Copying config file of 'FileNet Exporter Configuration' to 'Tzunami Generic Exporter AnyCPU\bin\Debug\' ==========
echo ___________________________________________________________________________________________________________
echo.
copy /Y  "%SourceExporterConfigXmlFile%\FileNetExporterConfiguration.xml" "%TargetDir%\ExporterConfiguration.xml" 


echo ========== Copying files of 'File Net Exporter' to 'Tzunami Generic Exporter\bin\Debug\' ==========
echo ___________________________________________________________________________________________________________

copy /Y  "%SourceDir%\*.*" "%TargetDir%\*.*" 

echo ========== Copied files of 'File Net Exporter' to 'Tzunami Generic Exporter\bin\Debug\' ==========
echo __________________________________________________________________________________________________________