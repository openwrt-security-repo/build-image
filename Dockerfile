FROM builder-base

ARG BOARD=unknown
ARG VERSION=master

COPY ./boards/$BOARD/build/openwrt-$VERSION /tmp/openwrt
WORKDIR /tmp/openwrt
