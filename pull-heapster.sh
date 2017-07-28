#!/bin/bash

images=(heapster-grafana-amd64:v4.4.1 heapster-amd64:v1.3.0 heapster-influxdb-amd64:v1.1.1)
for imageName in ${images[@]} ; do
#   printf "%s\n" $imageName
	docker pull llx2wyf/$imageName
  	docker tag llx2wyf/$imageName gcr.io/google_containers/$imageName
  	docker rmi llx2wyf/$imageName
done
