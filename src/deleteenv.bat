@echo off

rem Delete an environment.
rem arg1 : name of the environment

IF "%1"=="-h" (
    echo Deletes a Python environment.
    echo.
    echo DELETEENV [arg1]
    echo     arg1 : name of the environment
    GOTO :EOF
)

set python_directory=%~dp0\..\..
set env_directory=%python_directory%\envs\%1

call rmdir /s /q "%env_directory%"

:EOF