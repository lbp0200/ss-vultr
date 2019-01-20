#!/bin/sh

PWD=PhrelnesI
PORT=8388

apt update
apt install -y curl shadowsocks-libev

modprobe tcp_bbr
echo "tcp_bbr" >> /etc/modules-load.d/modules.conf
echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf
sysctl -p

curl -L -H "Cache-Control: no-cache" -o /etc/shadowsocks-libev/config.json https://raw.githubusercontent.com/lbp0200/ss-vultr/master/config.json

sed -i "s/PhrelnesI/${PWD}/g" "/etc/shadowsocks-libev/config.json"
sed -i "s/8388/${PORT}/g" "/etc/shadowsocks-libev/config.json"

systemctl restart shadowsocks-libev.service