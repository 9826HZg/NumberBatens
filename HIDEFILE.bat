@echo off
:color
if exist "%appdata%\9826" goto color1
md "%appdata%\9826"
:color1
C:
cd "%appdata%\9826"
if exist color.bat call color.bat&goto welcome
title 9826��ɫѡ����
cls
echo ѡ����Ҫ����ɫ
echo [1]�ۺ� [2]��ɫ [3]���� [4]���� [5]���� [6]����
echo [7]�ڰ� [8]��ɫ [9]�Һ� [a]��� [b]��ɫ
set /p co=ѡ��
if "%co%"=="1" color d0&echo color df>>color.bat
if "%co%"=="2" color 0e&echo color 0e>>color.bat
if "%co%"=="3" color 0a&echo color 0a>>color.bat
if "%co%"=="4" color 0d&echo color 0d>>color.bat
if "%co%"=="5" color 0b&echo color 0b>>color.bat
if "%co%"=="6" color 1f&echo color 1f>>color.bat
if "%co%"=="7" color 0f&echo color 0f>>color.bat
if "%co%"=="8" color 2f&echo color 2f>>color.bat
if "%co%"=="9" color 70&echo color 70>>color.bat
if /i "%co%"=="a" color 6f&echo color 6f>>color.bat
if /i "%co%"=="b" color 5f&echo color 5f>>color.bat
cls
goto color
:welcome
if "%1"=="/?" goto help
if "%1"=="/english" set lang=e
title 9826�ļ����ػ� v2.2.9 ���԰�
echo ��ӭʹ��9826�ļ����ػ�
echo ������ԭ���ǰѻ���վ�����һ����
echo �����ļ��󣬲�Ҫ��ջ���վ�������ɾ�����ص��ļ���
pause
:welcome1
cls
echo ѡ��ģʽ
echo [1]װ�� [2]ж�� [3]�鿴װ���б� [4]����ɫ
set /P m=����ѡ��
if "%m%"=="1" goto setup
if "%m%"=="2" goto delete
if "%m%"=="3" goto look
if "%m%"=="4" del color.bat&goto color
goto welcome1
:setup
:inputpf
cls
echo �̷�ֻ����ĸ��û��ð��
SEt /p pf=  ���ļ��������ĸ��̵Ļ���վ�(������U��)
IF EXIST %pf%:NUL GOTO inputec
cls
echo �Բ���%pf%�����ڡ�
pause
goto inputpf
:inputec
cls
set /p ec=  ���������̵��̷�
if /i "%ec%"=="a" goto setup1
if /i "%ec%"=="b" goto setup1
if /i "%ec%"=="c" goto setup1
if /i "%ec%"=="d" goto setup1
if /i "%ec%"=="e" goto setup1
if /i "%ec%"=="f" goto setup1
if /i "%ec%"=="g" goto setup1
if /i "%ec%"=="h" goto setup1
if /i "%ec%"=="i" goto setup1
if /i "%ec%"=="j" goto setup1
if /i "%ec%"=="k" goto setup1
if /i "%ec%"=="l" goto setup1
if /i "%ec%"=="m" goto setup1
if /i "%ec%"=="n" goto setup1
if /i "%ec%"=="o" goto setup1
if /i "%ec%"=="p" goto setup1
if /i "%ec%"=="q" goto setup1
if /i "%ec%"=="r" goto setup1
if /i "%ec%"=="s" goto setup1
if /i "%ec%"=="t" goto setup1
if /i "%ec%"=="u" goto setup1
if /i "%ec%"=="v" goto setup1
if /i "%ec%"=="w" goto setup1
if /i "%ec%"=="x" goto setup1
if /i "%ec%"=="y" goto setup1
if /i "%ec%"=="z" goto setup1
echo �̷���Ч��
pause
cls
goto inputec
:DELETE
cls
set /p ec=����ж�ص��̷�
SUBST /D %ec%:
cls
echo ж�سɹ�
pause
exit
:setup1
if exist %pf%:\RECYCLER goto setup2
if exist %pf%:\$RECYCLE.bin goto setup2
cls
echo ��ѡ���̷���û�л���վ
pause
cls
goto setup
:setup2
cls
echo ���Ժ򡭡�
if exist %pf%:\RECYCLER SUBST %ec%: %pf%:\RECYCLER
if exist %pf%:\$RECYCLE.bin SUBST %ec%: %pf%:\$RECYCLE.bin
cls
echo OK!
pause
explorer %ec%:
goto end
:look
echo ��ߵ��������̷����ұߵ���װ���������̵��̷���
subst
echo.
pause
cls
goto welcome1
:help
:: echo If you use "/english",the language will be English.
echo If you want to hide your files in your udisk,please go to
echo 9826HZG.YS168.COM,then choice "�������"��use HIDEFIL2.BAT��
:end