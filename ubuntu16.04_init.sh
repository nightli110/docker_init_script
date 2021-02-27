#!/bin/bash

#cp /etc/apt/sources.list /etc/apt/sources.list.bak

rm /etc/apt/sources.list

rm  -rf /etc/apt/sources.list.d/*

echo '
deb http://mirrors.ustc.edu.cn/ubuntu/ xenial main restricted universe multiverse
deb http://mirrors.ustc.edu.cn/ubuntu/ xenial-security main restricted universe multiverse
deb http://mirrors.ustc.edu.cn/ubuntu/ xenial-updates main restricted universe multiverse
deb http://mirrors.ustc.edu.cn/ubuntu/ xenial-proposed main restricted universe multiverse
deb http://mirrors.ustc.edu.cn/ubuntu/ xenial-backports main restricted universe multiverse
deb-src http://mirrors.ustc.edu.cn/ubuntu/ xenial main restricted universe multiverse
deb-src http://mirrors.ustc.edu.cn/ubuntu/ xenial-security main restricted universe multiverse
deb-src http://mirrors.ustc.edu.cn/ubuntu/ xenial-updates main restricted universe multiverse
deb-src http://mirrors.ustc.edu.cn/ubuntu/ xenial-proposed main restricted universe multiverse
deb-src http://mirrors.ustc.edu.cn/ubuntu/ xenial-backports main restricted universe multiverse
    ' > /etc/apt/sources.list

apt-get update

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
