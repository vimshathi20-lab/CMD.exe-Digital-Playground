
@echo off
setlocal EnableExtensions EnableDelayedExpansion

:: ==========================================
:: CMD.exe - GAMES MODULE
:: VERSION 1.1
:: ==========================================

if /i "%~1"=="joke" goto joke
if /i "%~1"=="quote" goto quote
if /i "%~1"=="mood" goto mood
if /i "%~1"=="fortune" goto fortune
if /i "%~1"=="guess" goto guess
if /i "%~1"=="riddle" goto riddle
if /i "%~1"=="rps" goto rps
if /i "%~1"=="quiz" goto quiz
if /i "%~1"=="scramble" goto scramble
if /i "%~1"=="dice" goto dice
if /i "%~1"=="coin" goto coin
if /i "%~1"=="memory" goto memory
if /i "%~1"=="choose" goto choose

echo Unknown game command.
goto return


:: ==========================================
:: JOKE
:: ==========================================

:joke
cls
color 0E
set /a n=!random! %% 5
echo.
echo             JOKE MACHINE
echo.
if "!n!"=="0" echo Why do programmers prefer dark mode?
if "!n!"=="0" echo Because light attracts bugs.
if "!n!"=="1" echo Why was the computer cold?
if "!n!"=="1" echo It left its Windows open.
if "!n!"=="2" echo What is a computer's favorite snack?
if "!n!"=="2" echo Microchips.
if "!n!"=="3" echo Why did the developer go broke?
if "!n!"=="3" echo Because they used up all their cache.
if "!n!"=="4" echo Why was the keyboard tired?
if "!n!"=="4" echo It had too many shifts.
goto return


:: ==========================================
:: QUOTE
:: ==========================================

:quote
cls
color 0B
set /a n=!random! %% 5
echo.
echo             QUOTE GENERATOR
echo.
if "!n!"=="0" echo Small steps create big changes.
if "!n!"=="1" echo Your ideas deserve to exist.
if "!n!"=="2" echo Keep building. Keep learning.
if "!n!"=="3" echo Creativity has no limits.
if "!n!"=="4" echo One day or day one. You decide.
goto return


:: ==========================================
:: MOOD
:: ==========================================

:mood
cls
color 0D
set /a n=!random! %% 5
echo.
echo             MOOD DETECTOR
echo.
if "!n!"=="0" echo HAPPY VIBES
if "!n!"=="1" echo CURIOUS MODE
if "!n!"=="2" echo CREATIVE ENERGY
if "!n!"=="3" echo CHAOTIC ENERGY
if "!n!"=="4" echo CHILL MODE
goto return


:: ==========================================
:: FORTUNE
:: ==========================================

:fortune
cls
color 0D
set /a n=!random! %% 5
echo.
echo             FORTUNE MACHINE
echo.
if "!n!"=="0" echo A new opportunity is waiting for you.
if "!n!"=="1" echo Your next idea might surprise you.
if "!n!"=="2" echo Today is perfect for learning.
if "!n!"=="3" echo A little creativity goes a long way.
if "!n!"=="4" echo Your curiosity will lead somewhere interesting.
goto return


:: ==========================================
:: NUMBER GUESSING GAME
:: ==========================================

:guess
cls
color 0A
set /a secret=!random! %% 10 + 1
set /a attempts=0
echo.
echo             NUMBER CHALLENGE
echo Guess a number between 1 and 10.
echo.

:guessloop
set "answer="
set /p "answer=Your guess: "
if "!answer!"=="1" goto guessvalid
if "!answer!"=="2" goto guessvalid
if "!answer!"=="3" goto guessvalid
if "!answer!"=="4" goto guessvalid
if "!answer!"=="5" goto guessvalid
if "!answer!"=="6" goto guessvalid
if "!answer!"=="7" goto guessvalid
if "!answer!"=="8" goto guessvalid
if "!answer!"=="9" goto guessvalid
if "!answer!"=="10" goto guessvalid
echo Invalid input. Enter 1 to 10.
goto guessloop

:guessvalid
set /a attempts+=1
if !answer! EQU !secret! goto guesswinner
if !answer! LSS !secret! echo Too low. Try again.
if !answer! GTR !secret! echo Too high. Try again.
goto guessloop

:guesswinner
echo.
echo YOU WON!
echo Attempts: !attempts!
goto return


:: ==========================================
:: RIDDLE
:: ==========================================

:riddle
cls
color 0B
echo.
echo             RIDDLE ZONE
echo.
echo What has keys but cannot open locks?
echo.
set "answer="
set /p "answer=Your answer: "
if /i "!answer!"=="keyboard" goto riddlecorrect
echo.
echo Nice try. The answer was KEYBOARD.
goto return

:riddlecorrect
echo.
echo CORRECT. YOU CRACKED IT.
goto return


:: ==========================================
:: ROCK PAPER SCISSORS
:: ==========================================

:rps
cls
color 0D
echo.
echo          ROCK PAPER SCISSORS
echo.
echo          1. Rock
echo          2. Paper
echo          3. Scissors
echo          0. Back
echo.

:rpsinput
set "player="
set /p "player=Your choice: "
if "!player!"=="0" goto return
if "!player!"=="1" goto rpsvalid
if "!player!"=="2" goto rpsvalid
if "!player!"=="3" goto rpsvalid
echo Invalid choice.
goto rpsinput

:rpsvalid
set /a computer=!random! %% 3 + 1
if "!player!"=="1" set "playerChoice=Rock"
if "!player!"=="2" set "playerChoice=Paper"
if "!player!"=="3" set "playerChoice=Scissors"
if "!computer!"=="1" set "computerChoice=Rock"
if "!computer!"=="2" set "computerChoice=Paper"
if "!computer!"=="3" set "computerChoice=Scissors"

