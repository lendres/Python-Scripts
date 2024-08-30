@echo off

rem Lists the installed Python versions.

IF "%1"=="-h" (
    echo Lists the installed Python versions.
    echo.
    echo LISTPYTHONVERSIONS
    GOTO :EOF
)

set python_directory=%~dp0\..\..

echo.
call dir /b "%python_directory%\Python*"
echo.

:EOF