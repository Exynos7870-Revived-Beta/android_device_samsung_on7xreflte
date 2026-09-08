#
# Copyright (C) 2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE_PATH := device/samsung/on7xreflte

# Audio
TARGET_BOARD_HAS_OSS_AUDIO_HAL := true
TARGET_BOARD_HAS_A6LTE_AUDIO_HAL := false
TARGET_BOARD_HAS_M10LTE_AUDIO_HAL := false
TARGET_BOARD_HAS_TFA_AMP := false
BOARD_USES_EXYNOS7870_TFA_AMP := false

# Display
TARGET_SCREEN_DENSITY := 420

# Assert
TARGET_OTA_ASSERT_DEVICE := on7xreflte,on7xrefltedd,SM-G611F,SM-G611FN,SM-G611M,SM-G611K,SM-G611L,SM-G611S,SM-G611G

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth
BOARD_CUSTOM_BT_CONFIG := $(DEVICE_PATH)/bluetooth/libbt_vndcfg.txt
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_HAVE_SAMSUNG_BLUETOOTH := true

# Kernel
TARGET_KERNEL_CONFIG := exynos7870-on7xreflte_defconfig

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/configs/manifest.xml

# misc
BUILD_BROKEN_VINTF_PRODUCT_COPY_FILES := true

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_on7xreflte
TARGET_RECOVERY_DEVICE_MODULES := libinit_on7xreflte

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)/releasetools

# Shims
TARGET_LD_SHIM_LIBS += \
    /vendor/lib/libbauthserver.so|/vendor/lib/libbauthtzcommon_shim.so

# Wifi
BOARD_WLAN_DEVICE                := bcmdhd
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
WPA_SUPPLICANT_USE_HIDL          := true
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_NVRAM_PATH_PARAM     := "/sys/module/dhd/parameters/nvram_path"
WIFI_DRIVER_NVRAM_PATH           := "/vendor/etc/wifi/nvram.txt"
WIFI_DRIVER_FW_PATH_STA          := "/vendor/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP           := "/vendor/etc/wifi/bcmdhd_apsta.bin"
WIFI_BAND                        := 802_11_ABG

# inherit from common
-include device/samsung/universal7870-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/samsung/on7xreflte/BoardConfigVendor.mk
