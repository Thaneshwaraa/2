#!/bin/bash
sudo apt update
sudo apt install bridge-utils -y
sudo brctl addbr br0
sudo brctl addif br0 enp0s3
sudo ip addr add 192.168.1.100/24 dev br0
sudo ip link set enp0s3 up
sudo ip link set br0 up
sudo ip route add default via 192.168.1.1
ip addr show br0
brctl show
