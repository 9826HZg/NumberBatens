@ECHO OFF
CLS
REM V0.1.1.4
TITLE 9826高亮选框颜色修改器
MODE CON COLS=70 LINES=20
IF EXIST "%APPDATA%\9826\COLOR.BAT" (CALL "%APPDATA%\9826\COLOR.BAT") ELSE COLOR 2F
:1
CLS
ECHO 欢迎使用9826高亮选框颜色修改器
ECHO 本程序修改超链接和选框颜色
ECHO 如需了解原理，请自行用记事本打开
ECHO 只对当前用户有效且注销后才能生效
ECHO.
ECHO.
ECHO.
ECHO 选择你想要的颜色
ECHO [1]默认（蓝） [2]绿 [3]紫 [4]蓝绿 [5]自定义RGB
SET /P A=请输入你的选择并按Enter：
IF /I "%A%"=="Samsung" GOTO T
IF /I "%A%"=="Anycall" GOTO T
IF "%A%"=="1" GOTO 2
IF "%A%"=="2" GOTO 2
IF "%A%"=="3" GOTO 2
IF "%A%"=="4" GOTO 2
IF "%A%"=="5" GOTO 3
ECHO 你的输入不正确
ECHO 请再次尝试……
ECHO.&PAUSE
GOTO 1
:T
ECHO.
SET /P "P=#*"
FOR %%I IN (2474 3940 3941 7983 7986 2255 9795 3877 3683) DO IF "%P%"=="%I" (GOTO S1) ELSE (REM Dummy)
ECHO.
PAUSE
CLS
GOTO S
:S1 
CLS
IF %P%==3683 ECHO Trigger EOTD
ECHO.ECHO.
IF %P%==3683 ECHO CMD: Set
IF %P%==3683 ECHO EOTDFTR
IF %P%==3683 ECHO in cihard.opt
ECHO.
PAUSE>NUL
GOTO 1
:2
IF %A%==1 SET C1=0 102 204
IF %A%==1 SET C2=51 153 255
IF %A%==2 SET C1=0 204 102
IF %A%==2 SET C2=0 128 0
IF %A%==3 SET C1=192 0 192
IF %A%==3 SET C2=128 0 128
IF %A%==4 SET C1=0 204 204
IF %A%==4 SET C2=0 128 128

GOTO 4
:3
CLS
ECHO 如果使用Windows Vista/7，则可以用控制面板修改颜色。
ECHO 请先按Ctrl+C，退出本程序，
ECHO 然后依次单击[开始]，控制面板，外观和个性化，个性化，外观和颜色，
ECHO 访问传统风格的外观属性以获取更多选项...（高级外观设置）
ECHO 然后更改“已选定的项目”（边框）和“超链接”（填充部分）的颜色。
ECHO.
ECHO.
ECHO.
ECHO 如使用Windows 8及以上系统，请按任意键，然后输入色号。
ECHO 请输入超链接、桌面半透明选框非边框部分的色号，例如：0 204 204
ECHO 不检测值的有效性，初级用户勿用
SET /P C1=
ECHO.
ECHO.
ECHO 请输入文字高亮的色号，例如：0 128 128
ECHO 不检测值的有效性，初级用户勿用
SET /P C2=
GOTO 4
:4
> "%Temp%.\HLC.reg" ECHO Windows Registry Editor Version 5.00
>>"%Temp%.\HLC.reg" ECHO.
>>"%Temp%.\HLC.reg" ECHO [HKEY_CURRENT_USER\Control Panel\Colors]
>>"%Temp%.\HLC.reg" ECHO "HotTrackingColor"="%C1%"
>>"%Temp%.\HLC.reg" ECHO "Hilight"="%C2%"
>>"%Temp%.\HLC.reg" ECHO.
>>"%Temp%.\HLC.reg" ECHO.
IF %A%==5 (START /WAIT REGEDIT "%Temp%.\HLC.reg") ELSE START /WAIT REGEDIT /S "%Temp%.\HLC.reg"
DEL "%Temp%.\HLC.reg"
ECHO.
ECHO.
ECHO DONE!
PAUSE>NUL
:END