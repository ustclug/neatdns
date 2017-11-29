#!/bin/bash

for dir in */ ; do
	[[ ! -f ${dir}Dockerfile ]] && continue
	docker build -t ustclug/neatdns:${dir%/} $dir
done
