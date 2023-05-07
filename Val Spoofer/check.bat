@echo off
title Serial Checker
mode con: cols=180 lines=62
color e
echo.
echo Serial Number Checker
echo.
color e
echo [90mDisk
echo [90m========================[95m
wmic diskdrive get serialnumber
echo [90mMotherboard
echo [90m========================[95m
wmic baseboard get serialnumber
echo [90mSMBios
echo [90m========================[95m
wmic path win32_computersystemproduct get uuid
echo [90mGPU 
echo [90m========================[95m
wmic PATH Win32_VideoController GET Description,PNPDeviceID
echo [90mRAM
echo [90m========================[95m
wmic memorychip get serialnumber
echo [90mBios
echo [90m========================[95m
wmic csproduct get uuid
echo [90mCPU
echo [90m========================[95m
wmic cpu get processorid
pause