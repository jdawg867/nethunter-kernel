#!/bin/bash
set -e

ROOTFS_DIR=/data/local/nhsystem
ROOTFS_TAR=kali-nethunter-rootfs-full-arm64.tar.xz

echo "[*] Installing Kali NetHunter rootfs..."

mkdir -p $ROOTFS_DIR

if [ ! -f $ROOTFS_TAR ]; then
    echo "[*] Downloading Kali rootfs..."
    wget https://kali.download/nethunter-images/current/rootfs/$ROOTFS_TAR
fi

echo "[*] Extracting rootfs..."
tar -xJf $ROOTFS_TAR -C $ROOTFS_DIR

echo "[*] Kali rootfs installed at $ROOTFS_DIR"
