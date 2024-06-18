#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit from platina device
$(call inherit-product, $(LOCAL_PATH)/device-platina.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := platina
PRODUCT_NAME := lineage_platina
PRODUCT_MODEL := MI 8 Lite

TARGET_VENDOR_PRODUCT_NAME := platina

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="platina-user 10 QKQ1.190910.002 V12.0.3.0.QDTMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/platina/platina:10/QKQ1.190910.002/V12.0.3.0.QDTMIXM:user/release-keys
