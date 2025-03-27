@echo off
cd /d D:\Users\tongz\Documents\GitHub\blog
:: ������ԱȨ��
fltmc >nul 2>&1 || (
    echo �����������ԱȨ��...
    powershell -Command "Start-Process cmd -ArgumentList '/c \"%~f0\"' -Verb RunAs"
    exit /b
)

:menu
cls
echo.
echo ��ѡ��Ҫִ�еĲ�����
echo.
echo  [1] hexo clean
echo  [2] hexo generate 
echo  [3] hexo server
echo  [4] hexo deploy
echo  [5] npm run server
echo  [6] npm run deploy
echo.
echo  [0] �˳�
echo.

choice /c 0123456 /n 
set /a choice=%errorlevel%-1

if %choice% == 0 exit /b 0

:: ��ӱ�������߼�
set "cmd="

:: ʹ���ӳٱ�����չ
setlocal enabledelayedexpansion
set "commands[1]=hexo clean"
set "commands[2]=hexo generate" 
set "commands[3]=hexo server"
set "commands[4]=hexo deploy"
set "commands[5]=npm run server"
set "commands[6]=npm run deploy"

:: ���������ȡ��ʽ
if %choice% geq 1 (
    set cmd=!commands[%choice%]!
    start cmd /c "!cmd! && pause"
)
endlocal

goto menu