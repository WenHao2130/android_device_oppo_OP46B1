LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),OP46B1)
    include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif