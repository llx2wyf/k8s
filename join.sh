#!/bin/bash

systemctl enable kubelet
systemctl stop kubelet
systemctl start kubelet

kubeadm join --token $1 $2 --skip-preflight-checks
