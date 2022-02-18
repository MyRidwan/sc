#!/bin/bash
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
# Getting
MYIP=$(wget -qO- ipinfo.io/ip);
IZIN=$( curl https://myridwan.github.io/izin | grep $MYIP )
echo "Memeriksa Hak Akses VPS..."
if [ $MYIP = $IZIN ]; then
echo -e "${NC}${GREEN}Permission Accepted...${NC}"
else
echo -e "${NC}${RED}Permission Denied!${NC}";
echo -e "${NC}${LIGHT}Please Contact Admin!!"
echo -e "${NC}${LIGHT}Facebook : https://m.facebook.com/Ridwan"
echo -e "${NC}${LIGHT}WhatsApp : 085781385825"
echo -e "${NC}${LIGHT}Telegram : https://t.me/Rifan_aje"
exit 0
fi
clear
read -rp "Domain/Host : " -e domain
echo "IP=$domain" >>/var/lib/akbarstorevpn/ipvps.conf
rm -rf /etc/xray/domain
echo $domain > /etc/xray/domain
certv2ray


