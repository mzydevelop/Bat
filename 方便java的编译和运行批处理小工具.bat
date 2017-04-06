@echo off
set mark0=%1
if defined mark0 goto runjava1
set /p mark1=拖入文件
set "str1=%mark1:~-5%"
set "str2=%mark1:~-6%"
if "%str1%"==".java" (javac %mark1%)
if "%str2%"==".class" (call :getname %mark1%)
pause>nul
exit
:runjava1
javac %1
java %~n1
pause>nul
exit
:getname
java %~n1


::方便java的编译和运行批处理小工具
::有两种使用办法
::1>直接将.java文件拖到次批处理文件上面(不双击打开批处理)
::  这样将直接编译.java文件并且运行编译出来的.class文件
::2>双击打开批处理，这时有显示"拖入文件"四字
::  这时如果将.java文件拖入此窗口。将会仅进行编译。不会运行编译出来的.class文件
::    如果将.class文件拖入此窗口。将会运行此.class文件
::请在之前务必配置好java环境,确保java和javac命令有效。
