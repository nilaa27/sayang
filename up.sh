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
wget -O m-bot "https://raw.githubusercontent.com/nilaa27/sayang/main/menu/m-bot.sh"
wget -O m-ip "https://raw.githubusercontent.com/nilaa27/sayang/main/menu/m-ip.sh"
wget -O menu-trial "https://raw.githubusercontent.com/nilaa27/sayang/main/menu/menu-trial.sh"
wget -O menu-vmess "https://raw.githubusercontent.com/nilaa27/sayang/main/menu/menu-vmess.sh"
wget -O menu-vless "https://raw.githubusercontent.com/nilaa27/sayang/main/menu/menu-vless.sh"
wget -O running "https://raw.githubusercontent.com/nilaa27/sayang/main/menu/running.sh"
wget -O clearcache "https://raw.githubusercontent.com/nilaa27/sayang/main/menu/clearcache.sh"
wget -O menu-trgo "https://raw.githubusercontent.com/nilaa27/sayang/main/menu/menu-trgo.sh"
wget -O menu-trojan "https://raw.githubusercontent.com/nilaa27/sayang/main/menu/menu-trojan.sh"
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
wget -O menu-bckp "https://raw.githubusercontent.com/nilaa27/sayang/main/menu/menu-bckp.sh"
wget -O backup "https://raw.githubusercontent.com/nilaa27/sayang/main/backup/backup.sh"
wget -O restore "https://raw.githubusercontent.com/nilaa27/sayang/main/backup/restore.sh"
wget -O jam "https://raw.githubusercontent.com/nilaa27/sayang/main/jam.sh"
wget -O add-ws "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/add-ws.sh"
wget -O trialvmess "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/trialvmess.sh"
wget -O renew-ws "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/renew-ws.sh"
wget -O del-ws "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/del-ws.sh"
wget -O cek-ws "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/cek-ws.sh"
wget -O add-vless "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/add-vless.sh"
wget -O trialvless "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/trialvless.sh"
wget -O renew-vless "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/renew-vless.sh"
wget -O del-vless "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/del-vless.sh"
wget -O cek-vless "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/cek-vless.sh"
wget -O add-tr "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/add-tr.sh"
wget -O trialtrojan "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/trialtrojan.sh"
wget -O del-tr "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/del-tr.sh"
wget -O renew-tr "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/renew-tr.sh"
wget -O cek-tr "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/cek-tr.sh"
wget -O addtrgo "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/addtrgo.sh"
wget -O trialtrojango "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/trialtrojango.sh"
wget -O deltrgo "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/deltrgo.sh"
wget -O renewtrgo "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/renewtrgo.sh"
wget -O cektrgo "https://raw.githubusercontent.com/nilaa27/sayang/main/xray/cektrgo.sh"
wget -O tambahan "https://raw.githubusercontent.com/nilaa27/sayang/menu/tambahan.sh"
chmod +x menu-update
chmod +x update
chmod +x menu
chmod +x m-bot
chmod +x m-ip
chmod +x menu-trial
chmod +x menu-vmess
chmod +x menu-vless
chmod +x running
chmod +x clearcache
chmod +x menu-trgo
chmod +x menu-trojan
chmod +x menu-ssh
chmod +x usernew
chmod +x trial
chmod +x renew
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
chmod +x port-ssl
chmod +x port-ovpn
chmod +x xp
chmod +x acs-set
chmod +x sshws
chmod +x status
chmod +x menu-bckp
chmod +x backup
chmod +x restore
chmod +x jam
chmod +x add-ws
chmod +x trialvmess
chmod +x renew-ws
chmod +x del-ws
chmod +x cek-ws
chmod +x add-vless
chmod +x trialvless
chmod +x renew-vless
chmod +x del-vless
chmod +x cek-vless
chmod +x add-tr
chmod +x trialtrojan
chmod +x del-tr
chmod +x renew-tr
chmod +x cek-tr
chmod +x addtrgo
chmod +x trialtrojango
chmod +x deltrgo
chmod +x renewtrgo
chmod +x cektrgo
chmod +x tambahan
cd

echo -e " [INFO] Update Successfully"
sleep 2
exit