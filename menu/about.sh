BURIQ () {
    curl -sS https://raw.githubusercontent.com/nilaa27/cinta/main/vps> /root/tmp
    data=( `cat /root/tmp | grep -E "^### " | awk '{print $2}'` )
    for user in "${data[@]}"
    do
    exp=( `grep -E "^### $user" "/root/tmp" | awk '{print $3}'` )
    d1=(`date -d "$exp" +%s`)
    d2=(`date -d "$biji" +%s`)
    exp2=$(( (d1 - d2) / 86400 ))
    if [[ "$exp2" -le "0" ]]; then
    echo $user > /etc/.$user.ini
    else
    rm -f /etc/.$user.ini > /dev/null 2>&1
    fi
    done
    rm -f /root/tmp
}

MYIP=$(curl -sS ipv4.icanhazip.com)
Name=$(curl -sS https://raw.githubusercontent.com/nilaa27/cinta/main/vps| grep $MYIP | awk '{print $2}')
echo $Name > /usr/local/etc/.$Name.ini
CekOne=$(cat /usr/local/etc/.$Name.ini)

Bloman () {
if [ -f "/etc/.$Name.ini" ]; then
CekTwo=$(cat /etc/.$Name.ini)
    if [ "$CekOne" = "$CekTwo" ]; then
        res="Expired"
    fi
else
res="Permission Accepted..."
fi
}

PERMISSION () {
    MYIP=$(curl -sS ipv4.icanhazip.com)
    IZIN=$(curl -sS https://raw.githubusercontent.com/nilaa27/cinta/main/vps| awk '{print $4}' | grep $MYIP)
    if [ "$MYIP" = "$IZIN" ]; then
    Bloman
    else
    res="Permission Denied!"
    fi
    BURIQ
}
red='\e[1;31m'
green='\e[1;32m'
NC='\e[0m'
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
PERMISSION

if [ "$res" = "Expired" ]; then
Exp="\e[36mExpired\033[0m"
else
Exp=$(curl -sS https://raw.githubusercontent.com/nilaa27/cinta/main/vps| grep $MYIP | awk '{print $3}')
fi
pro=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
kota=$(curl -s ipinfo.io/city )
clear  | tee -a log-install.txt
echo -e "\e[1;32m══════════════════ Autoscript PREMIUM ══════════════════\e[0m" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Service & Port"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "    [INFORMASI SSH SERVICE PORT]" | tee -a log-install.txt
echo "   - ——————————————————————————————————————"
echo "   - OpenSSH                 : 22"  | tee -a log-install.txt
echo "   - Stunnel4                : 443"  | tee -a log-install.txt
echo "   - Udp Custom              : 1-6555"  | tee -a log-install.txt
echo "   - Websocket SSH(HTTP)     : 80, 8880"  | tee -a log-install.txt
echo "   - Websocket SSL(HTTPS)    : 443"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "    [INFORMASI Grpc, Bdvp, Ngnx]" | tee -a log-install.txt
echo "   - ——————————————————————————————————————"
echo "   - Badvpn                  : 7200"  | tee -a log-install.txt
echo "   - Nginx                   : 81"  | tee -a log-install.txt
echo "   - Grpc                    : 443"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "    [INFORMASI XRAY]"  | tee -a log-install.txt
echo "   - ——————————————————————————————————————"
echo "   - Xray Vmess Ws Tls       : 443"  | tee -a log-install.txt
echo "   - Xray Vless Ws Tls       : 443"  | tee -a log-install.txt
echo "   - Xray Trojan Ws Tls      : 443"  | tee -a log-install.txt
echo "   - Xray Vmess Ws None Tls  : 80, 8080"  | tee -a log-install.txt
echo "   - Xray Vless Ws None Tls  : 80, 8080"  | tee -a log-install.txt
echo "   - ——————————————————————————————————————"
echo "   - [ALL SERVICE SC]"  | tee -a log-install.txt
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
echo "   - ——————————————————————————————————————"
echo "   -          DATA CLIENTS EXP"
echo "   - ——————————————————————————————————————"
DATE=$(date +'%d %B %Y')
   datediff() {
       d1=$(date -d "$1" +%s)
       d2=$(date -d "$2" +%s)
       echo -e " ${BIRU}   ${NC}   Expiry In      : $(( (d1 - d2) / 86400 )) Days |$exp $NC"
   }
   mai="datediff "$Exp" "$DATE""
      echo -e " ${BIRU} ════════════[SEE U NEXT ORDER]═════════════ ${NC}"
      #echo -e " ${BIRU}   │${NC}   Version        : 4.0 Lite ${NC}"
      echo -e " ${BIRU}   ${NC}   Client         :\033[1;36m $Name \e[0m"
      #echo -e " ${BIRU}   │${NC}   Order By       : ${BIRed}XLORD VPN${NC}"
      if [ $exp \< 1000 ];
      then
     echo -e "   $BICyan  $NC License      : ${GREEN}$sisa_hari$NC Days Tersisa $NC"
      else
          datediff "$Exp" "$DATE"
      fi;
      ISP:"${pro}${NC}"
      CITY:"${kota}${NC}"
      echo -e " ${BIRU}  ════════════════════════════════════ ${NC}"
      echo -e                                                                           
echo ""  | tee -a log-install.txt
echo -e "\e[1;32m══════════════════ Autoscript By XlordVpn ══════════════════\e[0m" | tee -a log-install.txt
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
xlord
