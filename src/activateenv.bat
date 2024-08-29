@echo off

rem Activate an environment.
rem arg1 : name of the environment

IF "%1"=="-h" (
    echo Activates a Python environment.
    echo.
    echo ACTIVATEENV [arg1]
    echo     arg1 : name of the environment
    GOTO :EOF
)

set python_directory=%~dp0..\..
set env_directory=%python_directory%\envs\%1

call "%env_directory%\Scripts\activate.bat"

:EOF