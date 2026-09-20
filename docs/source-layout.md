# Redmi Y3 source layout

The project-local `device/xiaomi/onc` directory is only metadata. The real public hardware tree uses the combined Redmi 7/Y3 codename `onclite` and must be synced here:

```text
device/xiaomi/onclite
vendor/xiaomi/onclite
kernel/xiaomi/onclite
hardware/xiaomi
```

The resulting product is `lineage_onclite-userdebug`; `onc` remains an OTA/assert/device alias. This avoids maintaining a second incomplete copy of the hardware tree.

The Android 16 framework and the Lineage 22.1 hardware baseline still require compatibility work. These files intentionally do not claim that the build is complete or tested.
