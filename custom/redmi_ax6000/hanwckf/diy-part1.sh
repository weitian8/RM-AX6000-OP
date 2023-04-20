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
./scripts/feeds update -a && ./scripts/feeds install -a
# sed -i '$a src-git mosdns https://github.com/sbwml/luci-app-mosdns' feeds.conf.default
./scripts/feeds uninstall UnblockNeteaseMusic
./scripts/feeds uninstall adguardhome
./scripts/feeds uninstall alist
./scripts/feeds uninstall aliyundrive-webdav
./scripts/feeds uninstall ddnsto
./scripts/feeds uninstall filebrowser
./scripts/feeds uninstall gn
./scripts/feeds uninstall gost
./scripts/feeds uninstall lua-maxminddb
./scripts/feeds uninstall lua-neturl
./scripts/feeds uninstall luci-app-adguardhome
./scripts/feeds uninstall luci-app-advanced
./scripts/feeds uninstall luci-app-aliddns
./scripts/feeds uninstall luci-app-alist
./scripts/feeds uninstall luci-app-aliyundrive-webdav
./scripts/feeds uninstall luci-app-amlogic
./scripts/feeds uninstall luci-app-argon-config
./scripts/feeds uninstall luci-app-argonne-config
./scripts/feeds uninstall luci-app-bypass
./scripts/feeds uninstall luci-app-clash
./scripts/feeds uninstall luci-app-ddnsto
./scripts/feeds uninstall luci-app-design-config
./scripts/feeds uninstall luci-app-dnsfilter
./scripts/feeds uninstall luci-app-dockerman
./scripts/feeds uninstall luci-app-easymesh
./scripts/feeds uninstall luci-app-eqos
./scripts/feeds uninstall luci-app-fileassistant
./scripts/feeds uninstall luci-app-filebrowser
./scripts/feeds uninstall luci-app-gost
./scripts/feeds uninstall luci-app-ikoolproxy
./scripts/feeds uninstall luci-app-koolproxyR
./scripts/feeds uninstall luci-app-lucky
./scripts/feeds uninstall luci-app-mosdns
./scripts/feeds uninstall luci-app-openclash
./scripts/feeds uninstall luci-app-passwall
./scripts/feeds uninstall luci-app-passwall2
./scripts/feeds uninstall luci-app-pushbot
./scripts/feeds uninstall luci-app-serverchan
./scripts/feeds uninstall luci-app-smartdns
./scripts/feeds uninstall luci-app-ssr-plus
./scripts/feeds uninstall luci-app-store
./scripts/feeds uninstall luci-app-unblockneteasemusic
./scripts/feeds uninstall luci-app-vssr
./scripts/feeds uninstall luci-lib-ipkg
./scripts/feeds uninstall luci-lib-taskd
./scripts/feeds uninstall luci-lib-xterm
./scripts/feeds uninstall luci-theme-argon
./scripts/feeds uninstall luci-theme-argonne
./scripts/feeds uninstall luci-theme-atmaterial_new
./scripts/feeds uninstall luci-theme-design
./scripts/feeds uninstall luci-theme-ifit
./scripts/feeds uninstall luci-theme-opentopd
./scripts/feeds uninstall luci-theme-tomato
./scripts/feeds uninstall microsocks
./scripts/feeds uninstall mosdns
./scripts/feeds uninstall naiveproxy
./scripts/feeds uninstall redsocks2
./scripts/feeds uninstall sagernet-core
./scripts/feeds uninstall smartdns
./scripts/feeds uninstall taskd
./scripts/feeds uninstall tcping
./scripts/feeds uninstall v2dat

./scripts/feeds uninstall brook
./scripts/feeds uninstall chinadns-ng
./scripts/feeds uninstall dns2socks
./scripts/feeds uninstall dns2tcp
./scripts/feeds uninstall hysteria
./scripts/feeds uninstall ipt2socks
./scripts/feeds uninstall dnsd-alt
./scripts/feeds uninstall shadowsocks-rust
./scripts/feeds uninstall shadowsocksr-libev
./scripts/feeds uninstall simple-obfs
./scripts/feeds uninstall ssocks
./scripts/feeds uninstall trojan-go
./scripts/feeds uninstall trojan-plus
./scripts/feeds uninstall trojan
./scripts/feeds uninstall 2ray-core
./scripts/feeds uninstall v2ray-geodata
./scripts/feeds uninstall 2ray-plugin
./scripts/feeds uninstall v2raya
./scripts/feeds uninstall xray-core
./scripts/feeds uninstall xray-plugin
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
./scripts/feeds update -a
./scripts/feeds install -a -f -p kenzo
./scripts/feeds install -a -f -p small

# ./scripts/feeds uninstall luci-app-mosdns mosdns v2ray-geodata
# ./scripts/feeds install -f -p mosdns mosdns luci-app-mosdns
# find ./ -name v2ray-geodata | xargs rm -rf
# git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata
# ./scripts/feeds update -i && ./scripts/feeds install -a

# themes
# git clone https://github.com/solidus1983/luci-theme-opentomato package/luci-theme-opentomato
