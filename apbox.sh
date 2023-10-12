#!/bin/bash

function nezha(){
wget -O "/root/nezha.sh" "https://raw.githubusercontent.com/BlueSkyXN/nezha/master/script/install.sh" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/nezha.sh"
chmod 777 "/root/nezha.sh"
bash "/root/nezha.sh"
}

function bbr(){
wget -O "/root/tcp.sh" "https://raw.githubusercontent.com/BlueSkyXN/ChangeSource/master/tcp.sh" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/tcp.sh"
chmod 777 "/root/tcp.sh"
bash "/root/tcp.sh"
}
function hy2(){
wget -N --no-check-certificate https://raw.githubusercontent.com/Misaka-blog/hysteria-install/main/hy2/hysteria.sh && bash hysteria.sh
}
function mtp(){
wget -O "/root/mtp.sh" "https://raw.githubusercontent.com/sunpma/mtp/master/mtproxy.sh" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/mtp.sh"
chmod 777 "/root/mtp.sh"
bash "/root/mtp.sh"
}
function gost(){
wget --no-check-certificate -O gost.sh https://raw.githubusercontent.com/KANIKIG/Multi-EasyGost/master/gost.sh && chmod +x gost.sh && ./gost.sh
}
function RegionRestrictionCheck(){
bash <(curl -L -s https://raw.githubusercontent.com/lmc999/RegionRestrictionCheck/main/check.sh)
}

function aria(){
wget -O "/root/aria2.sh" "https://raw.githubusercontent.com/P3TERX/aria2.sh/master/aria2.sh" --no-check-certificate -T 30 -t 5 -d
chmod +x "/root/aria2.sh"
chmod 777 "/root/aria2.sh"
bash "/root/aria2.sh"
}

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
    echo "8.一键安装网盘----Alist"
    echo "9.一键安装面板----qinglong"
    echo "10.一键安装论坛----flarum"
    echo "=================================================="
    echo "11.x-ui 魔改优化版----Xui_plus"
    echo "12.x-ui 魔改优化版----Xui(魔改另一个版本)"
    echo "13.支持多协议多用户的面板----Xui"
    echo "14.V2Ray 一键安装脚本 & 管理脚本"
    echo "15.Hysteria一键安装----Hi Hysteria"
    echo "16.vmess+ws+tls 一键安装脚本----V2Ray_ws-tls_bash_onekey"
    echo "17.Bash script for installing V2Ray----fhs-install-v2ray"
    echo "18.八合一一键脚本----v2ray-agent"
    echo "19.一键Warp脚本----warp"
    echo "20.功能强大的流媒体解锁检测----RegionRestrictionCheck"
    echo "21.功能强大的流媒体解锁检测(另一个)"
    echo "22.来自大佬的一键BBR管理脚本----BBR"
    echo "23.全面测试机器----superbench"
    echo "24.多线路网速测试----speed"
    echo "25.单线程三网测试----hyperspeed"
    echo "26.一键配置中转----Gost"
    echo "27.一键部署歇斯底里2----hy2"
    echo "=================================================="
    echo "31.非常好用的探针面板----哪吒探针"
    echo "32.一个非常好用的下载工具----aria2"
    echo "33.一个Telegram官方代理----mtp"
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
        "8")
            curl -fsSL "https://alist.nn.ci/v3.sh" | bash -s install
            ;;
        "9")
            wget -O qinglong.sh https://raw.githubusercontent.com/Aorp2008/Airp_sh/main/qinglong.sh && chmod +x qinglong.sh && clear && ./qinglong.sh
            ;;
        "10")
            wget -O flarum.sh https://raw.githubusercontent.com/Aorp2008/Airp_sh/main/flarum.sh && chmod +x flarum.sh && clear && ./flarum.sh
            ;;
        "11")
            bash <(curl -Ls https://raw.githubusercontent.com/FranzKafkaYu/x-ui/master/install.sh)
            break
            ;;
        "12")
            wget -N --no-check-certificate https://raw.githubusercontent.com/misaka-gh/x-ui/main/install.sh && bash install.sh
            break
            ;;
        "13")
            bash <(curl -Ls https://raw.githubusercontent.com/vaxilu/x-ui/master/install.sh)
            break
            ;;
        "14")
            bash <(wget -qO- -o- https://git.io/v2ray.sh)
            break
            ;;
        "15")
            bash <(curl -fsSL https://git.io/hysteria.sh)
            break
            ;;
        "16")
            wget -N --no-check-certificate -q -O install.sh "https://raw.githubusercontent.com/wulabing/V2Ray_ws-tls_bash_onekey/master/install.sh" && chmod +x install.sh && bash install.sh
            break
            ;;
        "17")
            bash <(wget -qO- -o- https://git.io/v2ray.sh)
            break
            ;;
        "18")
            wget -P /root -N --no-check-certificate "https://raw.githubusercontent.com/mack-a/v2ray-agent/master/install.sh" && chmod 700 /root/install.sh && /root/install.sh
            break
            ;;
        "19")
            wget -N https://raw.githubusercontent.com/fscarmen/warp/main/menu.sh && bash menu.sh
            break
            ;;
        "20")
            RegionRestrictionCheck
            break
            ;;
        "21")
            bash <(curl -L -s check.unlock.media)
            break
            ;;
        "22")
            bbr
            break
            ;;
        "23")
            wget -qO- https://down.vpsaff.net/linux/speedtest/superbench.sh | sudo bash
            break
            ;;
        "24")
            bash <(wget -qO- https://raw.githubusercontent.com/chiron688/linux_jobs/main/speed.sh)
            break
            ;;
        "25")
            bash <(curl -so- https://raw.githubusercontent.com/linconbb/bim-core/main/hyperspeed.sh)
            break
            ;;
        "26")
            gost
            break
            ;;
        "27")
            hy2
            break
            ;;
        "31")
            nezha
            break
            ;;
        "32")
            aria
            break
            ;;
        "33")
            mtp
            break
            ;;
        *)
            echo "输入错误！"
            sleep 1
            ;;
    esac
done
