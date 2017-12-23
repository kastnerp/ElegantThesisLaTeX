@echo off

setlocal

REM Generic .bat file to launch .ps1 files.
REM Name the .bat file like the .ps1 file and you are done.

set this_file_without_extension=%~n0
set ps1_file=%this_file_without_extension%.ps1

powershell.exe -ExecutionPolicy Bypass -NoLogo -Noninteractive -NoProfile -File %ps1_file%

endlocal
