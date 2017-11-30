FROM golang:alpine as builder
RUN apk add --no-cache git build-base
RUN git clone https://github.com/m13253/dns-over-https.git /tmp/dns-over-https
WORKDIR /tmp/dns-over-https
RUN git checkout -ql e510d84809c4d7e99d3710e325141e3500b02c13
RUN make

FROM alpine:3.6
MAINTAINER Yifan Gao <docker@yfgao.com>
COPY --from=builder /tmp/dns-over-https/doh-server/doh-server /usr/bin/
ENV DOH_PORT=80
CMD doh-server -addr 0.0.0.0:${DOH_PORT} -upstream 127.0.0.1:53
