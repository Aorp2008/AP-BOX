#!/bin/bash


if ! command -v docker &> /dev/null
then
    echo "未安装Docker,正在安装......"
    wget -qO- get.docker.com | bash
    systemctl enable docker
else
    echo "Docker已存在"
fi


if ! command -v docker-compose &> /dev/null
then
    echo "未安装Docker-compose,正在安装......"
    sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
else
    echo "Docker-compose已存在"
fi
