#!/bin/bash
IP=$( curl -s https://ipinfo.io/ip/ )
Name='Single Port'
Exp='LifeTime'
# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'
####
clear
GREEN='\033[0;32m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m'
yl='\e[32;1m'
bl='\e[36;1m'
gl='\e[32;1m'
rd='\e[31;1m'
mg='\e[0;95m'
blu='\e[34m'
op='\e[35m'
or='\033[1;33m'
bd='\e[1m'
color1='\e[031;1m'
color2='\e[34;1m'
color3='\e[0m'
# COLOR VALIDATION
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# =========================================
echo -e ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m           ⇱ INFORMASI VPS SERVER ⇲               \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "□ Sever Uptime        = $( uptime -p  | cut -d " " -f 2-10000 ) "
echo -e "□ Current Time        = $( date -d "0 days" +"%d-%m-%Y | %X" )"
echo -e "□ Operating System    = $( cat /etc/os-release | grep -w PRETTY_NAME | sed 's/PRETTY_NAME//g' | sed 's/=//g' | sed 's/"//g' ) ( $( uname -m) )"
echo -e "□ Current Domain      = $( cat /etc/xray/domain )"
echo -e "□ Server IP           = ${IP}"
echo -e "□ Clients Name        = $Name"
echo -e "□ Exfire Script VPS   = $Exp"
echo -e "□ Time Reboot VPS     = 00:00 ${GREEN}( Jam 12 Malam )${NC}"
echo -e "□ License Limit       = 3 VPS ${GREEN}( Persatu IP VPS )${NC}"
echo -e "□ AutoScript By Dev   = XDRG ${GREEN}( RIDWAN-DEV112 )${NC}"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m             ⇱ MENU UTAMA RIDWAN ⇲                \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "  ${COLOR1}[01]${NC} • [${YELLOW}Menu${NC}] SSH-WS   ${COLOR1}[06]${NC} • [${YELLOW}Menu${NC}] SERVICES  $COLOR1 $NC"
echo -e "  ${COLOR1}[02]${NC} • [${YELLOW}Menu${NC}] VMESS    ${COLOR1}[07]${NC} • [${YELLOW}Menu${NC}] SETTINGS  $COLOR1 $NC"
echo -e "  ${COLOR1}[03]${NC} • [${YELLOW}Menu${NC}] VLESS    ${COLOR1}[08]${NC} • CEK LOGIN V2RAY  $COLOR1 $NC"
echo -e "  ${COLOR1}[04]${NC} • [${YELLOW}Menu${NC}] TROJAN   ${COLOR1}[09]${NC} • EDIT PATH V2RAY $COLOR1 $NC"
echo -e "  ${COLOR1}[05]${NC} • [${YELLOW}Menu${NC}] TR-GO    ${COLOR1}[10]${NC} • EXIT  $COLOR1 $NC"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m               ⇱ SCRIPT BY RIDWAN ⇲               \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
read -p "Select From Options [ 1 - 13 ] : " menu
case $menu in
1)
clear
sshovpnmenu
;;
2)
clear
vmessmenu
;;
3)
clear
vlessmenu
;;
4)
clear
trmenu
;;
5)
clear
trgomenu
;;
6)
clear
running
;;
7)
clear
setmenu
;;
8)
clear
cekxray
;;
9)
clear
nano /etc/xray/config.json
;;
10)
clear
exit
;;
16)
clear
exit
;;
*)
clear
menu
;;
esac