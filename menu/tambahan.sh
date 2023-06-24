#!/bin/bash
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
echo -e "${BICyan}                  MENU TAMBAHAN${NC} "
echo -e "${BICyan} ┌─────────────────────────────────────────────────────┐${NC}"
echo -e " ${BICyan}|    [${BIWhite}11${BICyan}] BOT TELEGRAM${NC} "
echo -e " ${BICyan}|    [${BIWhite}12${BICyan}] REGISTRASI IPVPS BARU${NC} "
echo -e " ${BICyan}|    [${BIWhite}13${BICyan}] CLEAR SAMPAH${NC} "
echo -e " ${BICyan}|    [${BIWhite}14${BICyan}] UPDATE SCRIPT    ${BICyan}[${BIYellow}T${BICyan}]${NC} "
echo -e " ${BICyan}|    [${BIWhite}15${BICyan}] BACKUP TO GITHUB ${BICyan}[${BIYellow}Menu${BICyan}]${NC} "
echo -e "${BICyan} └─────────────────────────────────────────────────────┘${NC}"
echo""
read -p " Select menu : " opt
echo -e ""
case $opt in
11) clear ; m-bot ;;
12) clear ; m-ip ;;
13) clear ; clearcache ;;
14) clear ; menu-update ;;
15) clear ; menu-bckp ;;
16) clear ; add-wireguard ;;
17) clear ; update;;
18) clear ; add-ns;;
0) clear ; menu ;;
x) exit ;;
*) echo "Anda salah tekan " ; sleep 1 ; menu ;;
esac