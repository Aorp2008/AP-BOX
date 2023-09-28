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
    echo "lsof未安装,正在安装请稍后......"
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        sudo apt-get install lsof
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        brew install lsof
    fi
fi

if lsof -Pi :8083 -sTCP:LISTEN -t >/dev/null ; then
    port=$(shuf -i 2000-65000 -n 1)
else
    port=8083
fi

sudo mkdir -p /root/docker/flarum

cat << EOF > /root/docker/flarum/docker-compose.yml
version: "3"

services:
  flarum:
    image: mondedie/flarum:stable
    container_name: flarum
    env_file:
      - /root/docker/flarum/flarum/flarum.env   # 创建一个flarum.env
    volumes:   
      - /root/docker/flarum/flarum/assets:/flarum/app/public/assets
      - /root/docker/flarum/flarum/extensions:/flarum/app/extensions
      - /root/docker/flarum/flarum/storage/logs:/flarum/app/storage/logs
      - /root/docker/flarum/flarum/nginx:/etc/nginx/flarum
    ports:
      - $port:8888   
    restart: unless-stopped
    depends_on:
      - mariadb

  mariadb:
    image: mariadb:10.5
    container_name: mariadb
    environment:
      - MYSQL_ROOT_PASSWORD=idR0b5CMNiXbsAeUTHj1
      - MYSQL_DATABASE=flarum
      - MYSQL_USER=flarum
      - MYSQL_PASSWORD=idR0b5CMNiXbsAeUTHj1
    volumes:
      - /root/docker/flarum/docker/mysql/db:/var/lib/mysql  
    restart: unless-stopped
EOF

mkdir -p /root/docker/flarum/flarum
cd /root/docker/flarum/flarum

while true; do
    read -p "请输入网站的域名or Ip + 端口: " domain_name
    if [ -z "$domain_name" ]; then
        echo "输入的域名为空，请重新输入。"
    else
        break
    fi
done
while true; do
    read -p "请输入管理员邮箱: " admin_mail
    if [ -z "$admin_mail" ]; then
        echo "输入的邮箱为空，请重新输入。"
    else
        break
    fi
done
while true; do
    read -p "请输入管理员密码: " admin_passwd
    if [ -z "$admin_passwd" ]; then
        echo "输入的域名密码为空，请重新输入。"
    else
        break
    fi
done
while true; do
    read -p "请输入论坛标题: " main_name
    if [ -z "$main_name" ]; then
        echo "输入的标题为空，请重新输入。"
    else
        break
    fi
done
cat << EOF > /root/docker/flarum/flarum/flarum.env
DEBUG=false
FORUM_URL=$domain_name    

# Database configuration
DB_HOST=mariadb
DB_NAME=flarum
DB_USER=flarum
DB_PASS=idR0b5CMNiXbsAeUTHj1    
DB_PREF=flarum_
DB_PORT=33060


FLARUM_ADMIN_USER=admin        
FLARUM_ADMIN_PASS=$admin_passwd
FLARUM_ADMIN_MAIL=$admin_mail
FLARUM_TITLE=$main_name
EOF
cd /root/docker/flarum/ && docker-compose up -d 
echo "安装完成请使用ip:$port 访问"
echo "管理员密码: $admin_passwd"
