#!/bin/sh
cd /etc/config/ && wget --no-check-certificate "https://adguard.yojigen.tech/ChinaList.txt" && rm ChinaList.txt && mv ChinaList.txt.1 ChinaList.txt && sed -i '1i 208.67.222.222:5353' ChinaList.txt && sed -i '2i quic://i.passcloud.xyz:784' ChinaList.txt && sed -i '3i quic://x.passcloud.xyz:784' ChinaList.txt && /etc/init.d/AdGuardHome restart
