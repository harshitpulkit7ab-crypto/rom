# Redmi Y3 `onc` / `onclite` product definition
# This product reuses the public onclite hardware tree. It is not a
# flashable image until the full Android checkout and vendor blobs are present.

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, device/xiaomi/onclite/device.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_onclite
PRODUCT_DEVICE := onclite
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Y3
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="onc-user 9 PKQ1.181021.001 V11.0.3.0.PFLMIXM release-keys" \
    BuildFingerprint=xiaomi/onc/onc:9/PKQ1.181021.001/V11.0.3.0.PFLMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
