#!/bin/bash

if ! command -v docker &> /dev/null
then
    wget -O docker.sh https://raw.githubusercontent.com/Aorp2008/Airp_sh/main/docker.sh && chmod +x docker.sh && clear && ./docker.sh

fi

if ! command -v docker-compose &> /dev/null
then
    wget -O docker.sh https://raw.githubusercontent.com/Aorp2008/Airp_sh/main/docker.sh && chmod +x docker.sh && clear && ./docker.sh
fi

sudo mkdir -p /root/docker/npm

cat << EOF > /root/docker/npm/docker-compose.yml
version: '3.8'
services:
  app:
    image: 'jc21/nginx-proxy-manager:latest'
    restart: unless-stopped
    ports:
      - '80:80'
      - '81:81'
      - '443:443'
    volumes:
      - ./data:/data
      - ./letsencrypt:/etc/letsencrypt
EOF
cd /root/docker/npm && docker-compose up -d

echo "安装完成请使用ip:81访问面板"
echo "默认邮箱: admin@example.com"
echo "默认密码: changeme"
