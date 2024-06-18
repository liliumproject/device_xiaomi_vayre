#
# Copyright (C) 2018-2019 The LineageOS Project
#           (C) 2024 Lilium Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/vayre/platina

# Product Hardware
PRODUCT_HARDWARE := platina

# Include common platform configs
include device/xiaomi/vayre/vayre.mk

# Inherit properties.mk
$(call inherit-product, $(DEVICE_PATH)/properties.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_intcodec.xml \
    $(DEVICE_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(DEVICE_PATH)/audio/mixer_paths_overlay_static.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_overlay_static.xml \
    $(DEVICE_PATH)/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths.xml \
    $(DEVICE_PATH)/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_platform_info.xml

# Camera
PRODUCT_PACKAGES += \
    libMegviiFacepp-0.5.2 \
    libmegface

# Consumerir
BOARD_HAVE_IR := false

# Display calibration
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/display/qdcm_calib_data_boe_fhd_video_dsi_panel.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_boe_fhd_video_dsi_panel.xml \
    $(DEVICE_PATH)/display/qdcm_calib_data_csot_fhd_video_dsi_panel.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_csot_fhd_video_dsi_panel.xml \
    $(DEVICE_PATH)/display/qdcm_calib_data_tianma_fhd_video_dsi_panel.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_tianma_fhd_video_dsi_panel.xml

# FM
BOARD_HAVE_QCOM_FM := false

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/Overlay

PRODUCT_PACKAGES += \
    NoCutoutOverlay

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.device.rc

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.basic

# Wifi
PRODUCT_PACKAGES += \
    PlatinaWifiOverlay

# Inherit proprietary files
$(call inherit-product, vendor/xiaomi/platina/platina-vendor.mk)
