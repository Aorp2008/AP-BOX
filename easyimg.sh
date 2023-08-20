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

if lsof -Pi :5588 -sTCP:LISTEN -t >/dev/null ; then
    port=$(shuf -i 2000-65000 -n 1)
else
    port=5588
fi

sudo mkdir -p /root/docker/easyimg

cat << EOF > /root/docker/easyimg/docker-compose.yml
version: '3.3'
services:
  easyimage:
    image: ddsderek/easyimage:latest
    container_name: easyimage
    ports:
      - '$port:80'
    environment:
      - TZ=Asia/Shanghai
      - PUID=1000
      - PGID=1000
    volumes:
      - '/root/data/docker_data/easyimage/config:/app/web/config'
      - '/root/data/docker_data/easyimage/i:/app/web/i'
    restart: unless-stopped
EOF

cd /root/docker/easyimg && docker-compose up -d

echo "安装完成请使用ip:$port访问"
