FROM smartentry/alpine:3.6-0.4.0

MAINTAINER Yifan Gao <docker@yfgao.com>

ADD . $ASSETS_DIR

RUN smartentry.sh build

VOLUME /srv/dnscrypt-wrapper
