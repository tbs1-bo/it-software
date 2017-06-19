@echo off

REM Setup script for a default software for ITAs on a windows machine.
REM This script must be run as administrator!

REM Install chocolately.org
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

REM Tools
choco install cygwin cyg-get geany git putty python3 winscp win32diskimager -y
cyg-get mc wget
REM alternative: choco install mc wget --source cygwin

REM upgrade pip (from python)
python -m pip install --upgrade pip

REM install eapi for the eamodule
pip install eapi

REM Applications
choco install 7zip foxitreader libreoffice notepadplusplus tightvnc wireshark -y

REM Install scapy via pip - needs Pcap (via wireshark)
pip install scapy-python3

wget https://www.apachefriends.org/xampp-files/5.6.30/xampp-win32-5.6.30-1-VC11-installer.exe
start /wait xampp-win32-5.6.30-1-VC11-installer.exe
del xampp-win32-5.6.15-1-VC11-installer.exe

pause
