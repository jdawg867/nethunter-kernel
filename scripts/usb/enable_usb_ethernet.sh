#!/bin/bash

G=/config/usb_gadget/nethunter

echo "[*] Setting up USB Ethernet gadget..."

mkdir -p $G
cd $G

echo 0x1d6b > idVendor
echo 0x0104 > idProduct

mkdir -p strings/0x409
echo "fedcba9876543210" > strings/0x409/serialnumber
echo "NetHunter" > strings/0x409/manufacturer
echo "USB Ethernet Adapter" > strings/0x409/product

mkdir -p configs/c.1
mkdir -p functions/ecm.usb0

echo "02:1A:11:00:00:00" > functions/ecm.usb0/dev_addr
echo "02:1A:11:00:00:01" > functions/ecm.usb0/host_addr

ln -s functions/ecm.usb0 configs/c.1/

ls /sys/class/udc > UDC

echo "[*] USB Ethernet gadget enabled"
