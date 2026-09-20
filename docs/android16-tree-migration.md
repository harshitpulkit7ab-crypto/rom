# Android 16 tree migration for Redmi Y3 `onc` / `onclite`

The supplied `afterallafk/device_xiaomi_onclite` repository is now selected as the device-tree reference. It contains a substantial Android 14-era Pixel Experience/AOSP tree for Redmi 7/Y3, including audio, init, overlays, power, sepolicy, camera configuration, partition definitions, and proprietary-file extraction metadata.

## Selected layers

```text
device/xiaomi/onclite  <- afterallafk/device_xiaomi_onclite @ 14
vendor/xiaomi/onclite  <- onclite/android_vendor_xiaomi_onclite @ lineage-22.1
kernel/xiaomi/onclite  <- onclite/android_kernel_xiaomi_onc @ lineage-22.1
hardware/xiaomi        <- LineageOS/android_hardware_xiaomi @ lineage-22.1
```

## What was migrated

- The Android framework target remains `lineage-23.0` / Android 16.
- The supplied archived tree is pinned explicitly at branch `14`.
- The kernel, vendor, and Qualcomm hardware layers remain pinned to the known `onclite` baseline.
- The source choice is reproducible and reviewable rather than copying an old compiled ZIP.

## Required Android 16 porting work

The branch-14 device tree cannot be called an Android 16 tree merely by changing its branch name. Before a build can be considered valid, port these areas in the full Android checkout:

1. Replace obsolete build-breaker flags and Python 2 assumptions.
2. Revalidate dynamic-partition definitions against the actual `onclite` firmware.
3. Update VINTF manifests/matrices and legacy HIDL compatibility.
4. Port sepolicy to Android 16 and remove permissive/ignore-neverallow settings for release builds.
5. Reconcile Android 16 SystemUI, Material 3 resources, and the new Control Center.
6. Validate legacy camera, audio, radio, sensors, graphics, fingerprint, Wi-Fi, and Bluetooth HALs.
7. Compile the 4.9 kernel with the Android 16 toolchain and fix warnings/errors.
8. Build, boot, collect logs, and test on a real Redmi Y3 before changing partition values.

## Safety

This manifest is a porting baseline, not a finished flashable ROM. Do not flash an image produced from the unvalidated scaffold. The archived device tree is useful source code, but Android 16 compatibility must be demonstrated by a real build and device test.
