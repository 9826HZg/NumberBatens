@echo off
:color
if exist "%appdata%\9826" goto color1
md "%appdata%\9826"
:color1
C:
cd "%appdata%\9826"
if exist color.bat call color.bat&goto welcome
title 9826颜色选择器
cls
echo 选择你要的颜色
echo [1]粉红 [2]黄色 [3]亮绿 [4]亮紫 [5]蓝绿 [6]深蓝
echo [7]黑白 [8]绿色 [9]灰黑 [a]深黄 [b]紫色
set /p co=选择：
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
title 9826文件隐藏机 v2.2.9 个性版
echo 欢迎使用9826文件隐藏机
echo 本程序原理是把回收站虚拟成一个盘
echo 隐藏文件后，不要清空回收站，否则会删除隐藏的文件。
pause
:welcome1
cls
echo 选择模式
echo [1]装载 [2]卸载 [3]查看装载列表 [4]换颜色
set /P m=输入选择
if "%m%"=="1" goto setup
if "%m%"=="2" goto delete
if "%m%"=="3" goto look
if "%m%"=="4" del color.bat&goto color
goto welcome1
:setup
:inputpf
cls
echo 盘符只输字母，没有冒号
SEt /p pf=  把文件隐藏在哪个盘的回收站里？(不能是U盘)
IF EXIST %pf%:NUL GOTO inputec
cls
echo 对不起，%pf%不存在。
pause
goto inputpf
:inputec
cls
set /p ec=  输入虚拟盘的盘符
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
echo 盘符无效！
pause
cls
goto inputec
:DELETE
cls
set /p ec=输入卸载的盘符
SUBST /D %ec%:
cls
echo 卸载成功
pause
exit
:setup1
if exist %pf%:\RECYCLER goto setup2
if exist %pf%:\$RECYCLE.bin goto setup2
cls
echo 你选的盘符里没有回收站
pause
cls
goto setup
:setup2
cls
echo 请稍候……
if exist %pf%:\RECYCLER SUBST %ec%: %pf%:\RECYCLER
if exist %pf%:\$RECYCLE.bin SUBST %ec%: %pf%:\$RECYCLE.bin
cls
echo OK!
pause
explorer %ec%:
goto end
:look
echo 左边的是虚拟盘符，右边的是装载着虚拟盘的盘符。
subst
echo.
pause
cls
goto welcome1
:help
:: echo If you use "/english",the language will be English.
echo If you want to hide your files in your udisk,please go to
echo 9826HZG.YS168.COM,then choice "软件下载"，use HIDEFIL2.BAT。
:end