#!/bin/bash

#cp /etc/apt/sources.list /etc/apt/sources.list.bak

rm /etc/apt/sources.list

rm  -rf /etc/apt/sources.list.d/*

echo '
deb http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse
    ' > /etc/apt/sources.list

apt-get update --fix-missing

apt-get install -y vim wget  python-qt4

pipconf_dir="~/.pip/"

if [ ! -d "$pipconf_dir" ];
then
	mkdir -p ~/.pip
	echo -e '
    \n[global]
    \nindex-url = https://pypi.tuna.tsinghua.edu.cn/simple
	' > ~/.pip/pip.conf;
fi
echo 'docker init finish'
