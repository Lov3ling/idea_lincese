#!/bin/bash
wget http://p2e161v1x.bkt.clouddn.com/IntelliJIDEALicenseServer
chmod a+x IntelliJIDEALicenseServer
echo "请输入jetbains激活服务器的端口 [1-65535]:"
read -p "(默认端口: 3389):" httpport
[ -z "$httpport" ] && httpport="3389"
echo "请输入jetbains用户名(仅英文):"
read -p "(默认用户名: ysandreew):" name
[ -z "$name" ] && name="ysandreew"
ip=`curl -m 10 -s http://members.3322.org/dyndns/getip`
echo "————————————————————————————————————————————————————————————————————"
echo "                                                  "
echo  -e "  你的License sever: \033[41;37m  http://${ip}:${httpport} \033[0m"
echo "                                                  "
echo "————————————————————————————————————————————————————————————————————"
nohup ./IntelliJIDEALicenseServer -p ${httpport} -u ${name} >>jetbrains.log 2>&1 &
exit 1
