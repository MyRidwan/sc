#!/bin/bash
#!/bin/bash
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
echo -e "❇️ 1) Add Host Atau Domain Anda                                          "
echo -e "❇️ 2) Edit Port Vps                                                   "
echo -e "❇️ 3) Autobackup Data VPS                                                "
echo -e "❇️ 4) Backup Data VPS                                                "
echo -e "❇️ 5) Restore Data VPS                                            "
echo -e "❇️ 6) Webmin Menu                                          "
echo -e "❇️ 7) Limit Bandwith Speed Server                                          "
echo -e "❇️ 8) Check Usage of VPS Ram                                                 "
echo -e "❇️ 9) Reboot VPS                                               "
echo -e "❇️ 10) Speedtest VPS                                         "
echo -e "❇️ 11) Displaying System                                            "
echo -e "❇️ 12) Info Script Ridwan                                            "
echo -e "❇️ 13) Menu                                                "
echo -e "❇️ 14) EXIT                                                        "
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
