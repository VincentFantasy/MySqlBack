#! /bin/bash 
 
 path=/Users/tanzhi/Downloads 
 host=127.0.0.1
 user=root 
 port=3306 
 password=123 
 database=op_1001

# 记录一下开始时间
echo `date` >> $path/run.log &&

time=$(date "+%Y%m%d%H%M%S")
/usr/local/opt/mysql@8.0/bin/mysqldump -h$host -u$user -P$port -p$password $database> $path/$database-$time.sql

# 运行完成
echo 'finish' >> $path/run.log
