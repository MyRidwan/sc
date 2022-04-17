#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
#warna
echo -e "${LIGHT}©-------------------------------------------------------------©"
echo -e "\E[44;1;39m            ⇱ Menu V2ray ⇲             \E[0m"
echo -e "${LIGHT}©-------------------------------------------------------------©"
echo -e "$yy 1$y. Create Account XRAYS Vmess Websocket"
echo -e "$yy 2$y. Delete Account XRAYS Vmess Websocket"
echo -e "$yy 3$y. Extending Account XRAYS Vmess Active Life"
echo -e "$yy 4$y. Check User Login XRAYS Vmess"
echo -e "$yy 5$y. Renew Certificate XRAYS Account"
echo -e "$yy 6$y. Menu"
echo -e "$yy 7$y. Exit"
echo -e "${LIGHT}©-------------------------------------------------------------©"
echo -e "\E[44;1;39m            ⇱ Menu V2ray ⇲             \E[0m"
echo -e "${LIGHT}©-------------------------------------------------------------©"
read -p "Select From Options [ 1 - 7 ] : " menu
echo -e ""
case $menu in
1)
addvmess
;;
2)
delvmess
;;
3)
renewvmess
;;
4)
cekvmess
;;
5)
certv2ray
;;
6)
clear
menu
;;
7)
clear
exit
;;
*)
clear
menu
;;
esac
