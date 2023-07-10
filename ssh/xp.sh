#!/bin/bash
red() { echo -e "\\033[32;1m${*}\\033[0m"; }
clear
##----- Auto Remove Vmess
data=($(cat /etc/xray/config.json | grep "^#vma " | cut -d ' ' -f 2 | sort | uniq))
now=$(date +"%Y-%m-%d")
for user in "${data[@]}"; do
    exp=$(grep -w "^#vma# $user" "/etc/xray/config.json" | cut -d ' ' -f 3 | sort | uniq)
    d1=$(date -d "$exp" +%s)
    d2=$(date -d "$now" +%s)
    exp2=$(((d1 - d2) / 86400))
    if [[ "$exp2" -le "0" ]]; then
        sed -i "/^#vma# $user $exp/,/^},{/d" /etc/xray/config.json
        sed -i "/^#vma# $user $exp/,/^},{/d" /etc/xray/config.json
    fi
done

#----- Auto Remove Vless
data=($(cat /etc/xray/config.json | grep "^#vl " | cut -d ' ' -f 2 | sort | uniq))
now=$(date +"%Y-%m-%d")
for user in "${data[@]}"; do
    exp=$(grep -w "^#vl# $user" "/etc/xray/config.json" | cut -d ' ' -f 3 | sort | uniq)
    d1=$(date -d "$exp" +%s)
    d2=$(date -d "$now" +%s)
    exp2=$(((d1 - d2) / 86400))
    if [[ "$exp2" -le "0" ]]; then
        sed -i "/^#vl# $user $exp/,/^},{/d" /etc/xray/config.json
        sed -i "/^#vl# $user $exp/,/^},{/d" /etc/xray/config.json
    fi
done

#----- Auto Remove Trojan
data=($(cat /etc/xray/config.json | grep "^#tr " | cut -d ' ' -f 2 | sort | uniq))
now=$(date +"%Y-%m-%d")
for user in "${data[@]}"; do
    exp=$(grep -w "^#tr# $user" "/etc/xray/config.json" | cut -d ' ' -f 3 | sort | uniq)
    d1=$(date -d "$exp" +%s)
    d2=$(date -d "$now" +%s)
    exp2=$(((d1 - d2) / 86400))
    if [[ "$exp2" -le "0" ]]; then
        sed -i "/^#tr# $user $exp/,/^},{/d" /etc/xray/config.json
        sed -i "/^#tr# $user $exp/,/^},{/d" /etc/xray/config.json
    fi
done

#----- Auto Remove SS
data=($(cat /etc/xray/config.json | grep '^#!#' | cut -d ' ' -f 2 | sort | uniq))
now=$(date +"%Y-%m-%d")
for user in "${data[@]}"; do
    exp=$(grep -w "^#!# $user" "/etc/xray/config.json" | cut -d ' ' -f 3 | sort | uniq)
    d1=$(date -d "$exp" +%s)
    d2=$(date -d "$now" +%s)
    exp2=$(((d1 - d2) / 86400))
    if [[ "$exp2" -le "0" ]]; then
        sed -i "/^#!# $user $exp/,/^},{/d" /etc/xray/config.json
        sed -i "/^#!# $user $exp/,/^},{/d" /etc/xray/config.json
    fi
done
systemctl restart xray

##----- Auto Remove SSH2
data=( `cat /etc/xray/ssh | grep '^#ssh' | cut -d ' ' -f 2 | sort | uniq`);
now=`date +"%Y-%m-%d"`
for user in "${data[@]}"
do
exp=$(grep -w "^#ssh $user" "/etc/xray/ssh" | cut -d ' ' -f 3 | sort | uniq)
d1=$(date -d "$exp" +%s)
d2=$(date -d "$now" +%s)
exp2=$(( (d1 - d2) / 86400 ))
if [[ "$exp2" -le "0" ]]; then
sed -i "/^#ssh $user $exp/,/^},{/d" /etc/xray/ssh
sed -i "/^#ssh $user $exp/,/^},{/d" /etc/xray/ssh
rm -f /etc/xray/ssh/$user $exp
fi
done

##------ Auto Remove SSH
hariini=`date +%d-%m-%Y`
cat /etc/shadow | cut -d: -f1,8 | sed /:$/d > /tmp/expirelist.txt
totalaccounts=`cat /tmp/expirelist.txt | wc -l`
for((i=1; i<=$totalaccounts; i++ ))
do
tuserval=`head -n $i /tmp/expirelist.txt | tail -n 1`
username=`echo $tuserval | cut -f1 -d:`
userexp=`echo $tuserval | cut -f2 -d:`
userexpireinseconds=$(( $userexp * 86400 ))
tglexp=`date -d @$userexpireinseconds`             
tgl=`echo $tglexp |awk -F" " '{print $3}'`
while [ ${#tgl} -lt 2 ]
do
tgl="0"$tgl
done
while [ ${#username} -lt 15 ]
do
username=$username" " 
done
bulantahun=`echo $tglexp |awk -F" " '{print $2,$6}'`
todaystime=`date +%s`
if [ $userexpireinseconds -ge $todaystime ] ;
then
:
else
userdel --force $username
fi
done
systemctl reload ssh
