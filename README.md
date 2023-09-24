# Neat DNS

an anti-pollution DNS server

Including the following software:

* bind

## Deployment

```shell
docker run -itd \
	--name=neatdns \
	-p 53:53/tcp \
	-p 53:53/udp \
	-p 443:443/tcp \
	-p 443:443/udp \
	--cap-add=NET_ADMIN \
	ustclug/neatdns:bind9
```

P.S. you should install [docker](https://www.docker.com) first.

Available environment variables:

| Name              | Implication                              | Default Value               |
| ----------------- | ---------------------------------------- | --------------------------- |
| GLOBAL_DNS1       | preferred DNS server to resolve non-China website | 8.8.4.4                     |
| GLOBAL_DNS2       | alternate DNS server to resolve non-China website | 8.8.8.8                     |
| CHINA_DNS1        | preferred DNS server to resolve China website | 119.29.29.29                |
| CHINA_DNS2        | alternate DNS server to resolve China website | 223.5.5.5                   |
| FAIL2BAN_ON       | auto-start fail2ban                      | true                        |
