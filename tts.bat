@echo off
:: this is a text to speech program write by batch language
mode con: COLS=60 LINES=25
:up
title Text To speech
cls
color 09
echo             _______________________________
echo             \__    ___/\__    ___/   _____/
echo               ^|    ^|     ^|    ^|  \_____  \ 
echo               ^|    ^|     ^|    ^|  /        \
echo               ^|____^|     ^|____^| /_______  /
echo                                         \/ 
echo.
set /p="(*.*) hello "<nul
hostname
echo. & echo.
echo Typing the text to convert into speech :
echo. & echo.
set /p txt=
echo %date% %time% : %txt%>>%temp%\tts_history.txt
:main
set tts=%random%
if exist %temp%\%tts%.vbs goto main
echo '>%temp%\%tts%.vbs
echo set speech = Wscript.CreateObject("SAPI.spVoice")>>%temp%\%tts%.vbs
echo speech.speak"%txt%">>%temp%\%tts%.vbs
start %temp%\%tts%.vbs
echo. & echo. & echo. & echo. & pause
del %temp%\%tts%.vbs
goto up
