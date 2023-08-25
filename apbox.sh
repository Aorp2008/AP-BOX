#!/bin/bash

function nezha(){
wget -O "/root/nezha.sh" "https://raw.githubusercontent.com/BlueSkyXN/nezha/master/script/install.sh" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/nezha.sh"
chmod 777 "/root/nezha.sh"
blue "你也可以输入 bash /root/nezha.sh 来手动运行"
blue "下载完成"
bash "/root/nezha.sh"
}

function bbr(){
wget -O "/root/tcp.sh" "https://raw.githubusercontent.com/BlueSkyXN/ChangeSource/master/tcp.sh" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/tcp.sh"
chmod 777 "/root/tcp.sh"
blue "下载完成"
blue "你也可以输入 bash /root/tcp.sh 来手动运行"
bash "/root/tcp.sh"
}

function RegionRestrictionCheck(){
bash <(curl -L -s https://raw.githubusercontent.com/lmc999/RegionRestrictionCheck/main/check.sh)
}

function aria(){
wget -O "/root/aria2.sh" "https://raw.githubusercontent.com/P3TERX/aria2.sh/master/aria2.sh" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/aria2.sh"
chmod 777 "/root/aria2.sh"
blue "你也可以输入 bash /root/aria2.sh 来手动运行"
blue "下载完成"
bash "/root/aria2.sh"
}

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
    echo "8.一键安装网盘----Alist"
    echo ""
    echo "=================================================="
    echo ""
    echo "10.x-ui 魔改优化版----Xui_plus"
    echo "11.x-ui 魔改优化版----Xui(魔改另一个版本)"
    echo "12.支持多协议多用户的面板----Xui"
    echo "13.V2Ray 一键安装脚本 & 管理脚本"
    echo "14.Hysteria一键安装----Hi Hysteria"
    echo "15.vmess+ws+tls 一键安装脚本----V2Ray_ws-tls_bash_onekey"
    echo "16.Bash script for installing V2Ray----fhs-install-v2ray"
    echo "17.八合一一键脚本----v2ray-agent"
    echo "18.一键Warp脚本----warp"
    echo "19.功能强大的流媒体解锁检测----RegionRestrictionCheck"
    echo "20.来自大佬的一键BBR管理脚本----BBR"
    echo ""
    echo "=================================================="
    echo ""
    echo "20.非常好用的探针面板----哪吒探针"
    echo "21.一个非常好用的下载工具----aria2"
    echo ""
    echo "=================================================="
    echo "0.退出脚本"
    echo "00.更新脚本"
    echo "=================================================="
    echo ""
    echo ""
    read -p "请输入编号: " menuNumberInput

    # 根据输入执行对应的脚本
    case $menuNumberInput in
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
        "7")
            curl -fsSL "https://alist.nn.ci/v3.sh" | bash -s install
            ;;
        "11")
            bash <(curl -Ls https://raw.githubusercontent.com/FranzKafkaYu/x-ui/master/install.sh)
            break
            ;;
        "11")
            bash <(curl -Ls https://raw.githubusercontent.com/vaxilu/x-ui/master/install.sh)
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
        "17")
            wget -P /root -N --no-check-certificate "https://raw.githubusercontent.com/mack-a/v2ray-agent/master/install.sh" && chmod 700 /root/install.sh && /root/install.sh
            break
            ;;
        "18")
            wget -N https://raw.githubusercontent.com/fscarmen/warp/main/menu.sh && bash menu.sh
            break
            ;;
        "19")
            RegionRestrictionCheck
            break
            ;;
        "19")
            bbr
            break
            ;;
        "20")
            nezha
            break
            ;;
        "21")
            aria
            break
            ;;
        *)
            echo "输入错误！"
            sleep 1
            ;;
    esac
done
