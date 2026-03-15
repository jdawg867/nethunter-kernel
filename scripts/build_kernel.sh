#!/bin/bash

set -e

echo "===================================="
echo "Pixel 9 Pro Fold Kernel Build"
echo "===================================="

cd kernel

echo "[+] Starting kernel build..."

tools/bazel run //common:kernel_aarch64_dist

echo "[+] Build finished."

echo "[+] Output files located in:"
echo "kernel/out/dist/"
