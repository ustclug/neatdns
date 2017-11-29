FROM alpine:3.6

MAINTAINER Yifan Gao <docker@yfgao.com>

RUN apk add --no-cache iptables ip6tables coreutils

ADD run /

CMD ["/run"]
