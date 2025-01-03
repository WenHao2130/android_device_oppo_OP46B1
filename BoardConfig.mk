# Device
DEVICE_PATH                                     := device/oppo/OP46B1

# Architecture
TARGET_ARCH                                     := arm64
TARGET_ARCH_VARIANT                             := armv8-a
TARGET_CPU_ABI                                  := arm64-v8a
TARGET_CPU_ABI2                                 :=
TARGET_CPU_VARIANT                              := generic
TARGET_CPU_VARIANT_RUNTIME                      := cortex-a53

TARGET_2ND_ARCH                                 := arm
TARGET_2ND_ARCH_VARIANT                         := $(TARGET_ARCH_VARIANT)
TARGET_2ND_CPU_ABI                              := armeabi-v7a
TARGET_2ND_CPU_ABI2                             := armeabi
TARGET_2ND_CPU_VARIANT                          := $(TARGET_CPU_VARIANT)
TARGET_2ND_CPU_VARIANT_RUNTIME                  := $(TARGET_CPU_VARIANT)

# Assertation
TARGET_OTA_ASSERT_DEVICE                        := OP46B1

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME                    := sdm710
TARGET_NO_BOOTLOADER                            := true
TARGET_USES_UEFI                                := true

# Build Rule
ALLOW_MISSING_DEPENDENCIES                      := true

# Kernel
BOARD_BOOT_HEADER_VERSION                       := 1
BOARD_KERNEL_PAGESIZE                           := 4096
BOARD_KERNEL_BASE                               := 0x00000000
BOARD_MKBOOTIMG_ARGS                            += --base $(BOARD_KERNEL_BASE)
BOARD_MKBOOTIMG_ARGS                            += --pagesize $(BOARD_KERNEL_PAGESIZE)
BOARD_MKBOOTIMG_ARGS                            += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_KERNEL_CMDLINE                            := console=ttyMSM0,115200n8 earlycon=msm_geni_serial,0xA90000 androidboot.hardware=qcom androidboot.console=ttyMSM0 video=vfb:640x400,bpp=32,memsize=3072000 msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 service_locator.enable=1 androidboot.configfs=true androidboot.usbcontroller=a600000.dwc3 swiotlb=1 loop.max_part=7 buildvariant=eng
BOARD_KERNEL_CMDLINE                            += androidboot.selinux=permissive

TARGET_KERNEL_ARCH                              := arm64
TARGET_KERNEL_HEADER_ARCH                       := arm64
BOARD_INCLUDE_RECOVERY_DTBO                     := true
TARGET_PREBUILT_KERNEL                          := $(DEVICE_PATH)/prebuilt/Image.gz-dtb
BOARD_PREBUILT_RECOVERY_DTBOIMAGE               := $(DEVICE_PATH)/prebuilt/recovery_dtbo

# Partitions
BOARD_FLASH_BLOCK_SIZE                          := 262144
BOARD_BOOTIMAGE_PARTITION_SIZE                  := 67108864
BOARD_DTBOIMG_PARTITION_SIZE                    := 25165824
BOARD_RECOVERYIMAGE_PARTITION_SIZE              := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE                := 5972688896
BOARD_SYSTEMIMAGE_PARTITION_TYPE                := ext4
BOARD_USERDATAIMAGE_PARTITION_SIZE              := 243914452992
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE            := ext4
BOARD_VENDORIMAGE_PARTITION_SIZE                := 2415919104
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE              := ext4
TARGET_USERIMAGES_USE_EXT4                      := true
TARGET_USERIMAGES_USE_F2FS                      := true

# System as root
BOARD_BUILD_SYSTEM_ROOT_IMAGE                   := true
BOARD_ROOT_EXTRA_FOLDERS                        := bluetooth dsp firmware persist

# Partitions (listed in the file) to be wiped under recovery.
TARGET_RECOVERY_FSTAB                           := $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab

# Workaround for error copying vendor files to recovery ramdisk
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE              := ext4
TARGET_COPY_OUT_SYSTEM                          := system
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE              := ext4
TARGET_COPY_OUT_VENDOR                          := vendor

# Use mke2fs to create ext4 images
TARGET_USES_MKE2FS                              := true

# Platform
TARGET_BOARD_PLATFORM                           := sdm710

# Recovery
BOARD_HAS_LARGE_FILESYSTEM                      := true
TARGET_RECOVERY_PIXEL_FORMAT                    := RGBX_8888
TARGET_USERIMAGES_USE_EXT4                      := true
TARGET_USERIMAGES_USE_F2FS                      := true

# Treble
BOARD_VNDK_VERSION                              := current

# TWRP Configurations
TW_DEFAULT_LANGUAGE                             := en
TW_EXTRA_LANGUAGES                              := true
TW_THEME                                        := portrait_hdpi

# Set secure patch level
PLATFORM_SECURITY_PATCH                         := 2022-04-00
VENDOR_SECURITY_PATCH                           := 2022-04-00
PLATFORM_VERSION                                := 11.0.0

# Debug
TARGET_USES_LOGD                                := true
TWRP_INCLUDE_LOGCAT                             := true

# Verified Boot
BOARD_AVB_ENABLE                                := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS                += --flags 3
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS                += --set_hashtree_disabled_flag
BOARD_AVB_VBMETA_SYSTEM                         := system
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM               := SHA256_RSA2048
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH                := external/avb/test/data/testkey_rsa2048.pem 
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX          := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 1
BOARD_AVB_RECOVERY_ALGORITHM                    := SHA256_RSA2048
BOARD_AVB_RECOVERY_KEY_PATH                     := external/avb/test/data/testkey_rsa2048.pem 
BOARD_AVB_RECOVERY_ROLLBACK_INDEX               := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION      := 1