@echo off
echo "start md decompilation" > MD_decompile.log
echo f | xcopy /Y /C /F ..\1cv7.md 1cv7.cur.md > MD_decompile.log
del /f /q .\SRC\_Конфа\MD\*.*
gcomp -d -F 1cv7.cur.md -D .\SRC\_Конфа\MD -vv --no-ini --no-version --no-empty-mxl > MD_decompile.log