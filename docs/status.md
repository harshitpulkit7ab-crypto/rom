# Current ROM status

Last reviewed: 2026-09-20

## Honest status

This repository is a preparation workspace. It is **not yet a compiled or boot-tested Android 16 ROM**. GitHub repository storage cannot run the full Android build, and no device connected to this project is available for flashing or hardware validation.

## Completed in this repository

- Redmi Y3 target documentation (`onc`/`onclite`)
- Initial project scaffold
- Source-selection manifest
- Public device, vendor, and kernel source references
- Host/build documentation
- Non-destructive source preparation and build helper scripts
- Porting roadmap

## Not yet completed

- Full Android/Lineage source checkout
- Verified Android 16 hardware compatibility
- Proprietary blobs extracted from a compatible stock build
- Successful first compilation
- Boot image/system image
- Flashable ZIP
- Boot and hardware testing
- Camera, modem, audio, sensors, fingerprint, Wi-Fi/Bluetooth and SELinux stabilization
- Pixel-style UI integration and release testing

## Why this cannot be completed only through GitHub file edits

A ROM build needs a Linux x86_64 host with hundreds of gigabytes of storage, substantial RAM, hours of compilation time, and an unlocked physical Redmi Y3 for boot and hardware testing. Proprietary firmware also cannot be generated from source. Public repositories provide the open device/kernel integration and blob lists, but they do not prove that a particular stock firmware dump is present or compatible.

The correct next milestone is a host-side sync followed by a real `lineage_onclite-userdebug` build. Do not flash the current scaffold: its placeholder partition and recovery values are not a release configuration.
