#!/bin/bash
#centos启动
version=$(cat /etc/redhat-release)
readonly version

centos="/yunzai-bot-help/centos"
readonly centos

while true
do
OPTION=$(whiptail \
--title "《Yunzai-Bot-Help》" \
--menu "$version" \
15 50 5 \
"1" "安装" \
3>&1 1>&2 2>&3)
feedback=$?

if [ $feedback = 0 ]
then

#工具管理HelpManage
    if [ $OPTION = 1 ]
    then read -p "待施工" Enter
    fi

else
    exit
fi
done