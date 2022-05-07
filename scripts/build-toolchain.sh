#!/bin/bash

ls /tmp/board

BASE=/tmp/board/build/openwrt-$VERSION

rm -rf $BASE
cp -r /tmp/openwrt $BASE

cd $BASE

cp /tmp/board/config ./config
make defconfig

make tools/install
make toolchain/install
