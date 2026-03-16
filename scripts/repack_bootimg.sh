#!/bin/bash

set -e

BOOTIMG_DIR=bootimg
KERNEL_IMAGE=kernel/out/comet/dist/Image.lz4

echo "===================================="
echo "Repacking boot image with new kernel"
echo "===================================="

if [ ! -f "$BOOTIMG_DIR/boot.img" ]; then
    echo "Boot image not found. Run extract_bootimg.sh first."
    exit 1
fi

mkdir -p bootimg/unpack

echo "[+] Unpacking boot image..."
magiskboot unpack $BOOTIMG_DIR/boot.img

echo "[+] Replacing kernel..."
cp $KERNEL_IMAGE kernel

echo "[+] Repacking boot image..."
magiskboot repack $BOOTIMG_DIR/boot.img

echo "[+] New boot image created."
