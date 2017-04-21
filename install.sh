#!/usr/bin/env bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
wget -N --no-check-certificate https://raw.githubusercontent.com/aiastia/us.pub/master/us.pub

mkdir -p /root/.ssh 

mv /root/us.pub /root/.ssh/authorized_keys 

chmod 600 /root/.ssh/authorized_keys

apt-get update

apt-get -y install git	

git clone https://github.com/aiastia/shadowsock.git

cd ~/shadowsock/shadowsocks/shadowsocks

chmod 777 run.sh

chmod 777 stop.sh

./run.sh  

wget -N --no-check-certificate https://github.com/91yun/serverspeeder/raw/master/serverspeeder.sh && bash serverspeeder.sh
