#!/bin/bash

set -e

KERNEL_BRANCH="android-gs-comet-6.1-android16"
KERNEL_MANIFEST="https://android.googlesource.com/kernel/manifest"

echo "========================================"
echo "Pixel 9 Pro Fold NetHunter Kernel Setup"
echo "Branch: $KERNEL_BRANCH"
echo "========================================"

# Create kernel directory
mkdir -p kernel
cd kernel

# Initialize repo
if [ ! -d ".repo" ]; then
    echo "[+] Initializing repo..."
    repo init -u $KERNEL_MANIFEST -b $KERNEL_BRANCH
fi

echo "[+] Syncing kernel source..."
repo sync -j$(nproc)

echo "[+] Kernel source ready"
