#!/bin/bash

echo "[*] Disabling USB gadget..."

echo "" > /config/usb_gadget/nethunter/UDC

rm -rf /config/usb_gadget/nethunter

echo "[*] USB gadget disabled"
