#!/bin/bash
clear
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
echo -e "                 ${PURPLE}◥꧁ད❖•ೋ°𖤍°ೋ•❖ཌ꧂◤"
echo -e "${LIGHT}क▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬क"
echo -e "${LIGHT}||                  ${CYAN}MENU UTAMA RIDWAN                   ${LIGHT}||"
echo -e "${LIGHT}❖━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━❖"
echo -e "${RED}❖» SSH & OpenVPN MENU                                   ⊹"
echo -e "${RED}❖» L2TP MENU                                               ⊹"
echo -e "${ORANGE}❖» PPTP MENU                                               ⊹"
echo -e "${ORANGE}❖» SSTP MENU                                               ⊹"
echo -e "${GREEN}❖» WIREGUARD MENU                                        ⊹"
echo -e "${GREEN}❖» SHADOWSOCKS MENU                                    ⊹"
echo -e "${BLUE}❖» SHADOWSOCKSR MENU                                   ⊹"
echo -e "${BLUE}❖» VMESS MENU                                              ⊹"
echo -e "${PURPLE}❖» VLESS MENU                                              ⊹"
echo -e "${PURPLE}❖» TROJAN GFW MENU                                      ⊹"
echo -e "${CYAN}❖» TROJAN GO MENU                                         ⊹"
echo -e "${CYAN}❖» PENGATURAN                                              ⊹"
echo -e "${NC}❖» EXIT                                                        ⊹"
echo -e "${LIGHT}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━✫"
echo -e "${LIGHT}_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-"
read -p "Select From Options [ 1 - 13 ] : " menu
case $menu in
1)
clear
sshovpnmenu
;;
2)
clear
l2tpmenu
;;
3)
clear
pptpmenu
;;
4)
clear
sstpmenu
;;
5)
clear
wgmenu
;;
6)
clear
ssmenu
;;
7)
clear
ssrmenu
;;
8)
clear
vmessmenu
;;
9)
clear
vlessmenu
;;
10)
clear
trmenu
;;
11)
clear
trgomenu
;;
12)
clear
setmenu
;;
13)
clear
exit
;;
*)
clear
menu
;;
esac
