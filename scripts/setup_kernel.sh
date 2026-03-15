#!/bin/bash

echo "Initializing Pixel kernel source..."

repo init -u https://android.googlesource.com/kernel/manifest \
-b android-gs-comet-6.1-android16

repo sync -j$(nproc)

echo "Kernel sync complete"
