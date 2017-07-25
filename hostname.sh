#!/bin/bash

echo "yg-bgp-38.106" > /etc/hostname
echo "127.0.0.1 yg-bgp-38.106" >> /etc/hosts

sysctl kernel.hostname=yg-bgp-38.106
