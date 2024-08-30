@echo off
rem Lists the installed Python versions.

rem Help.
IF "%1"=="-h" (
    echo Lists the installed Python versions.
    echo.
    echo LISTPYTHONVERSIONS
    GOTO :EOF
)

echo.

rem List the Python versions.
set "prefix=Python"
setlocal DisableDelayedExpansion
for /f %%i in ('call dir /AD /B ..\..\%prefix%*') do (
    set "progPath=%%~i"
    setlocal EnableDelayedExpansion
    set "progPath=!progPath:%prefix%=!"
    echo !progPath!
    endlocal
)

echo.

:EOF