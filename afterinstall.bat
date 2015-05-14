@echo off

set pwd=%~dp0%
%pwd%\mysql-5.1.73-winx64\bin\mysqld --install mysql-5.1.73-winx64 --defaults-file=%pwd%\mysql-5.1.73-winx64\my.ini
net start mysql-5.1.73-winx64
