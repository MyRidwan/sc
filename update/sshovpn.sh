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
echo -e "\E[44;1;39m            ⇱ Menu Ssh & Ovpn ⇲             \E[0m"
echo -e "${LIGHT}©-------------------------------------------------------------©"
echo -e "$yy 1$y.  Create SSH & OpenVPN Account"
echo -e "$yy 2$y.  Generate SSH & OpenVPN Trial Account"
echo -e "$yy 3$y.  Extending SSH & OpenVPN Account Active Life"
echo -e "$yy 4$y.  Check User Login SSH & OpenVPN"
echo -e "$yy 5$y.  Daftar Member SSH & OpenVPN"
echo -e "$yy 6$y.  Delete SSH & OpenVpn Account"
echo -e "$yy 7$y.  Delete User Expired SSH & OpenVPN"
echo -e "$yy 8$y.  Set up Autokill SSH"
echo -e "$yy 9$y.  Displays Users Who Do Multi Login SSH"
echo -e "$yy 10$y. Restart All Service"
echo -e "$yy 11$y. Menu Utama"
echo -e "$yy 12$y. Exit"
echo -e "${LIGHT}©-------------------------------------------------------------©"
echo -e "\E[44;1;39m            ⇱ Menu Ssh & Ovpn ⇲             \E[0m"
echo -e "${LIGHT}©-------------------------------------------------------------©"
read -p "Select From Options [ 1 - 12 ] : " menu
echo -e ""
case $menu in
1)
addssh
;;
2)
trialssh
;;
3)
renewssh
;;
4)
cekssh
;;
5)
member
;;
6)
delssh
;;
7)
delexp
;;
8)
autokill
;;
9)
ceklim
;;
10)
restart
;;
11)
menu
;;
12)
clear
exit
;;
*)
clear
menu
;;
esac
