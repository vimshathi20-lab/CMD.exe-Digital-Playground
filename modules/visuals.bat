
@echo off
setlocal EnableExtensions EnableDelayedExpansion

title CMD.exe - Visual Playground

if /i "%~1"=="matrix" call :matrix
if /i "%~1"=="rainbow" call :rainbow
if /i "%~1"=="art" call :art
if /i "%~1"=="robot" call :robot
if /i "%~1"=="space" call :space

if not "%~1"=="" goto finish
echo Unknown visual command: %~1
goto finish


:matrix
cls
color 0A
echo.
echo          ==============================
echo                 DIGITAL RAIN
echo          ==============================
echo.
for /l %%i in (1,1,15) do (
    set /a n=!random! %% 99999
    echo          !random! 01010 !n! 10101
    timeout /t 1 /nobreak >nul
)
exit /b


:rainbow
cls
echo.
echo              RAINBOW MODE
echo.
color 0C
echo              RED ENERGY
timeout /t 1 /nobreak >nul
color 0E
echo              YELLOW SPARK
timeout /t 1 /nobreak >nul
color 0A
echo              GREEN SIGNAL
timeout /t 1 /nobreak >nul
color 0B
echo              CYAN FLOW
timeout /t 1 /nobreak >nul
color 0D
echo              PURPLE WAVE
timeout /t 1 /nobreak >nul
color 0F
echo              WHITE LIGHT
exit /b


:art
cls
color 0D
echo.
echo          ==============================
echo              ASCII ART GALLERY
echo          ==============================
echo.
echo                 /\_/\
echo                ( o.o )
echo                 ^> ^<
echo.
echo                   CAT.EXE
echo.
echo              .-===========-.
echo              +   HACK MODE +
echo              +-------------+
echo.
exit /b


:robot
cls
color 0B
echo ROBOT.EXE INITIALIZING...
timeout /t 1 /nobreak >nul

for /l %%i in (1,1,3) do (
    cls
    echo.
    echo               [ O   O ]
    echo               [   ^_^   ]
    echo                /-----\
    echo               /       \
    echo.
    echo               ROBOT ONLINE
    timeout /t 1 /nobreak >nul

    cls
    echo.
    echo               [ -   - ]
    echo               [   o   ]
    echo                /-----\
    echo               /       \
    echo.
    echo             SCANNING...
    timeout /t 1 /nobreak >nul
)
exit /b


:space
cls
color 0B
echo.
echo          ==============================
echo                 SPACE.EXE
echo          ==============================
echo.
echo                    *       .
echo.
echo              .          *
echo.
echo                   .-.
echo                  (   )
echo                   `-'
echo.
echo           *                 .
echo.
echo                  /\
echo                 /  \
echo                /____\
echo                  ||
echo                  ||
echo.
echo              MISSION: EXPLORE
echo.
echo          ==============================
echo.
timeout /t 2 /nobreak >nul
exit /b


:finish
echo.
echo          ==============================
echo          VISUAL EXPERIENCE COMPLETE
echo          ==============================
echo.
color 0A
endlocal
exit /b
