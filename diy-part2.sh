#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
#sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' ./feeds/luci/collections/luci/Makefile
#chmod -R 755 files/usr
#chmod -R 600 files/etc
#chmod -R 644 files/etc/config/AdGuardHome
#chmod -R 644 files/etc/config/AdGuardHome.yaml
sed -i 's/192.168.1.1/10.10.10.2/g' package/base-files/files/bin/config_generate
#sed -i 's/luci-theme-bootstrap/luci-theme-argon_blue/g' ./feeds/luci/collections/luci/Makefile
rm -rf package/lean/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argonorigin
