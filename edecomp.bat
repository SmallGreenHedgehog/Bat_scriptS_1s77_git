@echo off
for /r .\_Модули %%i in (*.ert) do (
call edecompfile.bat %%i %%~dpi
)