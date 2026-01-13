#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

echo -e "预置Clash内核"
mkdir -p feeds/luci/applications/luci-app-openclash/root/etc/openclash/core
core_path="feeds/luci/applications/luci-app-openclash/root/etc/openclash/core"
goe_path="feeds/luci/applications/luci-app-openclash/root/etc/openclash"

CLASH_META_URL="https://raw.githubusercontent.com/vernesong/OpenClash/core/master/smart/clash-linux-amd64-v1.tar.gz"
GEOIP_URL="https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat"
GEOSITE_URL="https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat"

wget -qO- $CLASH_META_URL | tar xOvz > $core_path/clash_meta
wget -qO- $GEOIP_URL > $goe_path/GeoIP.dat
wget -qO- $GEOSITE_URL > $goe_path/GeoSite.dat

chmod +x $core_path/clash*
