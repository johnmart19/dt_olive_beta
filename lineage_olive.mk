#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2018 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common Pixel Experience stuff
# $(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# TARGET_GAPPS_ARCH := arm64
# TARGET_BOOT_ANIMATION_RES := 720

# Inherit from olive device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := olive
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_olive
PRODUCT_MODEL := Redmi 8

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := olive
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="olive-user 10 QKQ1.191014.001 V12.0.1.0.QCNMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Xiaomi/olive/olive:10/QKQ1.191014.001/V12.0.1.0.QCNMIXM:user/release-keys
