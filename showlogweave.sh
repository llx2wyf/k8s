#!/bin/bash

#./showpodw.sh 's result name for weave substitude <weave-pod-name-as-above>
kubectl logs <weave-pod-name-as-above> -n kube-system weave-npc
