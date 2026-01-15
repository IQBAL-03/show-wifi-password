@echo off
title Lihat Sandi WiFi Tersimpan

echo ==================================================
echo  Alat untuk Melihat Sandi WiFi yang Tersimpan
echo ==================================================
echo.
echo Daftar profil WiFi yang tersimpan di komputer ini:
echo.


netsh wlan show profiles

echo.
echo ==================================================
echo.


set /p wifi_name="Ketik nama WiFi yang ingin Anda lihat sandinya, lalu tekan Enter: "

echo.
echo Mencari sandi untuk "%wifi_name%"...
echo.


netsh wlan show profile name="%wifi_name%" key=clear | findstr "Key Content"

echo.
echo ==================================================
echo Selesai. Tekan tombol apa saja untuk keluar.
pause > nul