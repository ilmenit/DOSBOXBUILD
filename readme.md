# DOSBOXBUILD environment

The DOSBOXBUILD environment is a time-saver for writing a code in NASM for DOSBox.
It allows *one-click compilation* and debugging, or even *no-click compilation* (with a watcher over file changes).
It's integrated with the DOSBox-X so a correctly compiled *main.asm* file get automatically executed in a DosBox.

![screenshot](https://raw.githubusercontent.com/ilmenit/DOSBOXBUILD//master/dosboxbuild.png)

## Setup

Clone or Download the whole GitHub repo (Code -> Download ZIP).

Build environment must be in C:\DOSBOXBUILD (so you will have folders like C:\DOSBOXBUILD\input).

## One-time compilation

Start *compile.bat* to compile *main.asm*

This will compile main.asm file and then will launch it in DOSBox.

## Watch mode

Start *watch.bat* to watch changes of *main.asm*

Watch mode will observe modification of the main.asm file and whenever the file is modified using an external editor, it will launch compile.bat

## Debugging 

Start *debug.bat* to debug *main.com* compiled from *main.asm*

By default Turbo Debugger TD.EXE is used as a debugger.
Add your own debugger into C:\DOSBOXBUILD\input and set it in C:\DOSBOXBUILD\input\DEBUG.BAT  

In "input" folder you can modify the AUTOEXEC.BAT and add more files to DOSBox-X\drivez.
