#!/bin/bash

while true; do
    clear
    echo "AP-BOX"
    echo "FROM: https://github.com/Aorp2008/Airp_sh"
    echo "=================================================="
    echo ""
    echo "1.安装Docker和Docker compose"
    echo "2.部署简单图床----Easyimage"
    echo "3.部署在线文件目录----Zfile"
    echo "4.FFmpeg循环推流脚本"
    echo ""
    echo "0.退出脚本"
    echo ""
    echo "=================================================="
    echo ""
    echo ""
    read -p "请输入编号: " userInput

    # 根据输入执行对应的脚本
    case $userInput in
        "0")
            break
            ;;
        "1")
            wget -O docker.sh https://raw.githubusercontent.com/Aorp2008/Airp_sh/main/docker.sh && chmod +x docker.sh && clear && ./docker.sh
            break
            ;;
        "2")
            wget -O easyimg.sh https://raw.githubusercontent.com/Aorp2008/Airp_sh/main/easyimg.sh && chmod +x easyimg.sh && clear && ./easyimg.sh
            break
            ;;
        "3")
            wget -O zfile.sh https://raw.githubusercontent.com/Aorp2008/Airp_sh/main/zfile.sh && chmod +x zfile.sh && clear && ./zfile.sh
            break
            ;;
        "4")
            wget -O FFmpeg.sh https://raw.githubusercontent.com/Aorp2008/Airp_sh/main/FFmpeg.sh && chmod +x FFmpeg.sh && clear && ./FFmpeg.sh
            break
            ;;
        *)
            echo "输入错误！"
            sleep 2
            ;;
    esac
done
