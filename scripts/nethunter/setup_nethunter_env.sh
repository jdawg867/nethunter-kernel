#!/bin/bash

ROOTFS_DIR=/data/local/nhsystem

echo "[*] Setting up NetHunter environment..."

mkdir -p $ROOTFS_DIR/dev
mkdir -p $ROOTFS_DIR/proc
mkdir -p $ROOTFS_DIR/sys

mount --bind /dev $ROOTFS_DIR/dev
mount --bind /proc $ROOTFS_DIR/proc
mount --bind /sys $ROOTFS_DIR/sys

echo "[*] Environment ready"
