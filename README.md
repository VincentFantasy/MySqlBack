# MysqlBack
	使用了mysqldump进行备份，需要客户端安装mysql才能使用

# back.bat使用说明
  	参数说明：
	.参数很多，前面7个参数必须输入
	.第一个参数是数据库密码,账户默认root
	.第二个参数是ip地址
	.第三个参数是端口
	.第四个参数是保存到本地的哪个文件夹，如“E:/a/”
	.第五个参数是数据库，暂不支持多数据库
	.第六个参数是表名，填*可以选择所有表
	.第七个参数是where筛选条件，需要加""，例如"id=1"，当第六个参数为*时，此处不生效。如果需要第八、九个参数此处必填
	.第八个参数是是否输出表结构，可以不用填，默认否，输入Y或y输出
	.第九个参数是是否输出头尾等注释，可以不用填，默认否，输入Y或y输出

# autoback.bat使用说明
	.在autoback写好以上参数，以后运行autoback.bat既可备份数据库
	.把autoback.bat加入windows计划任务，既可实现每天定时备份任务

# 恢复数据
	mysql -uroot -ppasssword dbname < sqlname.sql
	或者用命令行，进入mysql，选择数据库，source sqlname.sql
