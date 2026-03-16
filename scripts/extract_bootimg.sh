#!/bin/bash

set -e

echo "===================================="
echo "Extracting boot image from device"
echo "===================================="

OUTDIR=bootimg

mkdir -p $OUTDIR

echo "[+] Pulling boot partition..."

adb root || true

adb shell dd if=/dev/block/by-name/boot of=/data/local/tmp/boot.img
adb pull /data/local/tmp/boot.img $OUTDIR/

echo "[+] Boot image saved to $OUTDIR/boot.img"
