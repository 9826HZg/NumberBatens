@ECHO OFF
CLS
REM V0.1.1.4
TITLE 9826����ѡ����ɫ�޸���
MODE CON COLS=70 LINES=20
IF EXIST "%APPDATA%\9826\COLOR.BAT" (CALL "%APPDATA%\9826\COLOR.BAT") ELSE COLOR 2F
:1
CLS
ECHO ��ӭʹ��9826����ѡ����ɫ�޸���
ECHO �������޸ĳ����Ӻ�ѡ����ɫ
ECHO �����˽�ԭ���������ü��±���
ECHO ֻ�Ե�ǰ�û���Ч��ע���������Ч
ECHO.
ECHO.
ECHO.
ECHO ѡ������Ҫ����ɫ
ECHO [1]Ĭ�ϣ����� [2]�� [3]�� [4]���� [5]�Զ���RGB
SET /P A=���������ѡ�񲢰�Enter��
IF /I "%A%"=="Samsung" GOTO T
IF /I "%A%"=="Anycall" GOTO T
IF "%A%"=="1" GOTO 2
IF "%A%"=="2" GOTO 2
IF "%A%"=="3" GOTO 2
IF "%A%"=="4" GOTO 2
IF "%A%"=="5" GOTO 3
ECHO ������벻��ȷ
ECHO ���ٴγ��ԡ���
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
ECHO ���ʹ��Windows Vista/7��������ÿ�������޸���ɫ��
ECHO ���Ȱ�Ctrl+C���˳�������
ECHO Ȼ�����ε���[��ʼ]��������壬��ۺ͸��Ի������Ի�����ۺ���ɫ��
ECHO ���ʴ�ͳ������������Ի�ȡ����ѡ��...���߼�������ã�
ECHO Ȼ����ġ���ѡ������Ŀ�����߿򣩺͡������ӡ�����䲿�֣�����ɫ��
ECHO.
ECHO.
ECHO.
ECHO ��ʹ��Windows 8������ϵͳ���밴�������Ȼ������ɫ�š�
ECHO �����볬���ӡ������͸��ѡ��Ǳ߿򲿷ֵ�ɫ�ţ����磺0 204 204
ECHO �����ֵ����Ч�ԣ������û�����
SET /P C1=
ECHO.
ECHO.
ECHO ���������ָ�����ɫ�ţ����磺0 128 128
ECHO �����ֵ����Ч�ԣ������û�����
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