@echo off
REM -----------------------------------------------------
REM Run this script only if you have problem to run
REM Apache and Mysql as service. This can occurs when
REM Microsoft add bugs in service packs that prevents
REM servers ran as a service to launch.
REM -----------------------------------------------------

echo Running Apache as user process (this process does not return so we use "start")
start C:/1stChoiceSavingCRM\bin\apache\apache2.4.51\bin\httpd.exe -f conf\httpd.conf

echo 

echo Running Mysql as user process (this process does not return so we use "start")
REM start C:/1stChoiceSavingCRM\bin\mysql\mysql10.6.5\bin\mysqld-nt.exe --defaults-file=C:/1stChoiceSavingCRM\bin\mysql\mysql10.6.5\my.ini --console
REM start C:/1stChoiceSavingCRM\bin\mysql\mysql10.6.5\bin\mysqld.exe --defaults-file=C:/1stChoiceSavingCRM\bin\mysql\mysql10.6.5\my.ini --console
start C:/1stChoiceSavingCRM\bin\mariadb\mariadb10.6.5\bin\mysqld.exe --defaults-file=C:/1stChoiceSavingCRM\bin\mariadb\mariadb10.6.5\my.ini --console

pause