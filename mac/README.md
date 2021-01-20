# 新增mac版自动备份

## 使用方法
### 前置
- 需要安装mysql
- 需要mysqldump可用

### 配置
- 先到backSQL.sh 将里面的前面的参数替换成需要备份的路径和数据库的参数
- 第14行前mysqldump路径替换成自己的mysql绝对路径，/usr/local/opt/mysql@8.0/bin/这段，不知道在哪可用命令find / -name mysql查出绝对路径
- 不需要定时任务可以直接运行sh

### 设置定时任务
- 到test.plist文件
- 替换ProgramArguments参数下，backSQL.sh路径，替换成你自己的。好像不支持sh输入参数
- 使用launchctl命令设置定时任务，launchctl load -w test.plist添加任务，launchctl start test.plist开启任务
- StartInterval 参数设置时间间隔，刚开始是不会调用的
- StandardOutPath，StandardErrorPath 参数下替换日志路径

### launchctl相关命令
- launchctl load -w test.plist  --添加一个任务
- launchctl unload -w test.plist --删除一个任务
- launchctl start test.plist  --触发一个任务，无视时间
- launchctl list | grep plist --展示当前的存在所有plist任务

