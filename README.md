# Neat DNS

an anti-pollution DNS server

## Deployment

```shell
docker run -itd \
	--name=neatdns \
	-p 53:53/tcp -p 53:53/udp \
	--cap-add=NET_ADMIN \
	ustclug/neatdns
```

P.S. you should install [docker](https://www.docker.com) first.

## Build from source

```shell
git clone https://github.com/ustclug/neatdns.git
cd neatdns
docker build -t ustclug/neatdns .
```