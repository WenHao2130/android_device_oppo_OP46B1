#
# Copyright (C) 2025 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Inherit from TWRP product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Device specific configs
$(call inherit-product, device/oppo/OP46B1/device.mk)

# Release name
PRODUCT_RELEASE_NAME := Reno

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/recovery/root,recovery/root)

PRODUCT_DEVICE := OP46B1
PRODUCT_NAME := twrp_OP46B1
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := PCAM00
PRODUCT_MANUFACTURER := oppo