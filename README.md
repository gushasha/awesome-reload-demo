# 基于shutdown、supervisor的代码热更新


更新流程：
* 本地更新程序代码
* 执行脚本 `toremote.sh`，完成编译并更新到云服务器
* 触发云服务器上`/home/www/test/codemonitor.sh`，通过supervisor重启程序完成更新
