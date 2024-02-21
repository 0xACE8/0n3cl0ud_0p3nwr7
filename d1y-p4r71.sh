sed -i '1 i\src-git ace8 https://github.com/0xACE8/4c38-p4ck463;0n3cl0ud' feeds.conf.default
sed -i '2 i\src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main' feeds.conf.default
sed -i '$a src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git;main' feeds.conf.default
#sed -i '$a src-git quickstart https://github.com/0xACE8/openwrt-quickstart' feeds.conf.default
#sed -i '$a src-git xd https://github.com/shiyu1314/onecloud-package' feeds.conf.default
sed -i '$a src-git mosdns https://github.com/sbwml/luci-app-mosdns' feeds.conf.default
git clone https://github.com/0xACE8/0n3cl0ud_c0r3 target/linux/meson
