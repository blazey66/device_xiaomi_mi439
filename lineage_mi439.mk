# Copyright (C) 2022 Paranoid Android
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from mi439 device configuration.
$(call inherit-product, device/xiaomi/mi439/device.mk)

# Inherit from common Axion configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Axion
TARGET_DISABLE_EPPE := true
AXION_CAMERA_REAR_INFO := 13,2
AXION_CAMERA_FRONT_INFO := 8
AXION_MAINTAINER := blazey66
AXION_PROCESSOR := Snapdragon_439
TARGET_INCLUDE_VIPERFX := true
TARGET_DISABLES_GMS := true
USE_GRAPHENEOS_CAM := true

# Axion CPU Flags
AXION_CPU_SMALL_CORES := 0,1,2,3
AXION_CPU_BIG_CORES := 4,5,6,7

# CPU sets configuration
AXION_CPU_BG := 0-3
AXION_CPU_FG := 0-7
AXION_CPU_LIMIT_BG := 0-2
AXION_CPU_UNLIMIT_UI := 0-7
AXION_CPU_LIMIT_UI := 0-4
AXION_CPU_DISPLAY := 4-7
AXION_CPU_AUDIO := 0-4

PRODUCT_NAME := lineage_mi439
PRODUCT_DEVICE := mi439
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI SDM439
PRODUCT_MANUFACTURER := Xiaomi

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 720

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="olive-user 10 QKQ1.191014.001 V12.5.1.0.QCNMIXM release-keys" \
    BuildFingerprint=Xiaomi/olive/olive:10/QKQ1.191014.001/V12.5.1.0.QCNMIXM:user/release-keys
