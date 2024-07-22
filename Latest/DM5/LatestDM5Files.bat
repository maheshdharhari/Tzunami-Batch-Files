@echo off
for /f "tokens=1,2 delims==" %%a in (..\..\settings.ini) do (
    if %%a==rootPath set %%a=%%b
	if %%a==targetPath set %%a=%%b
)

set SourceDir=%rootPath%Deployer\TzDE2 .net2\Exporters\Tzunami.Common.EcmDM5Exporter\bin\Debug
set TargetDir=%rootPath%%targetPath%

echo ========== Copying files of 'DM5 Exporter' to 'Tzunami Generic Exporter\bin\Debug\' ==========
echo ___________________________________________________________________________________________________________

copy /Y  "%SourceDir%\Tzunami.Common.EcmDM5Exporter.*" "%TargetDir%\Tzunami.Common.EcmDM5Exporter.*" 

echo ========== Copied files of 'DM5 Exporter' to 'Tzunami Generic Exporter\bin\Debug\' ==========
echo __________________________________________________________________________________________________________