#!/bin/bash

echo "[*] Configuring USB network..."

ip addr add 10.0.0.1/24 dev usb0
ip link set usb0 up

echo 1 > /proc/sys/net/ipv4/ip_forward

iptables -t nat -A POSTROUTING -o wlan0 -j MASQUERADE

echo "[*] USB network ready"
