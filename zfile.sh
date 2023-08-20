#!/bin/bash

if ! command -v docker &> /dev/null
then
    wget -O docker.sh https://raw.githubusercontent.com/Aorp2008/Airp_sh/main/docker.sh && chmod +x docker.sh && clear && ./docker.sh

fi

if ! command -v docker-compose &> /dev/null
then
    wget -O docker.sh https://raw.githubusercontent.com/Aorp2008/Airp_sh/main/docker.sh && chmod +x docker.sh && clear && ./docker.sh

fi

if ! command -v lsof &> /dev/null
then
    echo "lsof is not installed. Installing now..."
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        sudo apt-get install lsof
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        brew install lsof
    fi
fi

if lsof -Pi :8080 -sTCP:LISTEN -t >/dev/null ; then
    port=$(shuf -i 2000-65000 -n 1)
else
    port=8080
fi

sudo mkdir -p /root/docker/zfile

cat << EOF > /root/docker/zfile/docker-compose.yml
version: '3.3'
services:
    zfile:
        container_name: zfile
        restart: always
        ports:
            - '8080:8080'
        volumes:
            - './db:/root/.zfile-v4/db'  
            - './logs:/root/.zfile-v4/logs' 
            - './data:/root/.zfile-v4/data' 
            - './application.properties:/root/application.properties'
        image: zhaojun1998/zfile
EOF

cd /root/docker/zfile && docker-compose up -d

echo "安装完成请使用ip:$port访问"
