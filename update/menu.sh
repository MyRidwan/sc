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
figlet -f slant RIDWAN - STORE | lolcat
echo -e ""
echo -e "                 ${PURPLE}◥꧁ད❖•ೋ°𖤍°ೋ•❖ཌ꧂◤"
echo -e "${LIGHT}©-------------------------------------------------------------©"
echo -e "${LIGHT}||                  ${CYAN}MENU UTAMA RIDWAN                    ©"
echo -e "${LIGHT}©-------------------------------------------------------------©"
echo -e "${RED}1❖» SSH & OpenVPN MENU                                          ⊹"
echo -e "${RED}2❖» L2TP MENU                                                   ⊹"
echo -e "${ORANGE}3❖» PPTP MENU                                                ⊹"
echo -e "${ORANGE}4❖» SSTP MENU                                                ⊹"
echo -e "${GREEN}5❖» WIREGUARD MENU                                            ⊹"
echo -e "${GREEN}6❖» SHADOWSOCKS MENU                                          ⊹"
echo -e "${BLUE}7❖» SHADOWSOCKSR MENU                                          ⊹"
echo -e "${BLUE}8❖» VMESS MENU                                                 ⊹"
echo -e "${PURPLE}9❖» VLESS MENU                                               ⊹"
echo -e "${PURPLE}10❖» TROJAN GFW MENU                                         ⊹"
echo -e "${CYAN}11❖» TROJAN GO MENU                                            ⊹"
echo -e "${CYAN}12❖» PENGATURAN                                                ⊹"
echo -e "${NC}13❖» EXIT                                                        ⊹"
echo -e "${LIGHT}©-------------------------------------------------------------©"
echo -e "${LIGHT}||                  ${CYAN}SCRIPT BY RIDWAN                     ©"
echo -e "${LIGHT}©-------------------------------------------------------------©"
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
