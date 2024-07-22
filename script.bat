@echo off
for /f "tokens=1,2 delims==" %%a in (settings.ini) do (
    if %%a==rootPath set %%a=%%b
    if %%a==exporterTargetPathAnyCpu set %%a=%%b
    if %%a==exporterTargetPath set %%a=%%b
)

echo %rootPath% %exporterTargetPathAnyCpu%
echo %rootPath% %exporterTargetPath%