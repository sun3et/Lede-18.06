#!/bin/sh
cd /etc/
wget --no-check-certificate "https://raw.githubusercontent.com/mouyase/ChinaListForAdGuardHome/gh-pages/ChinaList.txt" &&
sed -i '1i 127.0.0.1:7914' ChinaList.txt &&
mv /etc/ChinaList.txt /etc/config/cl.txt &&
/etc/init.d/AdGuardHome restart
