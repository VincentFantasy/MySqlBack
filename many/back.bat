@echo off

rem 时间，用于创建文件名
rem 默认不使用时间命名
rem set bakFileNameTail=%date:~0,4%-%date:~5,2%-%date:~8,2%-%time:~0,2%-%time:~3,2%-%time:~6,2%

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
rem set c=%8%
rem set construction=-t
rem if [%c%]==[Y] set construction=
rem if [%c%]==[y] set construction=
rem 默认不创建表结构
rem set construction=
set construction=-t

rem 锁表
rem set s=%8%
rem set lock=
rem if [%s%]==[Y] set lock=--lock-all-tables
rem if [%s%]==[y] set lock=--lock-all-tables

rem 编码
set b=%8%
set code=utf8mb4
if [%b%] neq [] set code=%b%

rem 注释
set a=%9%
set anno=--compact
if [%a%]==[0] (
	set anno=
	set construction=
	set lock=
)
if [%a%]==[1] (
	set anno=--compact
	set construction=
	set lock=
)
if [%a%]==[2] (
	set anno=
	set construction=-t
	set lock=
)
if [%a%]==[3] (
	set anno=
	set construction=
	set lock=--lock-all-tables
)
if [%a%]==[4] (
	set anno=--compact
	set construction=-t
	set lock=
)
if [%a%]==[5] (
	set anno=--compact
	set construction=
	set lock=--lock-all-tables
)
if [%a%]==[6] (
	set anno=-
	set construction=-t
	set lock=--lock-all-tables
)
if [%a%]==[7] (
	set anno=--compact
	set construction=-t
	set lock=--lock-all-tables
)

rem 执行，需要安装mysql才能备份，需要锁全表才能备份
rem mysqldump -uroot -p%password% -h %host% -P %port% %anno% %lock% --default-character-set=utf8mb4 %construction% %dbname% %tablename% --where=%where% > %backupDir%%tablename%%bakFileNameTail%.sql
mysqldump -uroot -p%password% -h %host% -P %port% %construction% %anno% %lock% --default-character-set=%code% %dbname% %tablename% --where=%where% > %backupDir%%tablename%.sql
