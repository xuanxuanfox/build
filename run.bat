@echo off
set pwd=%~dp0%
echo %pwd%
set JRE_HOME=%pwd%\jre-7u55
cd %pwd%\apache-tomcat-7.0.54\bin\
call startup.bat