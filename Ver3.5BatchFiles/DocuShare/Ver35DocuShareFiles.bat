set SourceDir=C:\Data\Tzunami\TzunamiProjects\Deployer\PRODUCTION\Deployer 3.5.211115\Exporters\Tzunami.Common.EcmDocuShareExporter\bin\Debug
set TargetDir=C:\Data\Tzunami\TzunamiProjects\Deployer\PRODUCTION\Deployer 3.5.211115\Exporters\Tzunami Generic Exporter\bin\Debug

echo ========== Copying files of 'DocuShare Exporter' to 'Tzunami Generic Exporter AnyCPU\bin\Debug\' ==========
echo ___________________________________________________________________________________________________________

copy /Y  "%SourceDir%\Tzunami.Common.EcmDocuShareExporter.*" "%TargetDir%\Tzunami.Common.EcmDocuShareExporter.*" 


echo ========== Copied files of 'Content Server Expoerter' to 'Tzunami Generic Exporter AnyCPU\bin\Debug\' ==========
echo __________________________________________________________________________________________________________