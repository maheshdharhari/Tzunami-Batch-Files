set SourceDir=C:\Data\Tzunami\TzunamiProjects\Deployer\TzDE2 .net2\Exporters\Tzunami.Common.EcmFileNetExporter\bin\Debug
set TargetDir=C:\Data\Tzunami\TzunamiProjects\Deployer\TzDE2 .net2\Exporters\Tzunami Generic Exporter\bin\Debug

echo ========== Copying files of 'File Net Exporter' to 'Tzunami Generic Exporter\bin\Debug\' ==========
echo ___________________________________________________________________________________________________________

copy /Y  "%SourceDir%\Tzunami.Common.EcmFileNetExporter.*" "%TargetDir%\Tzunami.Common.EcmFileNetExporter.*" 

echo ========== Copied files of 'File Net Exporter' to 'Tzunami Generic Exporter\bin\Debug\' ==========
echo __________________________________________________________________________________________________________