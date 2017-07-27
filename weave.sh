#!/bin/bash

images=(weave-npc:2.0.1 weave-kube:2.0.1)
for imageName in ${images[@]} ; do
#  	printf "%s\n" $imageName
	docker pull llx2wyf/$imageName
  	docker tag llx2wyf/$imageName weaveworks/$imageName
  	docker rmi llx2wyf/$imageName
	docker save -o ./out/$imageName weaveworks/$imageName
done
