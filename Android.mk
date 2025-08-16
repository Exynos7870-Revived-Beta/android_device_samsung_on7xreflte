#
# Copyright (C) 2025 The Team-Win Recovery Project
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

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),on7xreflte)

include $(call all-makefiles-under,$(LOCAL_PATH))

# TWRP 12.1 compatibility additions
include $(CLEAR_VARS)

# Ensure proper module dependencies for TWRP 12.1
LOCAL_MODULE := twrp_device_deps_on7xreflte
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)

include $(BUILD_PHONY_PACKAGE)

# Clear variables for clean build
include $(CLEAR_VARS)

endif