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

if lsof -Pi :5993 -sTCP:LISTEN -t >/dev/null ; then
    port=$(shuf -i 2000-65000 -n 1)
else
    port=5993
fi

sudo mkdir -p /root/docker/alltube

cat << EOF > /root/docker/alltube/docker-compose.yml
version: '3.3'
services:
    alltube:
        container_name: alltube
        ports:
            - '$port:80'
        environment:
            - PUID=0 
            - PGID=0  
            - TZ=Asia/Shanghai
        restart: always
        image: rudloff/alltube
EOF

cd /root/docker/alltube && docker-compose up -d

echo "安装完成请使用ip:$port访问"
