@echo off
for /f "tokens=1,2 delims==" %%a in (..\..\settings.ini) do (
    if %%a==rootPath set %%a=%%b
    if %%a==exporterTargetPathAnyCpu set %%a=%%b
    if %%a==exporterTargetPath set %%a=%%b
    if %%a==configurationsPath set %%a=%%b
)
set exporterTitle=HPE Content Exporter
set exporter=Tzunami.Common.EcmHPEContentExporter
set exporterConfigFile=HPEContentExporterConfiguration.xml

set SourceDir=%rootPath%Deployer\TzDE2 .net2\Exporters\%exporter%\bin\Debug
set TargetDir=%rootPath%%exporterTargetPathAnyCpu%
set SourceExporterConfigXmlFile=%rootPath%%configurationsPath%
set configFile=%SourceExporterConfigXmlFile%\%exporterConfigFile%
set targetConfigFile=%TargetDir%\ExporterConfiguration.xml

:: Source Dir
:: echo %SourceDir%
:: Target directory for AnyCPU
:: echo %TargetDir%
:: Configurations directory
:: echo %SourceExporterConfigXmlFile%
:: Config source file path
:: echo %configFile%
:: Config target file path
:: echo %targetConfigFile%

echo ========== Copying files of '%exporterTitle%' to 'Tzunami Generic Exporter AnyCPU\bin\Debug\' ==========
echo ___________________________________________________________________________________________________________

xcopy /y "%SourceDir%\*.*" "%TargetDir%\"
xcopy /y "%rootPath%Deployer\TzDE2 .net2\Exporters\%exporter%\.Net DLLs\*.*" "%TargetDir%\"
xcopy /y "%rootPath%Deployer\TzDE2 .net2\Exporters\%exporter%\.Net DLLs\Supporting dlls\*.*" "%TargetDir%\"

echo ========== Copied files of '%exporterTitle%' to 'Tzunami Generic Exporter AnyCPU\bin\Debug\' ==========
echo __________________________________________________________________________________________________________


echo.
echo ========== Copying config file of '%exporterTitle% Configuration' to 'Tzunami Generic Exporter AnyCPU\bin\Debug\' ==========
echo ___________________________________________________________________________________________________________

xcopy /Y  "%configFile%" "%targetConfigFile%" 

echo ========== Copied config of '%exporterTitle%' to 'Tzunami Generic Exporter AnyCPU\bin\Debug\' ==========
echo ___________________________________________________________________________________________________________

