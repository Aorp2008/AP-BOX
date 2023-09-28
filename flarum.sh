#!/bin/bash

set -e  

if ! command -v docker &> /dev/null || ! command -v docker-compose &> /dev/null; then
    wget -O docker.sh https://raw.githubusercontent.com/Aorp2008/Airp_sh/main/docker.sh
    chmod +x docker.sh
    clear
    ./docker.sh
fi

if ! command -v lsof &> /dev/null; then
    echo "lsof未安装，正在安装请稍后..."
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        sudo apt-get install lsof
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        brew install lsof
    fi
fi

if lsof -Pi :8083 -sTCP:LISTEN -t >/dev/null; then
    port=$(shuf -i 2000-65000 -n 1)
else
    port=8083
fi

root_dir="/root/docker/flarum"
flarum_dir="$root_dir/flarum"
mkdir -p "$flarum_dir"
cd "$flarum_dir"

read -p "请输入网站的域orIP + 端口: " domain_name
read -p "请输入管理员邮箱: " admin_mail
read -p "请输入管理员密码: " admin_passwd
read -p "请输入论坛标题: " main_name

cat << EOF > "$flarum_dir/flarum.env"
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

docker-compose up -d

echo "安装完成，请使用 IP:$port 访问"
echo "管理员密码: $admin_passwd"
