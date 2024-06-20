#
# Copyright (C) 2023 Lilium Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Awaken stuff.
$(call inherit-product, vendor/awaken/config/common_full_phone.mk)

# Boot Animation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

#Pixel Charger
USE_PIXEL_CHARGER := true
