@echo off

rem Install the Spyder components for an environment.
rem arg1 : name of the environment

rem Help.
IF "%1"=="-h" (
    echo Installs the Sypder components into an environment.
    echo Install Spyder from the standalone download.
    echo.
    echo SPYDERINSTALL [arg1]
    echo     arg1   Name of the environment.  If provided Sypder will be installed into this environment,
    echo            If not provided, Spyder will be installed into the currently active environment.
    GOTO :EOF
)

IF "%1" NEQ "" (
    echo Installing in environment: %1
    call activateenv %1
) ELSE (
   echo No environment provided, installing into the currently activate environment.
)
echo.

call pip install spyder numpy scipy pandas matplotlib sympy cython

:EOF