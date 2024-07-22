set SourceDir=D:\Tzunami\Deployer\Versions\3.5\CS20Security\Exporters\Tzunami.Common.EcmContentServerExporter\bin\Debug
set TargetDir=D:\Tzunami\Deployer\Versions\3.5\CS20Security\Exporters\Tzunami Generic Exporter AnyCPU\bin\Debug

echo ========== Copying files of 'Content Server Exporter' to 'Tzunami Generic Exporter AnyCPU\bin\Debug\' ==========
echo ___________________________________________________________________________________________________________

xcopy /y "%SourceDir%\*.*" "%TargetDir%\"

echo ========== Copied files of 'Content Server Exporter' to 'Tzunami Generic Exporter AnyCPU\bin\Debug\' ==========
echo __________________________________________________________________________________________________________