FROM builder-base

ARG BOARD=unknown
ARG VERSION=master

COPY ./boards/$BOARD/build/openwrt-$VERSION /tmp/openwrt
COPY ./scripts/test_env.sh /tmp
WORKDIR /tmp/openwrt
