@echo off
set "fa=%1"
set relpath=%CD%
Setlocal EnableDelayedExpansion
CALL SET SRC=%%fa:!relpath!=%%
CALL SET SRC=%%SRC:~0,-1%%
CALL SET rmDEST=%%fa:!relpath!\SRC=%%
CALL SET rmDEST=%%rmDEST:~0,-1%%
CALL SET DEST=%rmDEST%.ert
ENDLOCAL & SET "SRC=.%SRC%" & SET "rmDEST=.%rmDEST%" & SET "DEST=.%DEST%"
RMDIR /S /Q %rmDEST%
gcomp -c -F %DEST% -DD %SRC% -vv > ert_compile.log