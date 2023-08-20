#!/bin/bash

while true; do
    clear
    echo "AP-BOX"
    echo "FROM: https://github.com/Aorp2008/Airp_sh"
    echo "=================================================="
    echo "1.安装Docker和Docker compose"
    echo "2.部署简单图床----Easyimage"
    echo "3.部署在线文件目录----Zfile"
    echo "4.部署视频下载服务----AllTube"
    echo "5.部署反代理工具----NPM"
    echo "6.部署无人直播----云SRS"
    echo "7.FFmpeg循环推流脚本"
    echo ""
    echo "0.退出脚本"
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
            wget -O alltube.sh https://raw.githubusercontent.com/Aorp2008/Airp_sh/main/alltube.sh && chmod +x alltube.sh && clear && ./alltube.sh
            break
            ;;
        "5")
            wget -O npm.sh https://raw.githubusercontent.com/Aorp2008/Airp_sh/main/npm.sh && chmod +x npm.sh && clear && ./npm.sh
            break
            ;;
        "6")
            wget -O yunsrs.sh https://raw.githubusercontent.com/Aorp2008/Airp_sh/main/yunsrs.sh && chmod +x yunsrs.sh && clear && ./yunsrs.sh
            break
            ;;
        "7")
            wget -O FFmpeg.sh https://raw.githubusercontent.com/Aorp2008/Airp_sh/main/FFmpeg.sh && chmod +x FFmpeg.sh && clear && ./FFmpeg.sh
            break
            ;;
        *)
            echo "输入错误！"
            sleep 1
            ;;
    esac
done
