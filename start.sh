#!/bin/bash

systemctl enable kubelet
systemctl stop kubelet
systemctl start kubelet

cp ~/10-weave.conf /etc/cni/net.d/

kubeadm init --apiserver-advertise-address 120.132.38.106

cp /etc/kubernetes/admin.conf $HOME/
chown $(id -u):$(id -g) $HOME/admin.conf
export KUBECONFIG=$HOME/admin.conf

kubectl get node
