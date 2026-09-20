# Android 16 source compatibility note

The selected Redmi Y3 repositories currently use the `lineage-22.1` hardware baseline. The Android framework target in `manifests/onc.xml` is `lineage-23.0`, but the hardware repositories are intentionally pinned independently.

This is a preparation manifest, not proof that the legacy device tree builds unchanged on Android 16. Expected porting work includes:

- resolving build-system and API changes
- adapting VINTF manifests and compatibility matrices
- validating legacy HIDL HALs against the Android 16 framework
- updating SELinux policy
- resolving kernel build changes for the 4.9 MSM8953 kernel
- checking AVB, partitions, recovery and boot image parameters
- validating vendor blobs against the selected stock firmware

If the Android 16 branch is unavailable in the chosen upstream manifest, use the latest available AOSP/Lineage Android 16 manifest and keep this hardware baseline pinned while performing the port. Never substitute guessed partition sizes or firmware files in a flashable release.
