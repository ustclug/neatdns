FROM smartentry/alpine:3.4-0.3.11

MAINTAINER Yifan Gao <docker@yfgao.com>

ADD . $ASSETS_DIR

RUN smartentry.sh build
