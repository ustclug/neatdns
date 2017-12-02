FROM golang:alpine as builder
RUN apk add --no-cache git build-base
RUN git clone https://github.com/m13253/dns-over-https.git /tmp/dns-over-https
WORKDIR /tmp/dns-over-https
RUN git checkout -ql 699c8fba161eff1a686f53aab0454c52a1ed6086
RUN make

FROM smartentry/alpine:3.6-0.4.0
MAINTAINER Yifan Gao <docker@yfgao.com>
COPY --from=builder /tmp/dns-over-https/doh-server/doh-server /usr/bin/
COPY . $ASSETS_DIR
