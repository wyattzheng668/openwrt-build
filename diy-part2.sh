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
sed -i 's/192.168.1.1/192.168.50.50/g' package/base-files/files/bin/config_generate
git clone https://github.com/mchome/openwrt-vlmcsd package/feeds/vlmcsd
git clone https://github.com/mchome/luci-app-vlmcsd package/feeds/luci-app-vlmcsd
# git clone https://github.com/zxl78585/luci-app-filetransfer.git package/luci-app-filetransfer
# git clone https://github.com/linkease/istore package/istore
git clone https://github.com/dazhaolear/luci-app-autorebootnew package/luci-app-autorebootnew
git clone https://github.com/xkstudio/luci-app-pptp-server package/luci-app-pptp-server
# git clone https://github.com/kiddin9/openwrt-packages package/openwrt-packages
sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap
