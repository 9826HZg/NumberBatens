@echo off
title 9826URL�ļ�������
if exist "%appdata%\9826\color.bat" (call "%appdata%\9826\color.bat") else (color 0e)
set /p out=�������Ŀ¼���س� 
set /p url=����URL���س� 
set /p name=�����ļ������س�
echo [InternetShortcut]>%out%\%name%.url
echo URL=%url%>>%out%\%name%.url
echo ��������
set /p a=�����Ŀ���ļ��У�����1�س�����������2�س�
if "%a%"=="1" explorer %out%
