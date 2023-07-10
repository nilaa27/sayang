#!/bin/bash
wget -q -O /etc/systemd/system/limitvmess.service "https://raw.githubusercontent.com/nilaa27/sayang/main/ssh/limitvmess.service" && chmod +x limitvmess.service >/dev/null 2>&1
wget -q -O /etc/systemd/system/limitvless.service "https://raw.githubusercontent.com/nilaa27/sayang/main/ssh/limitvless.service" && chmod +x limitvless.service >/dev/null 2>&1
wget -q -O /etc/systemd/system/limittrojan.service "https://raw.githubusercontent.com/nilaa27/sayang/main/ssh/limittrojan.service" && chmod +x limittrojan.service >/dev/null 2>&1
wget -q -O /etc/systemd/system/limitshadowsocks.service "https://raw.githubusercontent.com/nilaa27/sayang/main/ssh/limitshadowsocks.service" && chmod +x limitshadowsocks.service >/dev/null 2>&1
wget -q -O /etc/limit/vmess/ "https://raw.githubusercontent.com/nilaa27/sayang/main/ssh/vmess" >/dev/null 2>&1
wget -q -O /etc/limit/vless/ "https://raw.githubusercontent.com/nilaa27/sayang/main/ssh/vless" >/dev/null 2>&1
wget -q -O /etc/limit/trojan/ "https://raw.githubusercontent.com/nilaa27/sayang/main/ssh/trojan" >/dev/null 2>&1
wget -q -O /etc/xray/limit.shadowsocks "https://raw.githubusercontent.com/nilaa27/sayang/main/ssh/shadowsocks" >/dev/null 2>&1
chmod +x /etc/limit/vmess/
chmod +x /etc/limit/vless/
chmod +x /etc/limit/trojan/
chmod +x /etc/xray/limit.shadowsocks
systemctl daemon-reload
systemctl enable --now limitvmess
systemctl enable --now limitvless
systemctl enable --now limittrojan
systemctl enable --now limitshadowsocks
# systemctl start limitvmess
# systemctl start limitvless
# systemctl start limittrojan
# systemctl start limitshadowsocks
# systemctl restart limitvmess
# systemctl restart limitvless
# systemctl restart limittrojan
# systemctl restart limitshadowsocks
