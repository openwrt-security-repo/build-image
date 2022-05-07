#!/bin/bash

BASE=/tmp/board/build/openwrt-$VERSION

rm -rf $BASE
cp -r /tmp/openwrt $BASE

cd $BASE

cp /tmp/board/config ./.config
echo "CONFIG_DEVEL=y" >> .config
make defconfig

make tools/install -j 32 V=s
make toolchain/install -j 32 V=s

make package/usign/compile V=sc -j32
make package/usign/host/compile

cp feeds.conf.default feeds.conf
echo "src-git security https://github.com/openwrt-security-repo/packages.git@master" >> feeds.conf

./scripts/feeds update -a
./scripts/feeds update -i
