#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

ifeq (aospa_channel,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the AOSPA configuration.
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

# Inherit from channel device
$(call inherit-product, device/motorola/channel/device.mk)

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := channel
PRODUCT_MANUFACTURER := motorola
PRODUCT_NAME := aospa_channel
PRODUCT_MODEL := moto g(7) play

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 1080p

endif