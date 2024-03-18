#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: 0xACE7
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.177.97/g' package/base-files/files/bin/config_generate

# Add mt7612u such as Netgear-A6210


# Set password to PASSWORD
#sed -i 's/root:::0:99999:7:::/root:$1$4xKZB45Q$w0CPT5M6vBWbYNmSWuxfU.:0:0:99999:7:::/g' package/base-files/files/etc/shadow

# Change ash to bash
sed -i 's/ash/bash/g' package/base-files/files/etc/passwd

# Change language=auto to zh_cn
#sed -i 's/lang="auto"/lang="zh_cn"/g' package/emortal/default-settings/files/99-default-settings

# Change luci list name
sed -i 's/"Argon 主题设置"/"主题设置"/g' feeds/luci/applications/luci-app-argon-config/po/zh_Hans/argon-config.po

# change some tips
sed -i 's/"终端"/"TTYD 终端"/g' feeds/luci/applications/luci-app-ttyd/po/zh_Hans/ttyd.po
sed -i 's/nas/services/g' feeds/luci/applications/luci-app-samba4/root/usr/share/luci/menu.d/luci-app-samba4.json
sed -i 's/START=18/START=99/g' feeds/packages/net/dnscrypt-proxy2/files/dnscrypt-proxy.init

# DHCP
#mkdir -p package/base-files/files/etc/dnsmasq.d
#wget --no-check-certificate -O package/base-files/files/etc/dnsmasq.d/accelerated-domains.china.conf "https://raw.githubusercontent.com/felixonmars/dnsmasq-china-list/master/accelerated-domains.china.conf"

# Boost UDP
echo '# optimize udp' >>package/base-files/files/etc/sysctl.d/10-default.conf
echo 'net.core.rmem_max=26214400' >>package/base-files/files/etc/sysctl.d/10-default.conf
echo 'net.core.rmem_default=26214400' >>package/base-files/files/etc/sysctl.d/10-default.conf
echo 'net.core.wmem_max=26214400' >>package/base-files/files/etc/sysctl.d/10-default.conf
echo 'net.core.wmem_default=26214400' >>package/base-files/files/etc/sysctl.d/10-default.conf
echo 'net.core.netdev_max_backlog=2048' >>package/base-files/files/etc/sysctl.d/10-default.conf

#5. Change luci list name
sed -i 's/5e72e4/1c77ff/g' feeds/ace8/luci-theme-argon/htdocs/luci-static/argon/css/cascade.css
sed -i 's/5e72e4/1c77ff/g' feeds/ace8/luci-theme-argon/htdocs/luci-static/argon/css/dark.css
sed -i 's/483d8b/1c77ff/g' feeds/ace8/luci-theme-argon/htdocs/luci-static/argon/css/cascade.css
sed -i 's/483d8b/1c77ff/g' feeds/ace8/luci-theme-argon/htdocs/luci-static/argon/css/dark.css

rm -rf feeds/ace8/luci-theme-argon/htdocs/luci-static/argon/favicon.ico
wget --no-check-certificate -O feeds/ace8/luci-theme-argon/htdocs/luci-static/argon/favicon.ico "https://raw.githubusercontent.com/0xACE8/0n3cl0ud_0p3nwr7/main/argon/favicon.ico"
rm -rf feeds/ace8/luci-theme-argon/htdocs/luci-static/argon/img/argon.svg
wget --no-check-certificate -O feeds/ace8/luci-theme-argon/htdocs/luci-static/argon/img/argon.svg "https://raw.githubusercontent.com/0xACE8/0n3cl0ud_0p3nwr7/main/argon/img/argon.svg"
rm -rf feeds/ace8/luci-theme-argon/htdocs/luci-static/argon/img/bg1.jpg
wget --no-check-certificate -O feeds/ace8/luci-theme-argon/htdocs/luci-static/argon/img/bg1.jpg "https://raw.githubusercontent.com/0xACE8/0n3cl0ud_0p3nwr7/main/argon/img/bg1.jpg"
rm -rf feeds/ace8/luci-theme-argon/htdocs/luci-static/argon/icon/*.png
wget --no-check-certificate -O feeds/ace8/luci-theme-argon/htdocs/luci-static/argon/icon/android-icon-192x192.png "https://raw.githubusercontent.com/0xACE8/0n3cl0ud_0p3nwr7/main/argon/icon/android-icon-192x192.png"
wget --no-check-certificate -O feeds/ace8/luci-theme-argon/htdocs/luci-static/argon/icon/apple-icon-60x60.png "https://raw.githubusercontent.com/0xACE8/0n3cl0ud_0p3nwr7/main/argon/icon/apple-icon-60x60.png"
wget --no-check-certificate -O feeds/ace8/luci-theme-argon/htdocs/luci-static/argon/icon/apple-icon-72x72.png "https://raw.githubusercontent.com/0xACE8/0n3cl0ud_0p3nwr7/main/argon/icon/apple-icon-72x72.png"
wget --no-check-certificate -O feeds/ace8/luci-theme-argon/htdocs/luci-static/argon/icon/apple-icon-144x144.png "https://raw.githubusercontent.com/0xACE8/0n3cl0ud_0p3nwr7/main/argon/icon/apple-icon-144x144.png"
wget --no-check-certificate -O feeds/ace8/luci-theme-argon/htdocs/luci-static/argon/icon/favicon-16x16.png "https://raw.githubusercontent.com/0xACE8/0n3cl0ud_0p3nwr7/main/argon/icon/favicon-16x16.png"
wget --no-check-certificate -O feeds/ace8/luci-theme-argon/htdocs/luci-static/argon/icon/favicon-32x32.png "https://raw.githubusercontent.com/0xACE8/0n3cl0ud_0p3nwr7/main/argon/icon/favicon-32x32.png"
wget --no-check-certificate -O feeds/ace8/luci-theme-argon/htdocs/luci-static/argon/icon/favicon-96x96.png "https://raw.githubusercontent.com/0xACE8/0n3cl0ud_0p3nwr7/main/argon/icon/favicon-96x96.png"
wget --no-check-certificate -O feeds/ace8/luci-theme-argon/htdocs/luci-static/argon/icon/ms-icon-144x144.png "https://raw.githubusercontent.com/0xACE8/0n3cl0ud_0p3nwr7/main/argon/icon/ms-icon-144x144.png"

#rm -rf include/target.mk
#wget --no-check-certificate -O include/target.mk "https://raw.githubusercontent.com/immortalwrt/immortalwrt/master/include/target.mk"

#rm -rf feeds/ace8/kcptun/Makefile
#wget --no-check-certificate -O feeds/ace8/kcptun/Makefile "https://raw.githubusercontent.com/0xACE8/kcptun/20230214/Makefile"

# Change to my banner
sudo rm package/base-files/files/etc/banner
wget --no-check-certificate https://raw.githubusercontent.com/0xACE8/0n3cl0ud_0p3nwr7/main/banner -O package/base-files/files/etc/banner

# upgrade config
wget --no-check-certificate https://raw.githubusercontent.com/0xACE8/0n3cl0ud_0p3nwr7/main/99-init-settings -O package/base-files/files/etc/uci-defaults/99-init-settings

echo "diy-part2.sh is done."
