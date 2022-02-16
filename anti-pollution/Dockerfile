FROM alpine:3.14

MAINTAINER Yifan Gao <docker@yfgao.com>

RUN apk add --no-cache iptables ip6tables coreutils

ADD start /

CMD ["/start"]
