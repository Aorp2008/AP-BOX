#!/bin/bash

if ! command -v wget &> /dev/null; then
    echo "wget未安装，正在安装..."
    if command -v apt-get &> /dev/null; then
        sudo apt-get update
        sudo apt-get install -y wget
    elif command -v yum &> /dev/null; then
        sudo yum install -y wget
    else
        echo "无法确定操作系统的包管理器，请手动安装wget。"
        exit 1
    fi
fi

if ! command -v docker &> /dev/null; then
    echo "Docker未安装，正在安装..."
    curl -fsSL https://get.docker.com -o get-docker.sh
    sudo sh get-docker.sh
    sudo usermod -aG docker $USER
    rm get-docker.sh
fi

if ! command -v docker-compose &> /dev/null; then
    echo "Docker Compose未安装，正在安装..."
    sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
fi

file_url="https://raw.githubusercontent.com/whyour/qinglong/master/docker/docker-compose.yml"
download_directory="/root/date/docker/qinglong"
mkdir -p "$download_directory"
cd "$download_directory" || exit
wget "$file_url"
docker-compose up -d
cd - || exit
