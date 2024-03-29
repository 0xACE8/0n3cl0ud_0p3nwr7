#!/bin/bash

function git_sparse_clone() {
  branch="$1" repourl="$2" && shift 2
  git clone --depth=1 -b $branch --single-branch --filter=blob:none --sparse $repourl
  repodir=$(echo $repourl | awk -F '/' '{print $(NF)}')
  cd $repodir && git sparse-checkout set $@
  mv -f $@ ../
  cd .. && rm -rf $repodir
}

git_sparse_clone main https://github.com/shiyu1314/openwrt-onecloud device

cp -r device/* ./
rm -rf device

sed -i '1 i\src-git ace8 https://github.com/0xACE8/4c38-p4ck463;0n3cl0ud' feeds.conf.default
sed -i '2 i\src-git mosdns https://github.com/sbwml/luci-app-mosdns' feeds.conf.default
sed -i '3 i\src-git openwrt_helloworld https://github.com/sbwml/openwrt_helloworld' feeds.conf.default
#sed -i '$a src-git xd https://github.com/shiyu1314/onecloud-package' feeds.conf.default

