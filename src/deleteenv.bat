@echo off

rem Delete an environment.
rem arg1 : name of the environment

set python_directory=%~dp0\..\..
set env_directory=%python_directory%\envs\%1

call rmdir /s /q "%env_directory%"