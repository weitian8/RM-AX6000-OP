#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
# ./scripts/feeds update -a && ./scripts/feeds install -a
# sed -i '$a src-git mosdns https://github.com/sbwml/luci-app-mosdns' feeds.conf.default

# ./scripts/feeds uninstall luci-app-passwall
rm -rf feeds/luci/applications/luci-app-passwall
rm -rf feeds/luci/applications/chinadns-ng
rm -rf feeds/luci/applications/dns2socks
rm -rf feeds/luci/applications/dns2tcp
rm -rf feeds/luci/applications/microsocks
rm -rf feeds/luci/applications/shadowsocks-rust
rm -rf feeds/luci/applications/shadowsocksr-libev
rm -rf feeds/luci/applications/simple-obfs
rm -rf feeds/luci/applications/tcping
rm -rf feeds/luci/applications/trojan-go
rm -rf feeds/luci/applications/trojan-plus
rm -rf feeds/luci/applications/v2ray-core
rm -rf feeds/luci/applications/v2ray-geodata
rm -rf feeds/luci/applications/v2ray-plugin
rm -rf feeds/luci/applications/xray-core
rm -rf feeds/luci/applications/xray-plugin
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
./scripts/feeds update -a
./scripts/feeds install -a -f -p kenzo
./scripts/feeds install -a -f -p small

# sed -i '$a src-git openwrt_kiddin9 https://github.com/kiddin9/openwrt-packages' feeds.conf.default

