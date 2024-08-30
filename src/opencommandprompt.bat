rem Opens a command prompt with the current directory set the the location of this file.  Intended to be double clicked from file explorer.

rem Help.
IF "%1"=="-h" (
    echo Opens a command prompt with the current directory set the the location of this file.  Intended to be double clicked from file explorer.
    echo.
    echo OPENCOMMANDPROMPT
    GOTO :EOF
)

pushd %~dp0
cmd.exe

:EOF