#!/bin/bash
# My Telegram : https://t.me/Akbar218
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
MYIP=$(wget -qO- icanhazip.com);
IZIN=$( curl https://myridwan.github.io/izin | grep $MYIP )
echo "Memeriksa Hak Akses VPS..."
if [ $MYIP = $IZIN ]; then
clear
echo -e "${CYAN}Akses Diizinkan...${off}"
sleep 1
else
clear
echo -e "${PURPLE}Akses Diblokir!${off}"
echo "Hanya Untuk Pengguna Berbayar!"
echo "Silahkan Hubungi Admin"
exit 0
fi
clear
echo "Checking VPS"
clear
read -p "Username : " User
egrep "^$User" /etc/passwd >/dev/null
if [ $? -eq 0 ]; then
read -p "Day Extend : " Days
Today=`date +%s`
Days_Detailed=$(( $Days * 86400 ))
Expire_On=$(($Today + $Days_Detailed))
Expiration=$(date -u --date="1970-01-01 $Expire_On sec GMT" +%Y/%m/%d)
Expiration_Display=$(date -u --date="1970-01-01 $Expire_On sec GMT" '+%d %b %Y')
passwd -u $User
usermod -e  $Expiration $User
egrep "^$User" /etc/passwd >/dev/null
echo -e "$Pass\n$Pass\n"|passwd $User &> /dev/null
clear
echo -e ""
echo -e "========================================"
echo -e ""
echo -e "    Username        :  $User"
echo -e "    Days Added      :  $Days Days"
echo -e "    Expires on      :  $Expiration_Display"
echo -e ""
echo -e "========================================"
read -n 1 -s -r -p "   Press [ Enter ] to back on menu"
menu
else
clear
echo -e ""
echo -e "======================================"
echo -e ""
echo -e "        Username Doesnt Exist        "
echo -e ""
echo -e "======================================"
read -n 1 -s -r -p "   Press [ Enter ] to back on menu"
menu
fi
