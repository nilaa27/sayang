#!/bin/bash
MYIP=$(wget -qO- ipinfo.io/ip);
echo "Checking VPS"

clear
echo ""
echo ""
echo -e "[ \033[32mInfo\033[0m ] DOSA SEDANG DIHAPUSS... Cache"
echo 1 > /proc/sys/vm/drop_caches
sleep 3
echo -e "[ \033[32mok\033[0m ] DOSA cleared"
echo ""
echo "Back to menu in 3 sec "
sleep 3
menu
