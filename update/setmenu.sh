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
echo -e ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m          ⇱ Menu System Ridwan ⇲          \E[0m"
echo -e ""
echo -e "❇️ Script By : Ridwan"
echo -e "❇️ Exp Script  : Unlimitid"
echo -e "❇️ Version     : Latest Version"
echo -e ""
echo -e "\E[44;1;39m          ⇱ Menu System Ridwan ⇲          \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "❇️ Add Host Atau Domain Anda                                          ⊹"
echo -e "❇️ Edit Port Vps                                                   ⊹"
echo -e "❇️ Autobackup Data VPS                                                ⊹"
echo -e "❇️ Backup Data VPS                                                ⊹"
echo -e "❇️ Restore Data VPS                                            ⊹"
echo -e "❇️ Webmin Menu                                          ⊹"
echo -e "❇️ Limit Bandwith Speed Server                                          ⊹"
echo -e "❇️ Check Usage of VPS Ram                                                 ⊹"
echo -e "❇️ Reboot VPS                                               ⊹"
echo -e "❇️ Speedtest VPS                                         ⊹"
echo -e "❇️ Displaying System                                            ⊹"
echo -e "❇️ Info Script Ridwan                                            ⊹"
echo -e "❇️ Menu                                                ⊹"
echo -e "❇️ EXIT                                                        ⊹"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m            ⇱ Script By Ridwan ⇲             \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
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
