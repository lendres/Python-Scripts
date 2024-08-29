@echo off

rem Lists the installed Python versions.

IF "%1"=="-h" (
    echo Lists the installed Python versions.
    echo.
    echo LISTPYTHONVERSIONS
    GOTO :EOF
)

set python_directory=%~dp0\..\..

call dir "%python_directory%\Python*"

:EOF