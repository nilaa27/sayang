#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
echo -e " [INFO] Downloading Update File"
sleep 2
# hapus menu
rm -rf menu
rm -rf menu-trial
rm -rf menu-vmess
rm -rf menu-vless
rm -rf running
rm -rf clearcache
rm -rf menu-trgo
rm -rf menu-trojan
rm -rf fix
rm -rf menu-ssh
rm -rf usernew
rm -rf trial
rm -rf renew
rm -rf hapus
rm -rf cek
rm -rf member
rm -rf delete
rm -rf autokill
rm -rf ceklim
rm -rf tendang
rm -rf menu-set
rm -rf menu-domain
rm -rf add-host
rm -rf port-change
rm -rf certv2ray
rm -rf menu-webmin
rm -rf speedtest
rm -rf about
rm -rf auto-reboot
rm -rf restart
rm -rf bw
rm -rf port-ssl
rm -rf port-ovpn
rm -rf xp
rm -rf acs-set
rm -rf sshws
rm -rf status
rm -rf menu-backup
rm -rf backup
rm -rf restore
rm -rf jam
rm -rf up

# download script
cd /usr/bin
# menu
wget -O menu-update "https://raw.githubusercontent.com/nilaa27/sayang/main/menu/menu-update.sh"
wget -O update "https://raw.githubusercontent.com/nilaa27/sayang/main/menu/update.sh"
wget -O menu "https://raw.githubusercontent.com/nilaa27/sayang/main/menu/menu.sh"
wget -O xlord "https://raw.githubusercontent.com/nilaa27/sayang/main/menu/xlord"
wget -O m-bot "https://raw.githubusercontent.com/nilaa27/sayang/main/menu/m-bot.sh"
wget -O m-ip "https://raw.githubusercontent.com/nilaa27/sayang/main/menu/m-ip.sh"
wget -O m-trial "https://raw.githubusercontent.com/nilaa27/sayang/main/menu/m-trial"
wget -O m-vmess "https://raw.githubusercontent.com/nilaa27/sayang/main/menu/m-vmess"
wget -O menu-vless "https://raw.githubusercontent.com/nilaa27/sayang/main/menu/menu-vless.sh"
wget -O running "https://raw.githubusercontent.com/nilaa27/sayang/main/menu/running.sh"
wget -O clearcache "https://raw.githubusercontent.com/nilaa27/sayang/main/menu/clearcache.sh"
wget -O menu-trgo "https://raw.githubusercontent.com/nilaa27/sayang/main/menu/menu-trgo.sh"
wget -O m-trojan "https://raw.githubusercontent.com/nilaa27/sayang/main/menu/m-trojan"
wget -O menu-ssh "https://raw.githubusercontent.com/nilaa27/sayang/main/menu/menu-ssh.sh"
wget -O usernew "https://raw.githubusercontent.com/nilaa27/sayang/main/ssh/usernew.sh"
wget -O trial "https://raw.githubusercontent.com/nilaa27/sayang/main/ssh/trial.sh"
wget -O renew "https://raw.githubusercontent.com/nilaa27/sayang/main/ssh/renew.sh"
wget -O hapus "https://raw.githubusercontent.com/nilaa27/sayang/main/ssh/hapus.sh"
wget -O cek "https://raw.githubusercontent.com/nilaa27/sayang/main/ssh/cek.sh"
wget -O member "https://raw.githubusercontent.com/nilaa27/sayang/main/ssh/member.sh"
wget -O delete "https://raw.githubusercontent.com/nilaa27/sayang/main/ssh/delete.sh"
wget -O autokill "https://raw.githubusercontent.com/nilaa27/sayang/main/ssh/autokill.sh"
wget -O ceklim "https://raw.githubusercontent.com/nilaa27/sayang/main/ssh/ceklim.sh"
wget -O tendang "https://raw.githubusercontent.com/nilaa27/sayang/main/ssh/tendang.sh"
wget -O menu-set "https://raw.githubusercontent.com/nilaa27/sayang/main/menu/menu-set.sh"
wget -O menu-domain "https://raw.githubusercontent.com/nilaa27/sayang/main/menu/menu-domain.sh"
wget -O add-host "https://raw.githubusercontent.com/nilaa27/sayang/main/ssh/add-host.sh"
wget -O port-change "https://raw.githubusercontent.com/nilaa27/sayang/main/port/port-change.sh"
wget -O certv2ray "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/certv2ray.sh"
wget -O menu-webmin "https://raw.githubusercontent.com/nilaa27/sayang/main/menu/menu-webmin.sh"
wget -O speedtest "https://raw.githubusercontent.com/nilaa27/sayang/main/ssh/speedtest_cli.py"
wget -O about "https://raw.githubusercontent.com/nilaa27/sayang/main/menu/about.sh"
wget -O auto-reboot "https://raw.githubusercontent.com/nilaa27/sayang/main/menu/auto-reboot.sh"
wget -O restart "https://raw.githubusercontent.com/nilaa27/sayang/main/menu/restart.sh"
wget -O bw "https://raw.githubusercontent.com/nilaa27/sayang/main/menu/bw.sh"
wget -O port-ssl "https://raw.githubusercontent.com/nilaa27/sayang/main/port/port-ssl.sh"
wget -O port-ovpn "https://raw.githubusercontent.com/nilaa27/sayang/main/port/port-ovpn.sh"
wget -O xp "https://raw.githubusercontent.com/nilaa27/sayang/main/ssh/xp.sh"
wget -O acs-set "https://raw.githubusercontent.com/nilaa27/sayang/main/acs-set.sh"
wget -O sshws "https://raw.githubusercontent.com/nilaa27/sayang/main/ssh/sshws.sh"
wget -O status "https://raw.githubusercontent.com/nilaa27/sayang/main/status.sh"
wget -O menu-backup "https://raw.githubusercontent.com/xlord27/gabut/main/menu/menu-backup.sh"
wget -O menu-ssws "https://raw.githubusercontent.com/xlord27/gabut/main/menu/menu-ssws.sh"
wget -O backup "https://raw.githubusercontent.com/xlord27/gabut/main/backup/backup.sh"
wget -O restore "https://raw.githubusercontent.com/xlord27/gabut/main/backup/restore.sh"
wget -O strt "https://raw.githubusercontent.com/xlord27/gabut/main/backup/strt.sh"
wget -O limitspeed "https://raw.githubusercontent.com/xlord27/gabut/main/backup/limitspeed.sh"
wget -O autobackup "https://raw.githubusercontent.com/xlord27/gabut/main/backup/autobackup.sh"
wget -O waktu "https://raw.githubusercontent.com/nilaa27/sayang/main/menu/waktu.sh"
wget -O addvm-xlord "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/addvm-xlord"
wget -O trialvm "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/trialvm"
wget -O renvm-xlord "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/renvm-xlord"
wget -O delvm-xlord "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/delvm-xlord"
wget -O cekvm-xlord "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/cekvm-xlord"
wget -O confvm-xlord "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/confvm-xlord"
wget -O add-vless "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/add-vless.sh"
wget -O trial-vless "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/trial-vless.sh"
wget -O renew-vless "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/renew-vless.sh"
wget -O del-vless "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/del-vless.sh"
wget -O cek-vless "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/cek-vless.sh"
wget -O addtr-xlord "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/addtr-xlord"
wget -O trialtr "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/trialtr"
wget -O deltr-xlord "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/deltr-xlord"
wget -O rentr-xlord "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/rentr-xlord"
wget -O cektr-xlord "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/rentr-xlord"
wget -O conf-xlord "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/conf-xlord"
wget -O fix "https://raw.githubusercontent.com/xlord27/gabut/main/cf.sh"
wget -O addtrgo "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/addtrgo.sh"
wget -O trialtrojango "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/trialtrojango.sh"
wget -O deltrgo "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/deltrgo.sh"
wget -O renewtrgo "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/renewtrgo.sh"
wget -O cektrgo "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/cektrgo.sh"
wget -O tambahan "https://raw.githubusercontent.com/nilaa27/sayang/menu/tambahan.sh"
wget -O up "https://raw.githubusercontent.com/nilaa27/sayang/main/up.sh"
wget -O ganti "https://raw.githubusercontent.com/nilaa27/sayang/main/ganti.sh"
wget -O vmess-usage "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/vmess-usage.sh"
wget -O vless-usage "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/vless-usage.sh"
wget -O trojan-usage "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/trojan-usage.sh"
wget -O menu-usage "https://raw.githubusercontent.com/nilaa27/sayang/main/menu/menu-usage.sh"
wget -O enc "https://raw.githubusercontent.com/xlord27/gabut/main/ssh/enc.sh"
wget -O logg "https://raw.githubusercontent.com/nilaa27/sayang/main/logg.sh"
wget -O sc "https://raw.githubusercontent.com/nilaa27/sayang/main/sc"
wget -0 gotop "https://github.com/cjbassi/gotop/releases/download/3.0.0/gotop_3.0.0_linux_amd64.deb
sudo dpkg -i gotop_3.0.0_linux_amd64.deb"

