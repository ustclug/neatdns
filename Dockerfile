FROM smartentry/alpine:3.6-0.4.0
RUN sed -i \
    -e 's/dl-.*.alpinelinux.org/mirrors.ustc.edu.cn/g' \
        /etc/apk/repositories

MAINTAINER Yifan Gao <docker@yfgao.com>

ADD .docker $ASSETS_DIR

RUN smartentry.sh build
