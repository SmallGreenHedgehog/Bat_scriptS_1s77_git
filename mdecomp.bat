@echo off
echo "start md decompilation" > MD_decompile.log
echo f | xcopy /Y /C /F ..\1cv7.md 1cv7.cur.md > MD_decompile.log
gcomp -d -F 1cv7.cur.md -D .\SRC\MD > MD_decompile.log