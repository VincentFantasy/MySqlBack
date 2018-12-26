@echo off

rem 时间，用于创建文件名
set bakFileNameTail=%date:~0,4%-%date:~5,2%-%date:~8,2%-%time:~0,2%-%time:~3,2%-%time:~6,2%

rem 数据库密码
set password=%1%

rem host
set host=%2%

rem 端口
set port=%3%

rem 保存到哪个文件夹下，如e:/tz/back/
set backupDir=%4%

rem 数据库名 暂不支持多个数据库
set dbname=%5%

rem 表名 暂不支持多个表
set tablename=%6%

rem where筛选条件
set where=%7%

rem 所有表备份
if [%tablename%]==[*] (
	set tablename=
	set where=
)

rem 表结构
set c=%8%
set construction=-t
if [%c%]==[Y] set construction=
if [%c%]==[y] set construction=

rem 注释
set a=%9%
set anno=--compact
if [%a%]==[Y] set anno=
if [%a%]==[y] set anno=

rem 执行，需要安装mysql才能备份
mysqldump -uroot -p%password% -h %host% -P %port% %anno% --default-character-set=utf8mb4 %construction% %dbname% %tablename% --where=%where% > %backupDir%%bakFileNameTail%.sql
