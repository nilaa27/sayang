#!/bin/bash
TIME=$(date +'%Y-%m-%d %H:%M:%S')
MYIP=$(wget -qO- ipinfo.io/ip)
ISP=$(wget -qO- ipinfo.io/org)
domain=$(cat /etc/xray/domain)
CITY=$(curl -s ipinfo.io/city)
NAMES=$(whoami)
RAMMS=$(free -m | awk 'NR==2 {print $2}')
NAMECOM=$(wget -qO- ipinfo.io/ip)
OS=$(cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g')

message="
<u>XLORD TUNNELING</u> <b>ONLINE!!!</b>
<code>DOMAIN    : </code><code>${domain} (${MYIP})</code>
<code>ISP       : </code><code>${ISP}, ${CITY}</code>
<code>RAM       : </code><code>${RAMMS}MB</code>
<code>LINUX     : </code><code>${OS}</code>
"

curl -s -X POST "https://api.telegram.org/bot5819036885:AAGBzzxgSCojZ80kQVYtq_oAeLlP1lvxUgY/sendmessage" \
-d "chat_id=1356873527" -d "parse_mode=html" -d "text=$message" >/dev/null 2>&1
