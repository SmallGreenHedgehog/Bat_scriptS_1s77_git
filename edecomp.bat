@echo off
for /r .\_���㫨 %%i in (*.ert) do (
call edecompfile.bat %%i %%~dpi
)