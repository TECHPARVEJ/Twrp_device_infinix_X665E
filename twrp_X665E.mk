#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Device specific configs
$(call inherit-product, device/infinix/X665E/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := X665E
PRODUCT_NAME := twrp_X665E
PRODUCT_BRAND := Infinix 
PRODUCT_MODEL := Infinix Hot 20 i 
PRODUCT_MANUFACTURER := Infinix 

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31
