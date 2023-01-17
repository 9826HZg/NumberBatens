:START
SETLOCAL ENABLEDELAYEDEXPANSION
IF /I "%1"=="/D" GOTO SCAN
FOR /D %%A IN (*) DO CALL %0 /D "%%A"
GOTO END
:SCAN
set c=0
FOR /F "delims=" %%B IN (%2) DO SET D=%%~B
FOR /R "%CD%\%D%" %%C IN (*.jpg *.png) DO SET /A C+=1
if /i %C% LEQ 1 (GOTO S1) ELSE GOTO END
:S1
MOVE "%CD%\%D%\*.JPG" "%CD%\%D%.JPG"
MOVE "%CD%\%D%\*.PNG" "%CD%\%D%.PNG"
RD "%D%"
GOTO END
:END
rem PAUSE>NUL