chmod +x enc
chmod +x gotop
chmod +x logg
chmod +x menu-update
chmod +x update
chmod +x menu
chmod +x xlord
chmod +x m-bot
chmod +x m-ip
chmod +x m-trial
chmod +x menu-vmess
chmod +x menu-vless
chmod +x menu-ssws
chmod +x running
chmod +x clearcache
chmod +x menu-trgo
chmod +x m-trojan
chmod +x menu-ssh
chmod +x usernew
chmod +x trial
chmod +x fix
chmod +x renew
chmod +x vmess-usage
chmod +x vless-usage
chmod +x trojan-usage
chmod +x menu-usage
chmod +x hapus
chmod +x cek
chmod +x member
chmod +x delete
chmod +x autokill
chmod +x ceklim
chmod +x tendang
chmod +x menu-set
chmod +x menu-domain
chmod +x add-host
chmod +x port-change
chmod +x certv2ray
chmod +x menu-webmin
chmod +x speedtest
chmod +x about
chmod +x auto-reboot
chmod +x restart
chmod +x bw
chmod +x up
chmod +x port-ssl
chmod +x port-ovpn
chmod +x xp
chmod +x sc
chmod +x acs-set
chmod +x sshws
chmod +x status
chmod +x menu-backup
chmod +x backup
chmod +x restore
chmod +x strt
chmod +x limitspeed
chmod +x autobackup
chmod +x restore
chmod +x waktu
chmod +x addvm-xlord
chmod +x trialvm
chmod +x renvm-xlord
chmod +x delvm-xlord
chmod +x cekvm-xlord
chmod +x confvm-xlord
chmod +x add-vless
chmod +x trial-vless
chmod +x renew-vless
chmod +x del-vless
chmod +x cek-vless
chmod +x addtr-xlord
chmod +x trialtr
chmod +x deltr-xlord
chmod +x rentr-xlord
chmod +x cektr-xlord
chmod +x conf-xlord
chmod +x addtrgo
chmod +x trialtrojango
chmod +x deltrgo
chmod +x renewtrgo
chmod +x cektrgo
chmod +x tambahan
chmod +x ganti
cd

