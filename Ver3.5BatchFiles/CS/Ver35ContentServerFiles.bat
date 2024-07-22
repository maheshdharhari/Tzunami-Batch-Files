set SourceDir=D:\Tzunami\Deployer\Versions\3.5\CS20Security\Exporters\Tzunami.Common.EcmContentServerExporter\bin\Debug
set TargetDir=D:\Tzunami\Deployer\Versions\3.5\CS20Security\Exporters\Tzunami Generic Exporter AnyCPU\bin\Debug

echo ========== Copying files of 'Content Server Exporter' to 'Tzunami Generic Exporter AnyCPU\bin\Debug\' ==========
echo ___________________________________________________________________________________________________________

copy /Y  "%SourceDir%\Tzunami.Common.EcmContentServerExporter.*" "%TargetDir%\Tzunami.Common.EcmContentServerExporter.*" 
copy /Y  "%SourceDir%\RestSharp.*" "%TargetDir%\RestSharp.*" 

echo ========== Copied files of 'Content Server Expoerter' to 'Tzunami Generic Exporter AnyCPU\bin\Debug\' ==========
echo __________________________________________________________________________________________________________