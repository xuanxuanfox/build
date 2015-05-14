@echo off
set pwd=%~dp0%
echo %pwd%
set JAVA_HOME=%pwd%\jdk1.6.0_19
"%pwd%"\apache-tomcat-6.0.30\bin\stop.bat
net stop mysql5-shz
"%pwd%"\mysql-5.0.22-win32\bin\mysqld --remove mysql5-shz"
del "%pwd%"\apache-tomcat-6.0.30 /Q /S
del "%pwd%"\mysql-5.0.22-win32 /Q /S