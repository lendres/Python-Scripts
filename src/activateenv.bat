@echo off

rem activate an environment
rem arg1 : name of the environment

set python_directory=%~dp0\..\..
set env_directory=%python_directory%\envs\%1

call "%env_directory%\Scripts\activate.bat"