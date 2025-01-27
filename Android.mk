#
# Copyright (C) 2018-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifneq ($(filter lavender platina tulip whyred,$(TARGET_DEVICE)),)

include $(CLEAR_VARS)

include $(call all-makefiles-under,$(LOCAL_PATH))
endif
