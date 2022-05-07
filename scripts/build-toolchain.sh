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
