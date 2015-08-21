@echo off
set "SRC=%1"
set "fn=%2"
set relpath=%CD%
Setlocal EnableDelayedExpansion
CALL SET DEST=%%fn:!relpath!=%%
ENDLOCAL & SET "DEST=.\SRC%DEST%"
gcomp -d -F %SRC% -D %DEST% -vv --no-ini --no-version --no-empty-mxl > ert_decompile.log