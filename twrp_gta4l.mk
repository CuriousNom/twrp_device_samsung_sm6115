#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from gta4l device
$(call inherit-product, device/samsung/gta4l/device.mk)

PRODUCT_DEVICE := gta4l
PRODUCT_NAME := twrp_gta4l
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T505N
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gta4ljt-user 11 RP1A.200720.012 T505NDXS7CXG1 release-keys"

BUILD_FINGERPRINT := samsung/gta4ljt/gta4l:11/RP1A.200720.012/T505NDXS7CXG1:user/release-keys
