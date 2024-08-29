@echo off

rem List the installed Python versions.

set python_directory=%~dp0\..\..

call dir "%python_directory%\Python*"