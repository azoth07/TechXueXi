#! /bin/bash
echo "STORE souces.list"
cp /etc/apt/sources.list /etc/apt/sources.list.bak
echo "DELETE souces.list"
rm /etc/apt/sources.list
echo "TOUCH souces.list"
touch /etc/apt/sources.list
echo "WRITTING souces.list"
echo deb "http://mirrors.aliyun.com/ubuntu/ focal main restricted universe multiverse" >> /etc/apt/sources.list
echo deb "http://mirrors.aliyun.com/ubuntu/ focal-security main restricted universe multiverse" >> /etc/apt/sources.list
echo deb "http://mirrors.aliyun.com/ubuntu/ focal-updates main restricted universe multiverse" >> /etc/apt/sources.list
echo deb "http://mirrors.aliyun.com/ubuntu/ focal-proposed main restricted universe multiverse" >> /etc/apt/sources.list
echo deb "http://mirrors.aliyun.com/ubuntu/ focal-backports main restricted universe multiverse" >> /etc/apt/sources.list
echo deb-src "http://mirrors.aliyun.com/ubuntu/ focal main restricted universe multiverse" >> /etc/apt/sources.list
echo deb-src "http://mirrors.aliyun.com/ubuntu/ focal-security main restricted universe multiverse" >> /etc/apt/sources.list
echo deb-src "http://mirrors.aliyun.com/ubuntu/ focal-updates main restricted universe multiverse" >> /etc/apt/sources.list
echo deb-src "http://mirrors.aliyun.com/ubuntu/ focal-proposed main restricted universe multiverse" >> /etc/apt/sources.list
echo deb-src "http://mirrors.aliyun.com/ubuntu/ focal-backports main restricted universe multiverse" >> /etc/apt/sources.list
echo "UPGRADE apt"
apt-get update
echo "AUTOREMOVE apt"
apt-get autoremove
echo "UPGRADE apt"
apt-get upgrade
cat /etc/apt/sources.list
