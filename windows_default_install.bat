@echo off

REM Setup script for a default software stack for ITAs on a windows machine.
REM This script must be run as administrator!
REM It installs chocolately first and uses it afterwards to install different
REM sofware packages.

REM Install chocolately.org
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin

REM Tools (look into README.md for more information)
choco install 7zip cygwin geany git putty python3 winscp win32diskimager -y

REM install eapi for the eamodule
pip install eapi

REM Applications (look into README.md for more information)
choco install eagle foxitreader fritzing libreoffice notepadplusplus tightvnc virtualbox wireshark thunderbird firefox mobaxterm vlc keepassxc vscodium -y

REM Install scapy via pip - needs Pcap (via wireshark)
pip install scapy-python3

REM Installing XAMPP
choco install wget -y
wget https://www.apachefriends.org/xampp-files/5.6.30/xampp-win32-5.6.30-1-VC11-installer.exe
start /wait xampp-win32-5.6.30-1-VC11-installer.exe
del xampp-win32-5.6.15-1-VC11-installer.exe


pause
