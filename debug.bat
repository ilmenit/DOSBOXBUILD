@echo off
mkdir logs 2>nul
setlocal EnableDelayedExpansion

:: Execute NASM and check for errors
nasm\nasm main.asm -fbin -o main.com > logs\nasm_output.txt 2>&1
findstr /c:"error:" logs\nasm_output.txt
if !errorlevel! == 0 (
    rem echo Error detected in NASM output.
) else (
    del logs\nasm_output.txt >nul
	
	:: Terminate DOSBOX if running
	taskkill /IM dosbox-x.exe /F >nul 2>&1

	:: Replace main.com in the input folder with the one that was just created
	copy /Y main.com dosbox-x\drivez\main.com >nul 

	:: Start DosBox
	cd dosbox-x
	start dosbox-x.exe -fastlaunch -c "td.exe main.com"
	cd ..
)
