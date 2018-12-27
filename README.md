﻿# MysqlBack
	系统:windows
	使用了mysqldump进行备份，需要客户端安装mysql才能使用
	默认只需设置好auto*.bat文件的参数，并执行就可以使用
	autoback.bat调用back.bat
	autore.bat调用recover.bat

# back.bat使用说明
	默认不输出表结构，如果需要表结构，还需要加入自动删除原来的表，需要设置第九个参数
  	参数说明：
	.参数很多，前面7个参数必须输入
	.第一个参数是数据库密码,账户默认root
	.第二个参数是ip地址
	.第三个参数是端口
	.第四个参数是保存到本地的哪个文件夹，如“E:/a/”
	.第五个参数是数据库，暂不支持多数据库
	.第六个参数是表名，填*可以选择所有表
	.第七个参数是where筛选条件，需要加""，例如"id=1"，当第六个参数为*时，此处不生效。如果需要第八、九个参数此处必填
	.第八个参数是是否需要锁表，两个表以上操作的需要锁数据库下全部表，锁为读锁
	.第九个参数是是否输出头尾等注释，可以不用填，默认否，输入Y或y输出

# autoback.bat使用说明
	.在autoback.bat里设置好appid，数据库密码，端口，ip，保存文件夹，数据库名，数据表等。已经默认ip尾号为81，“美食天下”应用及相关数据库的信息
	.在autoback写好以上参数，以后运行autoback.bat既可备份数据库
	.把autoback.bat加入windows计划任务，既可实现每天定时备份任务

# 恢复数据
	mysql -uroot -ppasssword dbname < sqlname.sql
	或者用命令行，进入mysql，选择数据库，source sqlname.sql

# recover.bat
	.第一个参数是数据库密码,账户默认root
	.第二个参数是ip地址
	.第三个参数是端口
	.第四个参数是数据库在哪个文件夹，如“E:/a/”
	.第五个参数是数据库，暂不支持多数据库
	.第六个参数是表名

# autore.bat
	把数据sql导入到一个数据库中，需要有数据表
	.在autore.bat里设置好数据库密码，端口，ip，sql文件夹，数据库名，数据表等。已经默认备份到“buz_data_backup”数据库
