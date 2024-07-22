@echo off
for /f "tokens=1,2 delims==" %%a in (..\..\settings.ini) do (
    if %%a==rootPath set %%a=%%b
	if %%a==targetPathAnyCpu set %%a=%%b
)

set SourceDir=%rootPath%Deployer\TzDE2 .net2\Exporters\Tzunami.Common.EcmDocuShareExporter\bin\Debug
set TargetDir=%rootPath%%targetPathAnyCpu%
echo ========== Copying files of 'DocuShare Exporter' to 'Tzunami Generic Exporter AnyCPU\bin\Debug\' ==========
echo ___________________________________________________________________________________________________________

copy /Y  "%SourceDir%\Tzunami.Common.EcmDocuShareExporter.*" "%TargetDir%\Tzunami.Common.EcmDocuShareExporter.*" 

echo ========== Copied files of 'DocuShare Expoerter' to 'Tzunami Generic Exporter AnyCPU\bin\Debug\' ==========
echo __________________________________________________________________________________________________________