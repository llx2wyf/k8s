#!/bin/bash

kubectl run wyf-nginx --image=nginx:latest --image-pull-policy='IfNotPresent' --port=80 --replicas=1
