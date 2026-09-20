# Redmi Y3 `onc` Android 16 preparation

## Selected hardware sources

| Component | Repository | Revision | Purpose |
|---|---|---|---|
| Device tree | [onclite/android_device_xiaomi_onclite](https://github.com/onclite/android_device_xiaomi_onclite) | `lineage-22.1` | Device configuration, init, overlays, sepolicy, blob list |
| Vendor blobs | [onclite/android_vendor_xiaomi_onclite](https://github.com/onclite/android_vendor_xiaomi_onclite) | `lineage-22.1` | Proprietary libraries and vendor makefiles |
| Kernel | [onclite/android_kernel_xiaomi_onc](https://github.com/onclite/android_kernel_xiaomi_onc) | `lineage-22.1` | MSM8953/SDM632 kernel source |

The selected repositories are public and specifically describe Redmi 7/Y3 hardware. Their current device-side revision is Android 15-era (`lineage-22.1`), so they are the safest hardware baseline while Android 16 adaptation is prepared. They are not falsely labeled as Android 16-ready.

## Android source base

The target Android 16 base is LineageOS 23.0/AOSP 16. The public `onc` hardware sources are pinned separately at `lineage-22.1` until compatible Android 16 branches exist. This lets us update each hardware repository independently and makes source changes reviewable.

## Build host

Recommended host:

- Ubuntu 22.04 LTS x86_64
- 16 CPU threads or more
- 32 GB RAM minimum; 64 GB preferred
- 250 GB free SSD space minimum; 350 GB preferred
- Python 3, Git, Repo, Java 17, Clang toolchain from the Android tree

A complete ROM build cannot run on GitHub's normal hosted runner: the source checkout and build exceed typical disk, memory, and time limits. The repository contains preparation scripts, while the actual build should run on a dedicated Linux host.

## Source checkout

```bash
mkdir -p ~/android/onc16
cd ~/android/onc16
repo init -u https://github.com/LineageOS/android.git -b lineage-23.0 --git-lfs
mkdir -p .repo/local_manifests
curl -L https://raw.githubusercontent.com/harshitpulkit7ab-crypto/rom/android-16-onc/manifests/onc.xml \
  -o .repo/local_manifests/onc.xml
repo sync -c --no-clone-bundle --no-tags -j$(nproc --all)
```

If the `lineage-23.0` manifest is not yet published by the upstream project, use the latest available Android 16/AOSP manifest and keep the three hardware projects at the pinned `lineage-22.1` revisions while porting.

## Hardware preparation

The selected vendor repository includes a proprietary file list and makefiles, but a reproducible build still needs compatible firmware from the phone. Do not place IMEI, EFS, modem calibration, or userdata contents in Git.

Before the first flashable build, verify:

- exact boot/vendor firmware compatibility
- partition table and dynamic-partition layout
- kernel defconfig and image format
- camera, audio, radio, fingerprint, sensors, Wi-Fi and Bluetooth HALs
- Android 16 VINTF and SELinux compatibility

## Current milestone

This commit prepares the reproducible source selection and host requirements. It does not claim that an Android 16 image has been compiled or tested. The first valid release milestone is a successful `eng`/`userdebug` build that boots to setup on a real `onc` device.
