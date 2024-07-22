@echo off
for /f "tokens=1,2 delims==" %%a in (..\..\settings.ini) do (
    if %%a==rootPath set %%a=%%b
	if %%a==targetPathAnyCpu set %%a=%%b
)
set SourceDir=%rootPath%Deployer\TzDE2 .net2\Exporters\Tzunami.Common.EcmConfluenceExporter\bin\Debug
set TargetDir=%targetPath%

echo ========== Copying files of 'Confluence Exporter' to 'Tzunami Generic Exporter AnyCPU\bin\Debug\' ==========
echo ___________________________________________________________________________________________________________

copy /Y  "%SourceDir%\Tzunami.Common.EcmConfluenceExporter.*" "%TargetDir%\" 

echo ========== Copied files of 'Confluence Exporter' to 'Tzunami Generic Exporter AnyCPU\bin\Debug\' ==========
echo __________________________________________________________________________________________________________