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
    echo "4.部署视频下载服务----AllTube"
    echo "5.部署反代理工具----NPM"
    echo "6.部署无人直播----云SRS"
    echo "7.FFmpeg循环推流脚本"
    echo ""
    echo "=================================================="
    echo ""
    echo "11.八合一一键脚本----v2ray-agent"
    echo "12.支持多协议多用户的面板----Xui"
    echo "13.V2Ray 一键安装脚本 & 管理脚本"
    echo "14.Hysteria一键安装----Hi Hysteria"
    echo "15.vmess+ws+tls 一键安装脚本----V2Ray_ws-tls_bash_onekey"
    echo "16.Bash script for installing V2Ray----fhs-install-v2ray"
    echo ""
    echo "=================================================="
    echo "0.退出脚本"
    echo "00.更新脚本"
    echo "=================================================="
    echo ""
    echo ""
    read -p "请输入编号: " userInput

    # 根据输入执行对应的脚本
    case $userInput in
        "0")
            break
            ;;
        "00")
            rm apbox.sh
            wget -O apbox.sh https://raw.githubusercontent.com/Aorp2008/Airp_sh/main/apbox.sh && chmod +x apbox.sh && clear && ./apbox.sh
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
        "11")
            wget -P /root -N --no-check-certificate "https://raw.githubusercontent.com/mack-a/v2ray-agent/master/install.sh" && chmod 700 /root/install.sh && /root/install.sh
            break
            ;;
        "12")
            bash <(curl -Ls https://raw.githubusercontent.com/vaxilu/x-ui/master/install.sh)
            break
            ;;
        "13")
            bash <(wget -qO- -o- https://git.io/v2ray.sh)
            break
            ;;
        "14")
            bash <(curl -fsSL https://git.io/hysteria.sh)
            break
            ;;
        "15")
            wget -N --no-check-certificate -q -O install.sh "https://raw.githubusercontent.com/wulabing/V2Ray_ws-tls_bash_onekey/master/install.sh" && chmod +x install.sh && bash install.sh
            break
            ;;
        "16")
            bash <(wget -qO- -o- https://git.io/v2ray.sh)
            break
            ;;
        *)
            echo "输入错误！"
            sleep 1
            ;;
    esac
done
