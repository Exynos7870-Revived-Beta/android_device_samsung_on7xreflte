#
# Copyright 2025 The Android Open Source Project
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

PRODUCT_RELEASE_NAME := on7xreflte

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from on7xreflte device
$(call inherit-product, device/samsung/on7xreflte/device.mk)

PRODUCT_DEVICE := on7xreflte
PRODUCT_NAME := twrp_on7xreflte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G611F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Enable project treble vndk
PRODUCT_TARGET_VNDK_VERSION := 30
PRODUCT_EXTRA_VNDK_VERSIONS := 30

# API
PRODUCT_SHIPPING_API_LEVEL := 23

PRODUCT_PACKAGES += \
	charger_res_images \
	charger

# TWRP 12.1 specific properties
PRODUCT_PROPERTY_OVERRIDES += \
	ro.twrp.version=12.1