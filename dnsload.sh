#!/bin/bash

images=(k8s-dns-dnsmasq-nanny-amd64:1.14.4 k8s-dns-kube-dns-amd64:1.14.4 k8s-dns-sidecar-amd64:1.14.4)
for imageName in ${images[@]} ; do
#   printf "%s\n" $imageName
	docker load -i ./out/$imageName
done
