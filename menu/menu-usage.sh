#!/bin/bash
BIBlack='\033[1;90m'      # Black
BIRed='\033[1;91m'        # Red
BIGreen='\033[1;92m'      # Green
BIYellow='\033[1;93m'     # Yellow
BIRU='\033[1;94m'       # Blue
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
# // Exporting Language to UTF-8

export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'


# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"
clear
echo -e "${BIRU}┌━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┐${NC}" 
echo -e "${BIRU}│${NC}$NC \e[1;97;101m            << USAGE XRAY MENU >>            \e[0m ${BIRU}│ ${NC}"
echo -e "${BIRU}└━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┘${NC}" 
echo -e "${BICyan} ┌─────────────────────────────────────────────┐${NC}"
echo -e " ${BICyan}|    [${BIWhite}1${BICyan}] USAGE VMESS${NC} "
echo -e " ${BICyan}|    [${BIWhite}2${BICyan}] USAGE VLESS${NC} "
echo -e " ${BICyan}|    [${BIWhite}3${BICyan}] USAGE TROJAN${NC} "
echo -e " ${BICyan}|    [${BIWhite}0${BICyan}] EXIT BRO${NC} "
echo -e "${BICyan} └─────────────────────────────────────────────┘${NC}"
echo""
read -p " Select menu : " opt
echo -e ""
case $opt in
1) clear ; vmess-usage ;;
2) clear ; vless-usage ;;
3) clear ; trojan-usage ;;
0) clear ; menu ;;
x) exit ;;
*) echo "Anda salah tekan " ; sleep 1 ; menu ;;
esac
