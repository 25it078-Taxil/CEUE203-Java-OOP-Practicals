@echo off
cd /d %~dp0
if exist out rmdir /s /q out
if exist minibank.jar del minibank.jar
mkdir out
dir /s /b src\*.java > sources.txt
javac --release 17 -encoding UTF-8 -d out @sources.txt
if errorlevel 1 exit /b 1
echo Main-Class: MiniBank>manifest.mf
echo.>>manifest.mf
jar cfm minibank.jar manifest.mf -C out .
echo Build successful: minibank.jar
