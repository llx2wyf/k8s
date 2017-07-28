#!/bin/bash

image=kubernetes-dashboard-amd64:v1.6.2
docker pull llx2wyf/$image
docker tag llx2wyf/$image gcr.io/google_containers/$image
docker rmi llx2wyf/$image
docker save -o ./out/$image gcr.io/google_containers/$image

