# NetHunter Kernel — Pixel 9 Pro Fold

Development environment for building a Kali NetHunter kernel
for the Pixel 9 Pro Fold (codename: comet).

Kernel base:
android-gs-comet-6.1-android16

This repo contains:

- kernel patches
- build scripts
- configuration files
- documentation

Kernel source is synced separately using repo.

## Kernel Setup

Download the Pixel 9 Pro Fold kernel source:


./scripts/setup_kernel.sh


Kernel branch used:


android-gs-comet-6.1-android16

## Build Kernel

After syncing the kernel source:

./scripts/build_kernel.sh

Output files will appear in:

kernel/out/dist/
