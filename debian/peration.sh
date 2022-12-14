#!/bin/bash

version=$(cat /etc/issue)
readonly version
myadress="/home/lighthouse"
readonly myadress
yunzai="${myadress}/debian/Yunzai-Bot"
readonly yunzai
yunzaiplugin="${yunzai}/plugins"
readonly yunzaiplugin
yunzaiqq="${yunzai}/config/config/qq.yaml"
readonly yunzaiqq

cd /home
[ -d ${myadress} ] || mkdir lighthouse
cd "${myadress}"
[ -d ${myadress}"/debian" ] || mkdir debian
[ -d ${myadress}"/debian" ] || exit

yunzaiverification(){
   [ -d "${yunzaiplugin}" ] || echo "Not installed未安装"
   [ -d "${yunzaiplugin}" ] || read -p "Enter回车并继续..." Enter
   [ -d "${yunzaiplugin}" ] || return "1"
   return "0"
}

while true
do
    OPTION=$(whiptail \
        --title "《Yunzai-Bot》" \
        --menu "$version" \
        15 50 5 \
        "1" "运行状态status" \
		"2" "启动云崽run" \
		"3" "停止云崽stop" \
        3>&1 1>&2 2>&3)
        feedback=$?
	    if [ $feedback = 0 ]
	    then
		
		    if [ $OPTION = 1 ]
		    then
			cd "${myadress}"
			pm2 list
			read -p "Enter回车并继续..." c
	     	fi

		    if [ $OPTION = 2 ]
		    then yunzaiverification
			    if [ $? = "0" ]
				then 
	    		[ -e "${yunzaiqq}" ] || echo "#您未配置机器人V3QQ"
	      		[ ! -e "${yunzaiqq}" ] || cd "${yunzai}"
	    		[ ! -e "${yunzaiqq}" ] || npm stop
	    		[ ! -e "${yunzaiqq}" ] || npm start
	    		[ ! -e "${yunzaiqq}" ] || echo "后台运行"
	     		read -p "Enter回车并继续..." c
				fi
	     	fi

	    	if [ $OPTION = 3 ]
	    	then yunzaiverification
			    if [ $? = "0" ]
				then 
		     	[ ! -d "${yunzaiplugin}" ] || cd "${yunzai}"
		    	[ ! -d "${yunzaiplugin}" ] || npm stop
		    	[ ! -d "${yunzaiplugin}" ] || echo "关闭"
	    		read -p "Enter回车并继续..." c
		 		fi
		    fi
    else
        exit
    fi
done
