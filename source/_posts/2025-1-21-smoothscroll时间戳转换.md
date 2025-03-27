---
title: smoothscroll时间戳转换
date: 2025-01-21T14:13:00
author: lele
tags:
  - code
mathjax: true
excerpt: 延期smoothsroll
password: tongzhuo-code
---
新建txt文件，粘贴以下内容，更改后缀名为bat，双击运行
```shell
@echo off
set "$=%temp%\Spring"
>%$% Echo WScript.Echo((new Date()).getTime()/1000)
for /f %%a in ('cscript -nologo -e:jscript %$%') do set timestamp=%%a
del /f /q %$%
echo %timestamp%
 
reg add "HKEY_CURRENT_USER\Software\SmoothScroll" /v "kSSInstallDate" /d "%timestamp:~0,10%" /f
```