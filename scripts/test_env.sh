#!/bin/bash

./scripts/feeds install nano

cat <<EOF >> .config
CONFIG_PACKAGE_libncurses=y
CONFIG_PACKAGE_nano=y
CONFIG_PACKAGE_nano-full=y
CONFIG_PACKAGE_nano-plus=y
CONFIG_PACKAGE_terminfo=y
EOF

make defconfig

make package/nano/compile V=sc

make package/index
