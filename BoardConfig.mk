#
# Copyright 2025 The Android Open Source Project
#
# Copyright (C) 2018-2025 Team-Win Recovery Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/samsung/on7xreflte

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_VARIANT_RUNTIME := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a53

TARGET_USES_64_BIT_BINDER := true

# Bootloader
BOARD_VENDOR := samsung
TARGET_BOARD_PLATFORM := exynos5
TARGET_SOC := exynos7870
TARGET_BOOTLOADER_BOARD_NAME := universal7870
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Crypto
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true

# Kernel
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CONFIG := exynos7870-on7xreflte_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/exynos7870
TARGET_KERNEL_CLANG_COMPILE := true

# Extracted with libbootimg
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dt $(OUT_DIR)/target/product/on7xreflte/obj/KERNEL_OBJ/arch/$(TARGET_ARCH)/boot/dtb.img
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_IMAGE_NAME := Image dtb.img
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_PREBUILT_DTBIMAGE_DIR := $(OUT_DIR)/target/product/on7xreflte/obj/KERNEL_OBJ/arch/$(TARGET_ARCH)/boot

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/etc/recovery.fstab

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
RECOVERY_GRAPHICS_USE_LINELENGTH := true

# System as root
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_SUPPRESS_SECURE_ERASE := true
AB_OTA_UPDATER := false

# Platform
PLATFORM_VERSION := 12.1.0
PLATFORM_VERSION_LAST_STABLE := $(PLATFORM_VERSION)
PLATFORM_SECURITY_PATCH := 2099-12-31

# TWRP specific build flags
TARGET_OTA_ASSERT_DEVICE := on7xreflte,on7xrefltedd,on7xrefltekl,on7xrefltekk,on7xreflteks,on7xreflteub,on7xrefltezt
RECOVERY_SDCARD_ON_DATA := true
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_LANGUAGE := en
TW_INCLUDE_NTFS_3G := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 162
TW_THEME := portrait_hdpi
TW_SCREEN_BLANK_ON_BOOT := true
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TW_USE_TOOLBOX := true
TW_NO_REBOOT_BOOTLOADER := true

# TWRP 12.1 specific flags
TW_DEVICE_VERSION := 0
TW_USE_SERIALNO_PROPERTY_FOR_DEVICE_ID := true
TW_BACKUP_EXCLUSIONS := /data/fonts
TW_INCLUDE_RESETPROP := true
TW_OVERRIDE_SYSTEM_PROPS := \
    "ro.build.date.utc;ro.bootimage.build.date.utc=ro.build.date.utc;ro.odm.build.date.utc=ro.build.date.utc;ro.product.build.date.utc=ro.build.date.utc;ro.system.build.date.utc=ro.build.date.utc;ro.system_ext.build.date.utc=ro.build.date.utc;ro.vendor.build.date.utc=ro.build.date.utc;ro.build.version.incremental;ro.build.version.sdk;ro.build.version.security_patch;ro.product.board=ro.product.vendor.board;ro.product.cpu.abi=ro.product.vendor.cpu.abi;ro.product.cpu.abilist=ro.product.vendor.cpu.abilist;ro.product.cpu.abilist32=ro.product.vendor.cpu.abilist32;ro.product.cpu.abilist64=ro.product.vendor.cpu.abilist64;ro.product.manufacturer=ro.product.vendor.manufacturer;ro.product.model=ro.product.vendor.model;ro.product.name=ro.product.vendor.name"

# exFAT FS Support
TW_INCLUDE_FUSE_EXFAT := true

# NTFS Support
TW_INCLUDE_FUSE_NTFS := true

# Vendor separation
TARGET_COPY_OUT_VENDOR := vendor

# Additional TWRP 12.1 compatibility
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_EXCLUDE_APEX := true
TW_INCLUDE_REPACKTOOLS := true
TW_HAS_NO_RECOVERY_PARTITION := true
BOARD_USES_RECOVERY_AS_BOOT := true