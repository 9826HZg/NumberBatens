@echo off
title 9826URL文件生成器
if exist "%appdata%\9826\color.bat" (call "%appdata%\9826\color.bat") else (color 0e)
set /p out=输入输出目录并回车 
set /p url=输入URL并回车 
set /p name=输入文件名并回车
echo [InternetShortcut]>%out%\%name%.url
echo URL=%url%>>%out%\%name%.url
echo 生成终了
set /p a=如需打开目标文件夹，输入1回车，否则输入2回车
if "%a%"=="1" explorer %out%
