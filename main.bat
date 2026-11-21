
@echo off
setlocal EnableExtensions EnableDelayedExpansion

title CMD.exe - Digital Playground
mode con: cols=85 lines=30
color 0A

:: ==========================================
:: CMD.exe - MAIN COMMAND ENGINE
:: VERSION 1.0
:: ==========================================

set "operator=Guest"
set "version=1.0"

:: Load boot module
call modules\boot.bat

:: ==========================================
:: MAIN TERMINAL
:: ==========================================

:terminal
echo.
set "cmd="
set /p "cmd=%operator%@CMD.exe:~$ "

if not defined cmd goto terminal

:: CORE COMMANDS
if /i "!cmd!"=="help" goto help
if /i "!cmd!"=="about" goto about
if /i "!cmd!"=="clear" goto clear
if /i "!cmd!"=="exit" goto shutdown

:: FUN COMMANDS
if /i "!cmd!"=="joke" goto joke
if /i "!cmd!"=="quote" goto quote
if /i "!cmd!"=="mood" goto mood
if /i "!cmd!"=="fortune" goto fortune
if /i "!cmd!"=="guess" goto guess
if /i "!cmd!"=="riddle" goto riddle
if /i "!cmd!"=="rps" goto rps
if /i "!cmd!"=="quiz" goto quiz
if /i "!cmd!"=="scramble" goto scramble
if /i "!cmd!"=="dice" goto dice
if /i "!cmd!"=="coin" goto coin
if /i "!cmd!"=="memory" goto memory
if /i "!cmd!"=="choose" goto choose

:: VISUAL COMMANDS
if /i "!cmd!"=="matrix" goto matrix
if /i "!cmd!"=="rainbow" goto rainbow
if /i "!cmd!"=="art" goto art
if /i "!cmd!"=="robot" goto robot
if /i "!cmd!"=="space" goto space

:: UNKNOWN COMMAND
echo.
color 0C
echo [ERROR] Command not recognized.
echo [TIP] Type HELP to explore.
color 0A
goto terminal


:: ==========================================
:: HELP
:: ==========================================

:help
call modules\commands.bat
goto terminal


:: ==========================================
:: ABOUT
:: ==========================================

:about
cls
color 0D
echo.
echo       ==========================================
echo.
echo                  ABOUT CMD.exe
echo.
echo       ==========================================
echo.
echo       PROJECT     : CMD.exe
echo       VERSION     : %version%
echo       OPERATOR    : %operator%
echo       LANGUAGE    : WINDOWS BATCH
echo       ENVIRONMENT : COMMAND PROMPT
echo.
echo       A PLAYGROUND FOR CURIOUS MINDS.
echo.
pause
color 0A
goto terminal


:: ==========================================
:: CLEAR
:: ==========================================

:clear
cls
color 0A
goto terminal


:: ==========================================
:: FUN COMMAND ROUTES
:: ==========================================

:joke
call modules\games.bat joke
goto terminal

:quote
call modules\games.bat quote
goto terminal

:mood
call modules\games.bat mood
goto terminal

:fortune
call modules\games.bat fortune
goto terminal

:guess
call modules\games.bat guess
goto terminal

:riddle
call modules\games.bat riddle
goto terminal

:rps
call modules\games.bat rps
goto terminal

:quiz
call modules\games.bat quiz
goto terminal

:scramble
call modules\games.bat scramble
goto terminal

:dice
call modules\games.bat dice
goto terminal

:coin
call modules\games.bat coin
goto terminal

:memory
call modules\games.bat memory
goto terminal

:choose
call modules\games.bat choose
goto terminal


:: ==========================================
:: VISUAL COMMAND ROUTES
:: ==========================================

:matrix
call modules\visuals.bat matrix
goto terminal

:rainbow
call modules\visuals.bat rainbow
goto terminal

:art
call modules\visuals.bat art
goto terminal

:robot
call modules\visuals.bat robot
goto terminal




:space
cls
color 0B

echo(
echo       ========================================
echo                  SPACE.EXE
echo       ========================================
echo(
echo                    *       .
echo(
echo              .          *
echo(
echo                   .-.
echo                  (   )
echo                   `-'
echo(
echo           *                 .
echo(
echo                  /\
echo                 /  \
echo                /____\
echo                 ^|^|
echo                 ^|^|
echo                  
echo(
echo             MISSION: EXPLORE
echo(
echo       ========================================
echo(
pause
color 0A
goto terminal

:shutdown
cls
color 0D
echo.
echo       ==========================================
echo.
echo             THANK YOU FOR EXPLORING
echo.
echo                    CMD.exe
echo.
echo       ==========================================
echo.
timeout /t 2 /nobreak >nul
exit /b
