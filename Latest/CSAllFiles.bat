set settingFile=G:\Tzunami\Tzunami-Batch-Files\Latest\settings.ini
for /f "tokens=1,2 delims==" %%a in (settingFile) do (
    if %%a==rootPath set %%a=%%b
    if %%a==exporterTargetPathAnyCpu set %%a=%%b
)

set exporterTitle=Content Server Exporter

set ecmFolderName=\ContentServer
set SourceDir=%rootPath%%exporterTargetPathAnyCpu%%ecmFolderName%
set TargetDir=%rootPath%%exporterTargetPathAnyCpu%


echo ========== Copying files of '%exporterTitle%' to 'Tzunami Generic Exporter AnyCPU\bin\Debug\' ==========
echo ___________________________________________________________________________________________________________

xcopy /y "%SourceDir%\*.*" "%TargetDir%\"

echo ========== Copied files of '%exporterTitle%' to 'Tzunami Generic Exporter AnyCPU\bin\Debug\' ==========
echo __________________________________________________________________________________________________________

