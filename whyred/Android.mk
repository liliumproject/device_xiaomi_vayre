LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),whyred)
  subdir_makefiles=$(call first-makefiles-under,$(LOCAL_PATH))
  $(foreach mk,$(subdir_makefiles),$(info including $(mk) ...)$(eval include $(mk)))
endif