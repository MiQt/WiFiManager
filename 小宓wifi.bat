@ECHO OFF&PUSHD %~DP0 &TITLE С�wifi������
mode con cols=60 lines=20
color 00

:menu
cls
echo.
echo ��ӭʹ��С�wifi
echo ==============================
echo.
echo ����1������wifi
echo.
echo ����2���ر�wifi
echo.
echo ����3���鿴wifi��Ϣ
echo.
echo ==============================
echo.
echo.

set /p user_input=���������֣�
if %user_input% equ 1 goto 1 
if %user_input% equ 2 goto 2 
if %user_input% equ 3 goto 3 

:other
echo.
echo û�н����κβ���
echo.
pause
exit
:1
@echo off
netsh wlan set hostednetwork mode=allow
set /p wifi_name=����wifi���ƣ�
set /p wifi_pass=����wifi���룺
netsh wlan set hostednetwork ssid=%wifi_name% key=%wifi_pass%
netsh wlan start hostednetwork
echo.
echo wifi�Ѿ������ɹ������ƣ�%wifi_name% ���룺%wifi_pass%
echo.
pause
exit
:2
@echo off
netsh wlan stop hostednetwork
echo.
echo wifi�Ѿ��ر�
echo.
pause
exit
:3
@echo off
netsh wlan show hostednetwork
echo.
pause
exit