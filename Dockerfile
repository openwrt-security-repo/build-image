FROM builder-base

ARG BOARD=unknown
ARG VERSION=master

COPY ./boards/$BOARD/openwrt-$VERSION /tmp/openwrt
WORKDIR /openwrt
