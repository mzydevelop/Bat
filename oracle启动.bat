@echo off

color f2
MODE con: COLS=75 LINES=25
cls

Setlocal enabledelayedexpansion
Title oracle_mysql启动 !date:~5,2!月!date:~8,2!日 !time:~0,2!时!time:~3,2!分!time:~6,2!秒

%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit


echo.
echo.---oracle_mysql启动bat-------------
echo.
echo.  1.启动oracle 11g服务
echo.  2.关闭oracle 11g服务
echo.  3.将oracle 11g服务设置为手动启动
echo.  4.启动mysql5.0服务
echo.  5.启动mysql5.6服务
echo.  6.关闭mysql5.0服务
echo.  7.关闭mysql5.6服务
echo.  8.将mysql5.0服务设置为手动启动
echo.  9.将mysql5.6服务设置为手动启动
echo.
echo.------------------------------------
echo.请选择对应的项目 按enter键确定:
set /p choice=

if /i "%choice%"=="1" goto mark1
if /i "%choice%"=="2" goto mark2
if /i "%choice%"=="3" goto mark3
if /i "%choice%"=="4" goto mark4
if /i "%choice%"=="5" goto mark5
if /i "%choice%"=="6" goto mark6
if /i "%choice%"=="7" goto mark7
if /i "%choice%"=="8" goto mark8
if /i "%choice%"=="9" goto mark9
exit
:mark1
net start OracleDBConsoleorcl
net start OracleMTSRecoveryService
net start OracleOraDb11g_home1TNSListener
net start OracleServiceORCL
pause>nul
exit
:mark2
net stop OracleDBConsoleorcl
net stop OracleMTSRecoveryService
net stop OracleOraDb11g_home1TNSListener
net stop OracleServiceORCL
pause>nul
exit
:mark3
sc config OracleDBConsoleorcl start= demand
sc config OracleMTSRecoveryService start= demand
sc config OracleOraDb11g_home1TNSListener start= demand
sc config OracleServiceORCL start= demand
pause>nul
exit

:mark4
net start mysql
pause>nul
exit

:mark5
net start mysql56
pause>nul
exit

:mark6
net stop mysql
pause>nul
exit

:mark7
net stop mysql56
pause>nul
exit

:mark8
sc config mysql start= demand
pause>nul
exit

:mark9
sc config mysql56 start= demand
pause>nul
exit