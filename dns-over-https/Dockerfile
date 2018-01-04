FROM golang:alpine as builder
ARG DOH_VERSION=v1.0.1
RUN apk add --no-cache git build-base
RUN git clone --branch=$DOH_VERSION --depth=1 https://github.com/m13253/dns-over-https.git /tmp/dns-over-https
WORKDIR /tmp/dns-over-https
RUN make

FROM smartentry/alpine:3.6-0.4.0
MAINTAINER Yifan Gao <docker@yfgao.com>
COPY --from=builder /tmp/dns-over-https/doh-server/doh-server /usr/bin/
COPY . $ASSETS_DIR
