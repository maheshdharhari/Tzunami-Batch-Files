@echo off
for /f "tokens=1,2 delims==" %%a in (..\..\settings.ini) do (
    if %%a==rootPath set %%a=%%b
	if %%a==targetPathAnyCpu set %%a=%%b
)

set SourceDir=%rootPath%Deployer\TzDE2 .net2\Exporters\Tzunami.Common.EcmDocumentumCloudExporter\bin\Debug
set TargetDir=%rootPath%%targetPathAnyCpu%


echo %SourceDir%
echo %TargetDir%

echo ========== Copying files of 'Documentum Cloud Exporter' to 'Tzunami Generic Exporter AnyCPU\bin\Debug\' ==========
echo ___________________________________________________________________________________________________________

copy /Y  "%SourceDir%\Tzunami.Common.EcmDocumentumCloudExporter.*" "%TargetDir%\Tzunami.Common.EcmDocumentumCloudExporter.*" 

echo ========== Copied files of 'Documentum Cloud Exporter' to 'Tzunami Generic Exporter AnyCPU\bin\Debug\' ==========
echo __________________________________________________________________________________________________________