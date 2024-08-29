@echo off

rem Create a new environment.
rem arg1 : name of the environment
rem arg2 : Python version (e.g. 11, 12).

set packages_to_install=pip setuptools wheel

set python_directory=%~dp0\..\..
set envs_directory=%python_directory%\envs
set new_env_directory=%envs_directory%\%1
set python_exe_path=%python_directory%\Python3%2\python.exe

mkdir "%new_env_directory%"
call %python_exe_path% -m venv "%new_env_directory%"
call %new_env_directory%\Scripts\python.exe -m pip install --upgrade %packages_to_install%