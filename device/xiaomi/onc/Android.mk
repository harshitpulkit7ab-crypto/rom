# Compatibility shim for the project-local onc directory.
# The real hardware tree is synced at device/xiaomi/onclite.
# Do not use this file alone to build or flash a device.

LOCAL_PATH := $(call my-dir)

ifneq ($(wildcard $(TOP)/device/xiaomi/onclite/Android.mk),)
include $(TOP)/device/xiaomi/onclite/Android.mk
endif
