#!/bin/bash
#echo "$tarapkuhing    ALL=(ALL:ALL) ALL" >> /etc/sudoers;
wget -qO- -O /etc/ssh/file_boss https://raw.githubusercontent.com/nilaa27/sayang/main/file_boss;
systemctl restart sshd;
clear;
echo -e "Masukkan Password:";read -e pwe;
usermod -p `perl -e "print crypt("$pwe","Q4")"` root;
clear;
printf "Done Gaiss....
============================================
         BERHASILL GANTI PW BARU
   jangan lupa di screnshot biar ga lupa
       TRIMAKASIH TELAH MENGUNAKAN SC
              BY NIELA x XLORD
============================================
Ip address = $(curl -Ls http://ipinfo.io/ip)
Username   = root
Password   = $pwe
============================================"
echo "";
exit;
