#!/bin/bash
#环境管理
version=$(cat /etc/issue)
readonly version

myadress="/home/lighthouse"
readonly myadress

while true
do
OPTION=$(whiptail \
--title "《Help-Environment》" \
--menu "$version" \
15 50 5 \
"1" "环境search" \
"2" "安装Redis" \
"3" "安装zip" \
"4" "安装sshpass" \
"5" "安装Python" \
"6" "安装ffmpeg" \
3>&1 1>&2 2>&3)
feedback=$?

if [ $feedback = 0 ]
then

    if [ $OPTION = 1 ]
    then 
    echo "nodejs"
    node -v
    echo "redis"
    redis-server -v
    echo "git"
    git version
    read -p "回车并继续Enter..." y
    fi

    if [ $OPTION = 2 ]
    then ps -aux | grep redis
    read -p "回车并继续Enter..." y
    fi

    if [ $OPTION = 3 ]
    then apt-get install -y unzip zip
    fi

    if [ $OPTION = 4 ]
    then
    cd "${myadress}"
    apt install -y wget
    wget https://nchc.dl.sourceforge.net/project/sshpass/sshpass/1.06/sshpass-1.06.tar
    tar  zxf sshpass-1.06.tar.gz
    ./configure  --prefix=/usr/local/sshpass
    make && make install
    rm -rf sshpass-1.06.tar.gz
    read -p "回车并继续Enter..." y
    fi

    if [ $OPTION = 5 ]
    then
    apt update && apt install -y gcc build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libbz2-dev liblzma-dev sqlite3 libsqlite3-dev tk-dev uuid-dev libgdbm-compat-dev
    wget https://repo.huaweicloud.com/python/3.9.0/Python-3.9.0.tgz
    tar -zxvf Python-3.9.0.tgz
    rm -rf Python-3.9.0.tgz
    cd Python-3.9.0
    ./configure prefix=/usr/local/python3
    make && make install
    ln -s /usr/local/python3/bin/python3.9 /usr/bin/python3
    ln -s /usr/local/python3/bin/pip3.9 /usr/bin/pip3
    read -p "回车并继续Enter..." y
    fi

    if [ $OPTION = 6 ]
    then
    apt update && apt install -y ffmpeg
    ffmpeg -version
    read -p "回车并继续Enter..." y
    fi

else
    exit
fi
done