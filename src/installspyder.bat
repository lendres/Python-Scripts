@echo off

rem Install the Spyder components for an environment.
rem arg1 : name of the environment

IF "%1"=="-h" (
    echo Installs the Sypder components into an environment.
    echo Install Spyder from the standalone download.
    echo.
    echo SPYDERINSTALL [arg1]
    echo     arg1 : name of the environment
    GOTO :EOF
)

call activateenv %1
call pip install spyder numpy scipy pandas matplotlib sympy cython

:EOF