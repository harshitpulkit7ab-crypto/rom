# Device-level package and properties configuration

# Common device packages
PRODUCT_PACKAGES += \
    android.hardware.audio@7.0-impl \
    android.hardware.camera.provider@2.4-impl \
    android.hardware.bluetooth@1.0-impl \
    android.hardware.gnss@1.0-impl \
    android.hardware.power@1.0-impl \
    android.hardware.wifi@1.0-service

# Recovery filesystem layout
PRODUCT_COPY_FILES += \
    device/xiaomi/onc/recovery.fstab:recovery/root/etc/recovery.fstab

# Device properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.vendor.device=onc \
    ro.product.device=onc \
    ro.product.model=Redmi Y3 \
    ro.product.manufacturer=Xiaomi \
    persist.sys.device_config=onc
