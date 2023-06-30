NC='\e[0m'
DEFBOLD='\e[39;1m'
RB='\e[31;1m'
GB='\e[32;1m'
YB='\e[33;1m'
BB='\e[34;1m'
MB='\e[35;1m'
CB='\e[35;1m'
WB='\e[37;1m'
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
NUMBER_OF_CLIENTS=$(grep -c -E "^### " "/etc/xray/ssh")
if [[ ${NUMBER_OF_CLIENTS} == '0' ]]; then
clear
echo -e "${CYAN}————————————————————————————————————————————————————${NC}"
echo -e "               ${WB}Detaill Ssh Account${NC}              "
echo -e "${CYAN}————————————————————————————————————————————————————${NC}"
echo -e "  ${YB}You have no existing clients!${NC}"
echo -e "${CYAN}————————————————————————————————————————————————————${NC}"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
xlord
fi
clear
echo -e "${CYAN}————————————————————————————————————————————————————${NC}"
echo -e "               ${WB}Detaill Ssh Account${NC}              "
echo -e "${CYAN}————————————————————————————————————————————————————${NC}"
echo -e " ${YB}User  Expired${NC}  "
echo -e "${CYAN}————————————————————————————————————————————————————${NC}"
grep -E "^### " "/etc/xray/ssh | cut -d ' ' -f 2-3-4 | column -t | sort | uniq
echo ""
echo -e "${YB}tap enter to go back${NC}"
echo -e "${CYAN}————————————————————————————————————————————————————${NC}"
read -rp "Input Username : " user
if [ -z $user ]; then
fi
done
Login=$(grep -E "^### " "/etc/xray/ssh" | cut -d ' ' -f 2 | sed -n "${user}"p)
exp=$(grep -E "^### " "/etc/xray/ssh" | cut -d ' ' -f 3 | sed -n "${user}"p)
Pass=$(grep -E "^###" "/etc/xray/ssh" | cut -d ' ' -f 4 | sed -n "${user}"p)

echo -e "$COLOR1————————————————————————————————${NC}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 ${NC} ${COLBG1}${WH}• SSH Account •              ${NC} $COLOR1 $NC" | tee -a /etc/log-create-user.log
echo -e "$COLOR1————————————————————————————————${NC}" | tee -a /etc/log-create-user.log
#echo -e "$COLOR1————————————————————————————————${NC}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 $NC  ${WH}Username   ${COLOR1}: ${WH}$Login"  | tee -a /etc/log-create-user.log
echo -e "$COLOR1 $NC  ${WH}Password   ${COLOR1}: ${WH}$Pass" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 $NC  ${WH}Expired On ${COLOR1}: ${WH}$exp"  | tee -a /etc/log-create-user.log
echo -e "$COLOR1————————————————————————————————${NC}" | tee -a /etc/log-create-user.log
#echo -e "$COLOR1————————————————————————————————${NC}" | tee -a /etc/log-create-user.log
#echo -e "$COLOR1 $NC  ${WH}ISP        ${COLOR1}: ${WH}$ISP" | tee -a /etc/log-create-user.log
#echo -e "$COLOR1 $NC  ${WH}City       ${COLOR1}: ${WH}$CITY" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 $NC  ${WH}IP         ${COLOR1}: ${WH}$IP" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 $NC  ${WH}Host       ${COLOR1}: ${WH}$domen" | tee -a /etc/log-create-user.log
#echo -e "$COLOR1 $NC  ${WH}Wildcard   ${COLOR1}: ${WH}(bug.com).$domen" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 $NC  ${WH}OpenSSH    ${COLOR1}: ${WH}22" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 $NC  ${WH}Dropbear   ${COLOR1}: ${WH}143,109" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 $NC  ${WH}SSH-WS     ${COLOR1}: ${WH}80,8080" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 $NC  ${WH}SSH-SSL-WS ${COLOR1}: ${WH}443" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 $NC  ${WH}SSL/TLS    ${COLOR1}: ${WH}8443,8880" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 $NC  ${WH}Ovpn Ws    ${COLOR1}: ${WH}2086" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 $NC  ${WH}Port TCP   ${COLOR1}: ${WH}$ovpn" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 $NC  ${WH}Port UDP   ${COLOR1}: ${WH}$ovpn2,1-2288" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 $NC  ${WH}Port SSL   ${COLOR1}: ${WH}990" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 $NC  ${WH}OVPN TCP   ${COLOR1}: ${WH}http://$IP:89/tcp.ovpn" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 $NC  ${WH}OVPN UDP   ${COLOR1}: ${WH}http://$IP:89/udp.ovpn" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 $NC  ${WH}OVPN SSL   ${COLOR1}: ${WH}http://$IP:89/ssl.ovpn" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 $NC  ${WH}UDPGW      ${COLOR1}: ${WH}7100-7300" | tee -a /etc/log-create-user.log
echo -e "$COLOR1————————————————————————————————${NC}" | tee -a /etc/log-create-user.log
#echo -e "$COLOR1————————————————————————————————${NC}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1               SETTINGAN SSH PORT 80/443"
echo -e "$COLOR1————————————————————————————————${NC}" | tee -a /etc/log-create-user.log
echo -e "SSH-80      : $domen:80@$Login:$Pass"
echo -e "SSH-443     : $domen:443@$Login:$Pass"
echo -e "$COLOR1————————————————————————————————${NC}" | tee -a /etc/log-create-user.log
#echo -e "$COLOR1————————————————————————————————${NC}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 $NC  ${WH}⚡ SSH UDP ⚡${COLOR1}: ${WH}$domen:1-65535@$Login:$Pass"
echo -e "$COLOR1————————————————————————————————${NC}" | tee -a /etc/log-create-user.log
#echo -e "$COLOR1┌────────────────────┐${NC}" | tee -a /etc/log-create-user.log
#echo -e "$COLOR1 ${NC}  ${WH}           Payload WSS                                       ${NC}" | tee -a /etc/log-create-user.log
#echo -e "$COLOR1${NC}${WH}GET /cdn-cgi/trace HTTP/1.1[crlf]Host: (bug.mu)[crlf][crlf]CF-RAY / HTTP/1.1[crlf]Host: [host][crlf]Upgrade: Websocket[crlf]Connection: Keep-Alive[crlf]User-Agent: [ua][crlf]Upgrade: websocket[crlf][crlf]${NC}" | tee -a /etc/log-create-user.log
#echo -e "$COLOR1└────────────────────┘${NC}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1————————————————————————————————${NC}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 ${NC}  ${WH}           Payload WS                   ${NC}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1${NC}${WH}GET / HTTP/1.1[crlf]Host: $domen[crlf]Upgrade: websocket[crlf][crlf]${NC}" | tee -a /etc/log-create-user.log
#echo -e "$COLOR1————————————————————————————————${NC}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1————————————————————————————————${NC}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1 ${NC}  ${WH}           Payload WSS                  ${NC}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1${NC}${WH}GET wss://$domen [protocol][crlf]Host: ${domen}[crlf]Upgrade: websocket[crlf][crlf]${NC}" | tee -a /etc/log-create-user.log
echo -e "$COLOR1————————————————————————————————${NC}" | tee -a /etc/log-create-user.log
#echo -e "$COLOR1————————————————————————————————${NC}" | tee -a /etc/log-create-user.log
#echo -e "$COLOR1 ${NC}    ${WH}• $author •${NC}                 $COLOR1 $NC" | tee -a /etc/log-create-user.log
#echo -e "$COLOR1————————————————————————————————${NC}" | tee -a /etc/log-create-user.log
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
xlord
