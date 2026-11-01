@echo off
cd /d %~dp0
if not exist minibank.jar call build.bat
java -jar minibank.jar
