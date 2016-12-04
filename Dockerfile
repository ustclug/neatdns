FROM smartentry/alpine:3.4-0.3.11

MAINTAINER Yifan Gao <docker@yfgao.com>

ADD .docker $ASSETS_DIR

RUN smartentry.sh build