echo.
echo You chose: !playerChoice!
echo Computer chose: !computerChoice!
echo.

if "!player!"=="!computer!" goto rpsdraw
if "!player!!computer!"=="13" goto rpswin
if "!player!!computer!"=="21" goto rpswin
if "!player!!computer!"=="32" goto rpswin
echo COMPUTER WINS!
goto return

:rpsdraw
echo IT IS A DRAW.
goto return

:rpswin
echo YOU WIN!
goto return


:: ==========================================
:: TECH QUIZ
:: ==========================================

:quiz
cls
color 0B
set /a score=0
echo.
echo             TECH QUIZ MASTER
echo.
echo Q1. Which language runs directly in a browser?
echo 1. Java
echo 2. JavaScript
echo 3. C++
set "answer="
set /p "answer=Your answer: "
if "!answer!"=="2" (
    echo Correct!
    set /a score+=10
) else (
    echo Incorrect. Answer: JavaScript.
)

echo.
echo Q2. Which language is commonly used for Android development?
echo 1. Kotlin
echo 2. HTML
echo 3. CSS
set "answer="
set /p "answer=Your answer: "
if "!answer!"=="1" (
    echo Correct!
    set /a score+=10
) else (
    echo Incorrect. Answer: Kotlin.
)

echo.
echo Q3. What does CPU stand for?
echo 1. Computer Personal Unit
echo 2. Central Processing Unit
echo 3. Control Program Utility
set "answer="
set /p "answer=Your answer: "
if "!answer!"=="2" (
    echo Correct!
    set /a score+=10
) else (
    echo Incorrect. Answer: Central Processing Unit.
)

echo.
echo ========================================
echo              QUIZ RESULTS
echo ========================================
echo Your score: !score! / 30
if !score! EQU 30 echo Excellent performance!
if !score! EQU 20 echo Great work!
if !score! EQU 10 echo Keep practising!
if !score! EQU 0 echo Try again!
goto return


:: ==========================================
:: WORD SCRAMBLE
:: ==========================================

:scramble
cls
color 0E
set /a n=!random! %% 3
echo.
echo             WORD SCRAMBLE
echo Unscramble the technology word.
echo.
if "!n!"=="0" (
    echo H T P Y O N
    set "correct=python"
)
if "!n!"=="1" (
    echo A V J A
    set "correct=java"
)
if "!n!"=="2" (
    echo T C M D
    set "correct=cmd"
)
echo.
set "answer="
set /p "answer=Your answer: "
if /i "!answer!"=="!correct!" goto scramblecorrect
echo Incorrect. Answer: !correct!
goto return

:scramblecorrect
echo CORRECT. WORD CRACKED.
goto return


:: ==========================================
:: DICE ROLLER
:: ==========================================

:dice
cls
color 0E
echo.
echo             DICE ROLLER
echo.
set /a roll=!random! %% 6 + 1
echo       +-----------+
echo       ^|           ^|
echo       ^|     !roll!     ^|
echo       ^|           ^|
echo       +-----------+
echo.
echo You rolled a !roll!
goto return


:: ==========================================
:: COIN FLIP
:: ==========================================

:coin
cls
color 0B
echo.
echo             COIN FLIP
echo.
echo Flipping coin...
timeout /t 1 /nobreak >nul
set /a n=!random! %% 2
if "!n!"=="0" echo       +---------------+
if "!n!"=="0" echo       ^|    HEADS      ^|
if "!n!"=="0" echo       +---------------+
if "!n!"=="1" echo       +---------------+
if "!n!"=="1" echo       ^|    TAILS      ^|
if "!n!"=="1" echo       +---------------+
goto return


:: ==========================================
:: MEMORY CHALLENGE
:: ==========================================

:memory
cls
color 0D
set /a a=!random! %% 9 + 1
set /a b=!random! %% 9 + 1
set /a c=!random! %% 9 + 1
set /a d=!random! %% 9 + 1
set "sequence=!a!!b!!c!!d!"

echo.
echo          MEMORY CHALLENGE
echo.
echo Remember this 4-digit sequence!
echo.
echo              !sequence!
timeout /t 3 /nobreak >nul
cls
echo.
echo Sequence hidden!
echo Type the sequence you remember.
echo.
set "answer="
set /p "answer=Your answer: "
if "!answer!"=="!sequence!" goto memorywin
echo.
echo Not quite!
echo Correct sequence: !sequence!
goto return

:memorywin
echo.
echo AMAZING MEMORY! YOU WON!
goto return


:: ==========================================
:: RANDOM DECISION MAKER
:: ==========================================

:choose
cls
color 0A
echo.
echo          RANDOM DECISION MAKER
echo.
echo Enter three options.
echo.
set "one="
set "two="
set "three="
set /p "one=Option 1: "
set /p "two=Option 2: "
set /p "three=Option 3: "

if not defined one goto chooseinvalid
if not defined two goto chooseinvalid
if not defined three goto chooseinvalid

set /a pick=!random! %% 3 + 1
echo.
echo ========================================
echo          CMD.exe HAS CHOSEN
echo ========================================
if "!pick!"=="1" echo !one!
if "!pick!"=="2" echo !two!
if "!pick!"=="3" echo !three!
goto return

:chooseinvalid
echo Please enter all three options.
goto return


:: ==========================================
:: RETURN TO MAIN TERMINAL
:: ==========================================

:return
echo.
echo ========================================
echo Returning to CMD.exe terminal...
echo ========================================
echo.
color 0A
endlocal
exit /b
