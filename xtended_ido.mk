# Copyright (C) 2015 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_l.mk)

$(call inherit-product, device/xiaomi/ido/full_ido.mk)

# Inherit some common Xtended stuff.
$(call inherit-product, vendor/xtended/config/common_mini_go_phone.mk)
TARGET_BOOT_ANIMATION_RES := 720
XTENDED_BUILD_MAINTAINER := xvae27
XTENDED_BUILD_DONATE_URL := https://saweria.co/xvae27

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8939

# Assert
TARGET_OTA_ASSERT_DEVICE := ido

PRODUCT_NAME := xtended_ido
BOARD_VENDOR := xiaomi
PRODUCT_DEVICE := ido

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Build fingerprint
BUILD_FINGERPRINT="google/redfin/redfin:11/RQ3A.210605.005/7349499:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ3A.210605.005/7349499 release-keys"
