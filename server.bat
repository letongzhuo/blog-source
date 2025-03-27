@echo off
cd /d D:\Users\tongz\Documents\GitHub\blog
:: 检查管理员权限
fltmc >nul 2>&1 || (
    echo 正在请求管理员权限...
    powershell -Command "Start-Process cmd -ArgumentList '/c \"%~f0\"' -Verb RunAs"
    exit /b
)

:menu
cls
echo.
echo 请选择要执行的操作：
echo.
echo  [1] hexo clean
echo  [2] hexo generate 
echo  [3] hexo server
echo  [4] hexo deploy
echo  [5] npm run server
echo  [6] npm run deploy
echo.
echo  [0] 退出
echo.

choice /c 0123456 /n 
set /a choice=%errorlevel%-1

if %choice% == 0 exit /b 0

:: 添加变量清除逻辑
set "cmd="

:: 使用延迟变量扩展
setlocal enabledelayedexpansion
set "commands[1]=hexo clean"
set "commands[2]=hexo generate" 
set "commands[3]=hexo server"
set "commands[4]=hexo deploy"
set "commands[5]=npm run server"
set "commands[6]=npm run deploy"

:: 修正命令获取方式
if %choice% geq 1 (
    set cmd=!commands[%choice%]!
    start cmd /c "!cmd! && pause"
)
endlocal

goto menu