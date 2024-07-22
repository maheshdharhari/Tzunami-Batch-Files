set SourceDir=C:\Data\Tzunami\TzunamiProjects\Deployer\PRODUCTION\Deployer 3.5.211115\Exporters\Tzunami.Common.EcmDocuShareExporter\bin\Debug
set TargetDir=C:\Data\Tzunami\TzunamiProjects\Deployer\PRODUCTION\Deployer 3.5.211115\Exporters\Tzunami Generic Exporter\bin\Debug

echo ========== Copying files of 'Content Server Exporter' to 'Tzunami Generic Exporter AnyCPU\bin\Debug\' ==========
echo ___________________________________________________________________________________________________________

xcopy /y "%SourceDir%\*.*" "%TargetDir%\"

echo ========== Copied files of 'Content Server Exporter' to 'Tzunami Generic Exporter AnyCPU\bin\Debug\' ==========
echo __________________________________________________________________________________________________________