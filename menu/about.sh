#!/bin/bash
#Script Premium xlord

BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIBlue='\033[1;94m'       # Blue
BIPurple='\033[1;95m'     # Purple
BICyan='\033[1;96m'       # Cyan
BIWhite='\033[1;97m'      # White
UWhite='\033[4;37m'       # White
On_IPurple='\033[0;105m'  #
On_IRed='\033[0;101m'
IBlack='\033[0;90m'       # Black
IRed='\033[0;91m'         # Red
IGreen='\033[0;92m'       # Green
IYellow='\033[0;93m'      # Yellow
IBlue='\033[0;94m'        # Blue
IPurple='\033[0;95m'      # Purple
ICyan='\033[0;96m'        # Cyan
IWhite='\033[0;97m'       # White
NC='\e[0m'
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }

# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'

# // Export Banner Status Information
export EROR="[${RED} EROR ${NC}]"
export INFO="[${YELLOW} INFO ${NC}]"
export OKEY="[${GREEN} OKEY ${NC}]"
export PENDING="[${YELLOW} PENDING ${NC}]"
export SEND="[${YELLOW} SEND ${NC}]"
export RECEIVE="[${YELLOW} RECEIVE ${NC}]"

# // Export Align
export BOLD="\e[1m"
export WARNING="${RED}\e[5m"
export UNDERLINE="\e[4m"

clear
echo -e "\e[1;32m══════════════════ Autoscript PREMIUM ══════════════════\e[0m" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Service & Port"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   $NC    ${sc} [INFORMASI SSH SERVICE PORT] ${NC}" | lolcat | tee -a log-install.txt
echo "   - ——————————————————————————————————————"
echo "   - OpenSSH                 : 22"  | tee -a log-install.txt
echo "   - Stunnel4                : 443"  | tee -a log-install.txt
echo "   - Udp Custom              : 1-65535"  | tee -a log-install.txt
echo "   - Websocket SSH(HTTP)     : 80, 8880"  | tee -a log-install.txt
echo "   - Websocket SSL(HTTPS)    : 443"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   $NC    ${sc} [INFORMASI Grpc, Bdvp, Ngnx] ${NC}"  | lolcat | tee -a log-install.txt
echo "   - ——————————————————————————————————————"
echo "   - Badvpn                  : 7200"  | tee -a log-install.txt
echo "   - Nginx                   : 81"  | tee -a log-install.txt
echo "   - Grpc                    : 443"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   $NC    ${sc} [INFORMASI XRAY] ${NC}"  | lolcat  | tee -a log-install.txt
echo "   - ——————————————————————————————————————"
echo "   - Xray Vmess Ws Tls       : 443"  | tee -a log-install.txt
echo "   - Xray Vless Ws Tls       : 443"  | tee -a log-install.txt
echo "   - Xray Trojan Ws Tls      : 443"  | tee -a log-install.txt
echo "   - Xray Vmess Ws None Tls  : 80, 8080"  | tee -a log-install.txt
echo "   - Xray Vless Ws None Tls  : 80, 8080"  | tee -a log-install.txt
echo "   - ——————————————————————————————————————"
echo "   -$NC    ${sc} [ALL SERVICE SC] ${NC}"  | lolcat | tee -a log-install.txt
echo""
echo "   - ✅BW MONITORING"  | tee -a log-install.txt
echo "   - ✅CHECK LOGIN USER"  | tee -a log-install.txt
echo "   - ✅CHECK LOG AKUN"  | tee -a log-install.txt
echo "   - ✅AUTO CLEAR"  | tee -a log-install.txt
echo "   - ✅REBOOT JAM 05:00"  | tee -a log-install.txt
echo "   - ✅BACKUP & RESTORE"  | tee -a log-install.txt
echo "   - ✅UDP & SLOW"  | tee -a log-install.txt
echo "   - ✅MENU TRIAL ALL SERVICE"  | tee -a log-install.txt
echo "   - ✅GANTI PW VPS"  | tee -a log-install.txt
echo""
echo "   - ———————————————————————————————————"
echo "      $NC    ${sc}     DETAIL CLIENTS    ${NC}"  | lolcat
echo "   - ———————————————————————————————————"
echo "   - Clients:${Name}"
echo "   - EXP:${Exp}"
echo "   - ISP:${pro}"
echo "   - CITY:${kota}"
      echo -e                                                                           
echo ""  | tee -a log-install.txt
echo -e "\e[1;32m══════════════════ Autoscript By XlordVpn ══════════════════\e[0m" | tee -a log-install.txt
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
xlord
esac
