# Neat DNS

an anti-pollution DNS server

Including the following software:

* bind
* dnscrypt-wrapper

## Deployment

```shell
docker run -itd \
	--name=neatdns \
	-p 53:53/tcp \
	-p 53:53/udp \
	-p 443:443/tcp \
	-p 443:443/udp \
	-v $DNSCRYPT_KEY_PATH:/srv/dnscrypt-wrapper \
	-e DNSCRYPT_PROVIDER=2.dnscrypt-cert.example.org \
	--cap-add=NET_ADMIN \
	ustclug/neatdns
```

P.S. you should install [docker](https://www.docker.com) first.

Available environment variables:

| Name              | Implication                              | Default Value               |
| ----------------- | ---------------------------------------- | --------------------------- |
| GLOBAL_DNS1       | preferred DNS server to resolve non-China website | 8.8.8.8                     |
| GLOBAL_DNS2       | alternate DNS server to resolve non-China website | 8.8.4.4                     |
| CHINA_DNS1        | preferred DNS server to resolve China website | 202.102.199.68              |
| CHINA_DNS2        | alternate DNS server to resolve China website | 223.5.5.5                   |
| DNSCRYPT_PROVIDER | DNSCrypt provider name                   | 2.dnscrypt-cert.ustclug.org |

## DNSCrypt Client Usage

Please get your own DNSCrypt fingerprint first:

```shell
$ cat $DNSCRYPT_KEY_PATH/fingerprint
Provider public key fingerprint : 4365:1587:E7A0:8C7C:1759:D300:6218:89AE:5999:42CA:562E:CB00:03E5:2147:A850:E191
```

**ATTENTION**: It would show a **different** fingerprint, please replace the fingerprint below with your own one.

Then, run dnscrypt-proxy on the client side, for example:

```
dnscrypt-proxy --local-address=127.0.0.1:53 --resolver-address=$DNS_SERVER:443 --provider-name=2.dnscrypt-cert.example.org --provider-key=4365:1587:E7A0:8C7C:1759:D300:6218:89AE:5999:42CA:562E:CB00:03E5:2147:A850:E191
```

**NOTE**:  You need to replace `$DNS_SERVER` with your server IP address.

