#!/bin/bash

[[ -n $DOCKER_USER ]] && docker login -u "$DOCKER_USER" -p "$DOCKER_PASS"

for dir in */ ; do
	[[ ! -f ${dir}Dockerfile ]] && continue
	docker push ustclug/neatdns:${dir%/}
done
