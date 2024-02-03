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
sed -i 's/192.168.1.1/192.168.50.1/g' package/base-files/files/bin/config_generate
# Modify default Kernel
sed -i 's/KERNEL_PATCHVER:=6.1/KERNEL_PATCHVER:=6.6/g' target/linux/x86/Makefile
#delete wrtbwmon
# rm -rf feeds/luci/applications/luci-app-wrtbwmon
#delete netdate
# rm -rf feeds/luci/applications/luci-app-netdata
# add chajian
# git clone https://github.com/iwrt/luci-app-ikoolproxy.git package/luci-app-ikoolproxy
# git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
# git clone https://github.com/jimgo188/op-package package/op-package
# git clone https://github.com/sirpdboy/sirpdboy-package.git package/sirpdboy-package
# git clone https://github.com/kenzok8/small-package package/small-package
# git clone https://github.com/QiuSimons/openwrt-mos.git package/luci-app-mosdns
git clone -b files https://github.com/jimgo188/op-package files
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon-18.06
git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config
git clone https://github.com/eerrjjkk/luci-app-vnstat2.git package/luci-app-vnstat2
# rm -rf feeds/luci/applications/luci-app-mosdns
# rm -rf feeds/packages/net/mosdns
# git clone https://github.com/sbwml/luci-app-mosdns package/mosdns
