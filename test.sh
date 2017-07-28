#!/bin/bash

kubectl run wyf-nginx --image=nginx:latest --image-pull-policy='IfNotPresent' --port=80 --replicas=1
kubectl expose deployment wyf-nginx --type=NodePort
kubectl get svc

#kubectl scale deploy wyf-nginx --replicas=2

#?//need you test..........................
#kubectl taint nodes --all node-role.kubernetes.io/master-
