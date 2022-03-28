#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
apt install jq curl -y
DOMAIN=nezavpn.my.id
sub=$(</dev/urandom tr -dc a-z0-9 | head -c4)
echo $sub > /root/cfku
SUB_DOMAIN=${sub}.nezavpn.my.id
CF_ID=neza.afdhan@gmail.com
CF_KEY=144fa068a8533d3f4ce31fab53333bb04cac3
echo "nezavpn.my.id" > /root/sdomain
echo $SUB_DOMAIN > /root/subdomain

set -euo pipefail
IP=$(wget -qO- ipinfo.io/ip);
echo "Record DNS ${SUB_DOMAIN}..."
ZONE=$(curl -sLX GET "https://api.cloudflare.com/client/v4/zones?name=${DOMAIN}&status=active" \
     -H "X-Auth-Email: ${CF_ID}" \
     -H "X-Auth-Key: ${CF_KEY}" \
     -H "Content-Type: application/json" | jq -r .result[0].id)

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
echo "Host : $SUB_DOMAIN"
echo $SUB_DOMAIN > /root/domain

#wget -O /usr/bin/dhn "https://raw.githubusercontent.com/Afdhan/CDN/main/A/I/U/E/O/dhn.sh"
#wget -O /usr/bin/dhn2 "https://raw.githubusercontent.com/Afdhan/CDN/main/A/I/U/E/O/dhn2.sh"
#wget -O /usr/bin/dhn3 "https://raw.githubusercontent.com/Afdhan/CDN/main/A/I/U/E/O/dhn3.sh"
#wget -O /usr/bin/nza "https://raw.githubusercontent.com/Afdhan/CDN/main/A/I/U/E/O/nza.sh"
#wget -O /usr/bin/wcc "https://raw.githubusercontent.com/Afdhan/CDN/main/A/I/U/E/O/cs_wc.sh"

#chmod +x /usr/bin/dhn
#chmod +x /usr/bin/dhn2
#chmod +x /usr/bin/dhn3
#chmod +x /usr/bin/nza
#chmod +x /usr/bin/wcc

echo -e "Done Record Domain For VPS" | lolcat
figlet -f slant ridwan | lolcat
sleep 1

rm -f /root/cf.sh
