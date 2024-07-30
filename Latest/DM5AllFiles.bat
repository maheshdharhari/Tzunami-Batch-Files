set settingFile=G:\Tzunami\Tzunami-Batch-Files\Latest\settings.ini
for /f "tokens=1,2 delims==" %%a in (settingFile) do (
    if %%a==rootPath set %%a=%%b
    if %%a==exporterTargetPath set %%a=%%b
)

set exporterTitle=DM5 Exporter

set ecmFolderName=\DM5
set SourceDir=%rootPath%%exporterTargetPath%%ecmFolderName%
set TargetDir=%rootPath%%exporterTargetPath%


echo ========== Copying files of '%exporterTitle%' to 'Tzunami Generic Exporter AnyCPU\bin\Debug\' ==========
echo ___________________________________________________________________________________________________________

xcopy /y "%SourceDir%\*.*" "%TargetDir%\"

echo ========== Copied files of '%exporterTitle%' to 'Tzunami Generic Exporter AnyCPU\bin\Debug\' ==========
echo __________________________________________________________________________________________________________

