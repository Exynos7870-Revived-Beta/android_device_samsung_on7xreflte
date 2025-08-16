#
# Copyright (C) 2025 Team-Win Recovery Project
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
#

LOCAL_PATH := device/samsung/on7xreflte

# Device API level (Android Pie)
PRODUCT_SHIPPING_API_LEVEL := 28

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# No dynamic partitions for older Samsung devices
PRODUCT_USE_DYNAMIC_PARTITIONS := false

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service

# Health HAL
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Keymaster HAL
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service

# Gatekeeper HAL
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl \
    android.hardware.gatekeeper@1.0-service

# Recovery init files
PRODUCT_PACKAGES += \
    init.recovery.exynos7870.rc \
    init.recovery.usb.rc

# Update engine
PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

# TWRP Configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/etc/recovery.fstab:$(TARGET_COPY_OUT_RECOVERY)/root/etc/recovery.fstab

# TWRP 12.1 specific packages for Samsung
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# Additional tools for TWRP 12.1
PRODUCT_PACKAGES += \
    libgptutils.recovery \
    libz.recovery \
    libcrypto.recovery

# Device-specific properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.treble.enabled=false \
    ro.vendor.build.security_patch=$(PLATFORM_SECURITY_PATCH) \
    ro.product.first_api_level=$(PRODUCT_SHIPPING_API_LEVEL)

# Legacy device - no VNDK
PRODUCT_TARGET_VNDK_VERSION := 
PRODUCT_EXTRA_VNDK_VERSIONS := 

# Recovery modules
PRODUCT_HOST_PACKAGES += \
    libandroidicu

# Samsung Exynos 7870 specific properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware=samsungexynos7870 \
    ro.hardware.chipname=exynos7870 \
    ro.soc.manufacturer=samsung \
    ro.soc.model=exynos7870

# Crypto for Samsung FDE/FBE
PRODUCT_PACKAGES += \
    libcryptfs_hw

# Additional recovery tools
PRODUCT_PACKAGES += \
    resetprop

# Legacy USB configuration
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Samsung specific properties for older devices
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.low_ram=false \
    ro.arch=arm64 \
    ro.sf.lcd_density=320

# Recovery-specific tools for older Samsung devices
PRODUCT_PACKAGES += \
    toybox_recovery \
    toolbox_recovery