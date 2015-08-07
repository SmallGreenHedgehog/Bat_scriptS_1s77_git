@echo off
xcopy /T /Y /C .\SRC\_Модули .\_Модули
for /r .\SRC\_Модули %%i in (*.1s) do (
call ecompfile.bat %%~dpi
)