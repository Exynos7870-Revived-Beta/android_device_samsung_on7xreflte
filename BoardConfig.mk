#
# Copyright (C) 2025 The LineageOS Project
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
TARGET_BOARD_HAS_TFA_SEC_AUDIO_HAL := false
TARGET_BOARD_HAS_SEC_AUDIO_HAL := false

ifeq ($(TARGET_BOARD_HAS_TFA_SEC_AUDIO_HAL),true)
TARGET_BOARD_HAS_TFA_AMP := true
endif

TARGET_APERTURE_OPTOUT := true

# Audio Hal
TARGET_BOARD_HAS_EXYNOS7870_SEC_AUDIOHAL := false
TARGET_AUDIOHAL_VARIANT := samsung-exynos7870
BOARD_USE_SPKAMP := true

# Keymaster type guard 
TARGET_BOARD_HAS_MDFPP_KEYSTORE := false

# Gatekeeper type guard
TARGET_BOARD_HAS_HW_GATEKEEPER := false

# Assert
TARGET_OTA_ASSERT_DEVICE := on7xreflte,on7xrefltecis,on7xrefltexx,on7xreflteub,on7xreflteins,on7xrefltedtvvj,on7xrefltekx,on7xrefltedx

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Kernel
TARGET_KERNEL_CONFIG := exynos7870-on7xreflte_defconfig

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/configs/manifest.xml

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_on7xreflte
TARGET_RECOVERY_DEVICE_MODULES := libinit_on7xreflte

# Build fingerprint
BUILD_FINGERPRINT := "samsung/on7xrefltexx/on7xreflte:12/SP1A.210812.016/G611FNXXU9CVE1:user/release-keys"
PRIVATE_BUILD_DESC := "on7xrefltexx-user 12 SP1A.210812.016 G611FNXXU9CVE1 release-keys"

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)/releasetools

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
WIFI_DRIVER_NVRAM_PATH           := "/vendor/etc/wifi/nvram_net.txt"
WIFI_DRIVER_FW_PATH_STA          := "/vendor/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP           := "/vendor/etc/wifi/bcmdhd_apsta.bin"
WIFI_BAND                        := 802_11_ABG
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true

# Inherit from common
-include device/samsung/universal7870-common/BoardConfigCommon.mk

# Inherit from the proprietary version
-include vendor/samsung/on7xreflte/BoardConfigVendor.mk
