#! /bin/bash
echo "STORE souces.list"
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
echo "DELETE souces.list"
sudo rm /etc/apt/sources.list
echo "TOUCH souces.list"
sudo touch /etc/apt/sources.list
echo "WRITTING souces.list"
sudo echo deb "http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse" >> /etc/apt/sources.list
sudo echo deb "http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse" >> /etc/apt/sources.list
sudo echo deb "http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse" >> /etc/apt/sources.list
sudo echo deb "http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse" >> /etc/apt/sources.list
sudo echo deb "http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse" >> /etc/apt/sources.list
sudo echo deb-src "http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse" >> /etc/apt/sources.list
sudo echo deb-src "http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse" >> /etc/apt/sources.list
sudo echo deb-src "http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse" >> /etc/apt/sources.list
sudo echo deb-src "http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse" >> /etc/apt/sources.list
sudo echo deb-src "http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse" >> /etc/apt/sources.list
echo "UPGRADE apt"
sudo apt-get update
echo "AUTOREMOVE apt"
sudo apt-get autoremove
echo "UPGRADE apt"
echo Y | sudo apt-get upgrade
cat /etc/apt/sources.list
