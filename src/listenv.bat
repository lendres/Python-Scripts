@echo off

rem List all the environments.

set python_directory=%~dp0\..\..
set env_directory=%python_directory%\envs\%1

call dir "%env_directory%"