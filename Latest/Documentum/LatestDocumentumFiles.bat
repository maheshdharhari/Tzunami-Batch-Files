set SourceDir=C:\Data\Tzunami\TzunamiProjects\Deployer\TzDE2 .net2\Exporters\Tzunami.Common.EcmDocumentumExporter\bin\Debug
set TargetDir=C:\Data\Tzunami\TzunamiProjects\Deployer\TzDE2 .net2\Exporters\Tzunami Generic Exporter\bin\Debug
@echo off
for /f "tokens=1,2 delims==" %%a in (..\..\settings.ini) do (
    if %%a==rootPath set %%a=%%b
	if %%a==targetPath set %%a=%%b
)

set SourceDir=%rootPath%Deployer\TzDE2 .net2\Exporters\Tzunami.Common.EcmDocumentumExporter\bin\Debug
set TargetDir=%rootPath%%targetPath%

echo ========== Copying files of 'Documentum Exporter' to 'Tzunami Generic Exporter\bin\Debug\' ==========
echo ___________________________________________________________________________________________________________

copy /Y  "%SourceDir%\Tzunami.Common.EcmDocumentumExporter.*" "%TargetDir%\Tzunami.Common.EcmDocumentumExporter.*" 

echo ========== Copied files of 'Documentum Exporter' to 'Tzunami Generic Exporter\bin\Debug\' ==========
echo __________________________________________________________________________________________________________