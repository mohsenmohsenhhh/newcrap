@echo off
:: Hide Command Prompt Window
mode con: cols=10 lines=1
title System Update

:: Download the "GOTCHA" image
curl -o "%temp%\gotcha.jpg" "https://github.com/mohsenmohsenhhh/newcrap/blob/main/gotcha.png"

:: Set the image as the desktop wallpaper
reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%temp%\gotcha.jpg" /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters

:: Close CMD
exit
