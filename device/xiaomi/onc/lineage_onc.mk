# Minimal device definitions for Android build targeting Redmi Y3 (`onc`)

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
$(call inherit-product, device/xiaomi/onc/device.mk)

PRODUCT_NAME := lineage_onc
PRODUCT_DEVICE := onc
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Y3
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_RELEASE_NAME := RedmiY3
