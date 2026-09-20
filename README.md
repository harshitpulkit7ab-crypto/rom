# Pixel-like Android 16 ROM for Redmi Y3 (`onc`)

This repository is the working project space for a Pixel-style Android 16 custom ROM target for the Xiaomi Redmi Y3 (`onc`, Snapdragon 632 / MSM8953).

Status:
- Project scaffold created
- Device tree skeleton prepared
- Kernel and vendor tree placeholders added
- Build roadmap documented
- Actual hardware bring-up still requires stock Redmi Y3 firmware, vendor blobs, and a full Android source checkout

Project goal:
- Android 16 base
- Pixel-like UI/UX with Material You styling
- Lightweight memory tuning for 3GB RAM
- Stable daily usage on Redmi Y3 `onc`
- Minimal services and low background usage

This repository is intended as the development workspace for the ROM build. It is not a finished flashable ROM yet.

Hardware target:
- Device: Xiaomi Redmi Y3
- Codename: `onc`
- SoC: Snapdragon 632 / MSM8953
- RAM: 3GB
- Storage: 32GB

Important notes:
- The Redmi Y3 is an older Qualcomm device with legacy HALs. A stable Android 16 port needs real vendor blobs and kernel work.
- A functional build will require a full Android source checkout and device-specific patches.
- This repo is a foundation; it does not contain proprietary vendor blob sources or a complete kernel build.

Structure:
- `device/xiaomi/onc/` – device tree skeleton
- `vendor/xiaomi/onc/` – vendor blob placeholder and notes
- `kernel/xiaomi/onc/` – kernel source placeholder and notes
- `docs/` – ROM planning and porting notes
- `tools/` – helper scripts and extraction notes

Recommended upstream references:
- https://github.com/onclite/android_device_xiaomi_onclite
- https://github.com/onclite/android_kernel_xiaomi_onc
- https://github.com/onclite/android_vendor_xiaomi_onclite

This project will be iterated by fixing hardware and software issues as they appear on the actual device.
