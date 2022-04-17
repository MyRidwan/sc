#!/bin/bash
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
echo -e "\E[44;1;39m            ⇱ Menu System ⇲             \E[0m"
echo -e "${LIGHT}©-------------------------------------------------------------©"
echo -e "${RED}1❖»  Add Host Atau Domain Anda"
echo -e "${RED}2❖»  Edit Port Vps"
echo -e "${ORANGE}3❖»  Autobackup Data VPS"
echo -e "${ORANGE}4❖»  Backup Data VPS"
echo -e "${GREEN}5❖»  Restore Data VPS"
echo -e "${GREEN}6❖»  Webmin Menu"
echo -e "${BLUE}7❖»  Limit Bandwith Speed Server"
echo -e "${BLUE}8❖».  Check Usage of VPS Ram"
echo -e "${PURPLE}9❖»  Reboot VPS"
echo -e "${PURPLE}10❖» Speedtest VPS"
echo -e "${CYAN}11❖» Displaying System Information"
echo -e "${CYAN}12❖» Info Script Ridwan Store Install"
echo -e "${GREEN}13❖» Menu"
echo -e "${GREEN}14❖» Exit"
echo -e "${LIGHT}©-------------------------------------------------------------©"
echo -e "\E[44;1;39m            ⇱ Menu System ⇲             \E[0m"
echo -e "${LIGHT}©-------------------------------------------------------------©"
echo -e "$ySCRIP MOD X RIDWAN"
echo -e ""
read -p "Select From Options [ 1 - 60 ] : " menu
echo -e ""
case $menu in
1)
addhost
;;
2)
changeport
;;
3)
autobackup
;;
4)
backup
;;
5)
restore
;;
6)
wbmn
;;
7)
limitspeed
;;
8)
ram
;;
9)
reboot
;;
10)
speedtest
;;
11)
info
;;
12)
about
;;
13)
clear
menu
;;
14)
clear
exit
;;
*)
clear
menu
;;
esac
