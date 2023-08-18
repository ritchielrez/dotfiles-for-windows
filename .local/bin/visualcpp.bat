@echo off

rem https://stackoverflow.com/questions/4781772/how-to-test-if-an-executable-exists-in-the-path-from-a-windows-batch-file 
where /q vcvarsall.bat
if NOT ERRORLEVEL 1 (
    vcvarsall x64
    bash
) else (
    bash
)
