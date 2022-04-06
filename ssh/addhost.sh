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
sys=$(cat /etc/v2ray/domain)
Geogabut=paoandest@gmail.com
Geo=1d158d0efc4eef787222cefff0b6d20981462
DM1=geoganteng.my.id
DM2=geoganteng.tech
DM3=apa-itu.website
DM4=vip-server.xyz
echo -e ""
echo -e "${cyan}=================================${off}"
echo -e " DNS Record For Custom Subdomain" | lolcat
echo -e "${red}---------------------------------${off}"
echo -e "      SILAHKAN PILIH DOMAIN " | lolcat
echo -e "${cyan}=================================${off}"
echo -e "${green}"
echo -e "    1 ⸩  $DM1"
echo -e "    2 ⸩  $DM2"
echo -e "    3 ⸩  $DM3"
echo -e "    4 ⸩  $DM4"
echo -e "${off}"
echo -e "---------------------------------" | lolcat
echo -e "    ${green}0 ⸩  Custom Domain ${off}"
echo -e "    ${green}x ⸩  Keluar ${off}"
echo -e "${cyan}=================================${off}"
echo ""
read -p "   [☆]  Masukkan Nomor :  " nom
if [[ $nom == '1' ]]; then
DOMAIN=$DM1
CF_ID=$Geogabut
CF_KEY=$Geo
elif [[ $nom == '2' ]]; then
DOMAIN=$DM2
CF_ID=$Dhansss
CF_KEY=$Dhans
elif [[ $nom == '3' ]]; then
DOMAIN=$DM3
CF_ID=$Geogabut
CF_KEY=$Geo
elif [[ $nom == '4' ]]; then
DOMAIN=$DM4
CF_ID=$Geogabut
CF_KEY=$Geo
elif [[ $nom == '0' ]]; then
echo -e "${green}Anda Harus Mempunyai Email Akun Cloudflare Dan Domain Aktif!${off}"
echo -e "${green}Untuk Api Key Bisa Anda Dapat Di Profil Akun Cloudflare Anda.${off}"
sleep 1
echo ""
read -rp "Masukkan Domain Anda : " -e DOMAIN
if [[ $DOMAIN == $DM1 ]] || [[ $DOMAIN == $DM2 ]] || [[ $DOMAIN == $DM3 ]] || [[ $DOMAIN == $DM4 ]]; then
sleep 1
echo -e "${red}Masukkan Domain Mu Sendiri! Bukan Domain System!!!${off}"
sleep 1
echo ""
exit 0
fi
sleep 0.5
echo ""
read -rp "Masukkan Email Cloudflare : " -e CF_ID
sleep 0.5
echo ""
read -rp "Masukkan Api Key Cloudflare : " -e CF_KEY
clear
elif [[ $nom == 'x' ]]; then
clear
menu
else
echo -e "${red}Masukkan Nomor Yang Benar!${off}"
sleep 1
clear
hostnya
fi
sleep 1
if [[ $nom == '0' ]]; then
echo -e "${cyan}Domain Anda :${off}${green} ${DOMAIN} ${off}"
else
echo -e "${cyan}Domain Dipilih :${off}${green} ${DOMAIN} ${off}"
fi
echo -e ""
read -rp "Masukkan Subdomain: " -e sub
echo -e "${green}Menganalisis Subomain...${off}"
sleep 0.5
clear

SUB_DOMAIN=${sub}.${DOMAIN}
set -euo pipefail
IP=$(wget -qO- ipinfo.io/ip);
echo -e "${cyan}Pointing DNS Untuk Domain${off} ${green}${SUB_DOMAIN}...${off}"
sleep 1
clear
ZONE=$(curl -sLX GET "https://api.cloudflare.com/client/v4/zones?name=${DOMAIN}&status=active" \
-H "X-Auth-Email: ${CF_ID}" \
-H "X-Auth-Key: ${CF_KEY}" \
-H "Content-Type: application/json" | jq -r .result[0].id)
if [[ $ZONE == 'null' ]] || [[ $ZONE == "" ]]; then
echo -e "${red}ERROR!${off} ${green}Result Gagal, Kemungkinan Api Key Tidak Valid!${off}"
sleep 1
exit 0
fi
RECORD=$(curl -sLX GET "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records?name=${SUB_DOMAIN}" \
-H "X-Auth-Email: ${CF_ID}" \
-H "X-Auth-Key: ${CF_KEY}" \
-H "Content-Type: application/json" | jq -r .result[0].id)
if [[ "${#RECORD}" -le 10 ]]; then
RECORD=$(curl -sLX POST "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records" \
-H "X-Auth-Email: ${CF_ID}" \
-H "X-Auth-Key: ${CF_KEY}" \
-H "Content-Type: application/json" \
--data '{"type":"A","name":"'${SUB_DOMAIN}'","content":"'${IP}'","ttl":120,"proxied":false}' | jq -r .result.id)
fi
RESULT=$(curl -sLX PUT "https://api.cloudflare.com/client/v4/zones/${ZONE}/dns_records/${RECORD}" \
-H "X-Auth-Email: ${CF_ID}" \
-H "X-Auth-Key: ${CF_KEY}" \
-H "Content-Type: application/json" \
--data '{"type":"A","name":"'${SUB_DOMAIN}'","content":"'${IP}'","ttl":120,"proxied":false}')

echo "IP=$SUB_DOMAIN" >> /var/lib/premium-script/ipvps.conf

sleep 0.5
echo -e "${cyan}=================================${off}"
echo -e "     ${red}DOMAIN BERHASIL DISIMPAN${off}"
echo -e "${cyan}=================================${off}"
echo -e ""
echo -e "${green}Domain Anda Sekarang :${off} ${cyan}$SUB_DOMAIN${off}"
echo -e ""
echo -e "${cyan}=================================${off}"
echo -e "${red}NOTE :${off}"
echo -e "${green}Domain Ini Tidak Support Wildcard Atau Multi Subdomain!"
echo -e "Untuk VPN L2TP, SSTP, PPTP, Dan WIREGUARD,"
echo -e "Anda Harus Menggunakan Domain System${off} ${cyan}$sys $off}"
echo ""
rm -rf /etc/xray/domain
echo $domain > /etc/xray/domain
certv2ray
