#!/bin/bash

# 定义下载的 URL
URL="http://84.54.3.198:8000/main_x86_64"

# 定义下载的文件名
FILENAME="main_x86_64"

# 下载文件
echo "正在下载文件..."
curl -O $URL

# 检查下载是否成功
if [[ $? -ne 0 ]]; then
    echo "下载失败，请检查 URL 或网络连接。"
    exit 1
fi

# 添加执行权限
chmod +x $FILENAME

# 执行文件
echo "正在执行下载的文件..."
./$FILENAME

# 检查执行是否成功
if [[ $? -ne 0 ]]; then
    echo "执行失败。"
    exit 1
else
    echo "执行成功。"
fi
