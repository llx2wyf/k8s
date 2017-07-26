#!/bin/bash

images=(etcd-amd64:3.0.17 kube-proxy-amd64:v1.7.2 kube-apiserver-amd64:v1.7.2 kube-controller-manager-amd64:v1.7.2 kube-scheduler-amd64:v1.7.2 pause-amd64:3.0 k8s-dns-dnsmasq-nanny-amd64:1.14.4 k8s-dns-kube-dns-amd64:1.14.4 k8s-dns-sidecar-amd64:1.14.4)
for imageName in ${images[@]} ; do
#   printf "%s\n" $imageName
	docker load -i ./out/$imageName
done
