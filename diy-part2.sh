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
#delete netdate
rm -rf package/lean/luci-app-netdata
rm -rf package/lean/luci-app-wrtbwmon
# add chajian
git clone https://github.com/iwrt/luci-app-ikoolproxy.git package/luci-app-ikoolproxy
# git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
git clone https://github.com/jimgo188/op.git package/op
git clone -b files https://github.com/jimgo188/op.git files
git clone https://github.com/sirpdboy/sirpdboy-package.git package/sirpdboy-package
