@echo off
set mark0=%1
if defined mark0 goto runjava1
set /p mark1=�����ļ�
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


::����java�ı��������������С����
::������ʹ�ð취
::1>ֱ�ӽ�.java�ļ��ϵ����������ļ�����(��˫����������)
::  ������ֱ�ӱ���.java�ļ��������б��������.class�ļ�
::2>˫������������ʱ����ʾ"�����ļ�"����
::  ��ʱ�����.java�ļ�����˴��ڡ���������б��롣�������б��������.class�ļ�
::    �����.class�ļ�����˴��ڡ��������д�.class�ļ�
::����֮ǰ������ú�java����,ȷ��java��javac������Ч��
