@echo off

color f2
MODE con: COLS=75 LINES=25
cls

Setlocal enabledelayedexpansion
Title oracle_mysql���� !date:~5,2!��!date:~8,2!�� !time:~0,2!ʱ!time:~3,2!��!time:~6,2!��

%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit


echo.
echo.---oracle_mysql����bat-------------
echo.
echo.  1.����oracle 11g����
echo.  2.�ر�oracle 11g����
echo.  3.��oracle 11g��������Ϊ�ֶ�����
echo.  4.����mysql5.0����
echo.  5.����mysql5.6����
echo.  6.�ر�mysql5.0����
echo.  7.�ر�mysql5.6����
echo.  8.��mysql5.0��������Ϊ�ֶ�����
echo.  9.��mysql5.6��������Ϊ�ֶ�����
echo.
echo.------------------------------------
echo.��ѡ���Ӧ����Ŀ ��enter��ȷ��:
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