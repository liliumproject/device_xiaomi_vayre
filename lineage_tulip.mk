#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit from tulip device
$(call inherit-product, $(LOCAL_PATH)/device-tulip.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := tulip
PRODUCT_NAME := lineage_tulip
PRODUCT_MODEL := Redmi Note 6 Pro

TARGET_VENDOR_PRODUCT_NAME := tulip

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc=$(call normalize-path-list, "tulip-user 9 PKQ1.180904.001 V10.3.2.0.PEKMIXM release-keys")

BUILD_FINGERPRINT := xiaomi/tulip/tulip:9/PKQ1.180904.001/V10.3.2.0.PEKMIXM:user/release-keys
