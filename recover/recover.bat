@echo off

set passsword=%1%
set host=%2%
set port=%3%
set backupDir=%4%

set dbname=%5%
set tablename=%6%

mysql -uroot -p%passsword% -h %host% -P %port% %dbname% < %backupDir%%tablename%.sql
