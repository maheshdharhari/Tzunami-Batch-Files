@echo off
for /f "tokens=1,2 delims==" %%a in (..\..\settings.ini) do (
    if %%a==rootPath set %%a=%%b
	if %%a==targetPathAnyCpu set %%a=%%b
)
set SourceDir=%rootPath%Deployer\TzDE2 .net2\Exporters\Tzunami.Common.EcmContentServerExporter\bin\Debug
set TargetDir=%rootPath%%targetPathAnyCpu%

echo ========== Copying files of 'Content Server Exporter' to 'Tzunami Generic Exporter AnyCPU\bin\Debug\' ==========
echo ___________________________________________________________________________________________________________

copy /Y  "%SourceDir%\Tzunami.Common.EcmContentServerExporter.*" "%TargetDir%\Tzunami.Common.EcmContentServerExporter.*" 

echo ========== Copied files of 'Content Server Expoerter' to 'Tzunami Generic Exporter AnyCPU\bin\Debug\' ==========
echo __________________________________________________________________________________________________________