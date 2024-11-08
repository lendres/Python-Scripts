@echo off

rem Create a new environment.
rem arg1 : name of the environment
rem arg2 : Python version (e.g. 311, 312).

rem Help.
IF "%1"=="-h" (
    echo Creates a new Python environment.
    echo.
    echo CREATEENV [arg1] [arg2]
    echo     arg1 : name of the environment
    echo     arg2 : Python version ^(e.g. 311, 312^)
    GOTO :EOF
)

set packages_to_install=pip setuptools wheel

set python_directory=%~dp0..\..
set envs_directory=%python_directory%\envs
set new_env_directory=%envs_directory%\%1
set python_exe_path=%python_directory%\Python%2\python.exe

mkdir "%new_env_directory%"
call "%python_exe_path%" -m venv "%new_env_directory%"
call "%new_env_directory%\Scripts\python.exe" -m pip install --upgrade %packages_to_install%

:EOF