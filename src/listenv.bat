@echo off

rem List all the environments.

IF "%1"=="-h" (
    echo List all the environments.
    echo.
    echo LISTENV
    GOTO :EOF
)

set python_directory=%~dp0\..\..
set env_directory=%python_directory%\envs\%1

call dir "%env_directory%"

:EOF