echo -e ""
echo -e "\e[0;32mDownloaded successfully!\e[0m"
echo ""
ver=$( curl sS https://raw.githubusercontent.com/nilaa27/sayang/main/versi )
sleep 1
echo -e "\e[0;32mPatching New Update, Please Wait...\e[0m"
echo ""
sleep 2
echo -e "\e[0;32mPatching... OK!\e[0m"
sleep 1
echo ""
echo -e "\e[0;32mSucces Update Script For New Version\e[0m"
cd
echo "$ver" > /home/ver
rm -f update.sh
clear
echo ""
echo -e "\033[0;34m----------------------------------------\033[0m"
echo -e "\E[44;1;39m            SCRIPT UPDATED              \E[0m"
echo -e "\033[0;34m----------------------------------------\033[0m"
echo ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"

echo -e "  ${BG} >>> INFORMASI UPDATE SCRIP <<< ${NC}"

echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"

echo -e "      •> PEMBARUAN SCRIPT <•" | lolcat

echo -e "    •> PENAMBAHAN FILE  <•" | lolcat

echo -e "      •> FIX BUG AND ERROR <•" | lolcat

echo -e "     •> TRIMAKASIH TELAH MENGUNAKAN SCRIPT BY XLORD VPN <•" | lolcat

echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"

echo -e "  ${BG} >>> THANKS TO Xlordvpn <<< ${NC}" 

echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
xlord
;;
x)
clear
update
;;
y)
clear
xlord
;;
*)
clear
echo -e "\e[1;31mPlease Enter Option 1-2 or x & y Only..,Try again, Thank You..\e[0m"
sleep 2
xlord
;;
esac
