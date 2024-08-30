@echo off

rem Lists all the environments.

IF "%1"=="-h" (
    echo Lists all the environments.
    echo.
    echo LISTENVS
    GOTO :EOF
)

set python_directory=%~dp0\..\..
set env_directory=%python_directory%\envs\%1

echo.
call dir /b "%env_directory%"
echo.

:EOF