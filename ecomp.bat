@echo off
xcopy /T /Y /C .\SRC\_���㫨 .\_���㫨
for /r .\SRC\_���㫨 %%i in (*.1s) do (
call ecompfile.bat %%~dpi
)