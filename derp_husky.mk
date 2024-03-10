#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common DERP stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/shusky/aosp_husky.mk)
$(call inherit-product, device/google/zuma/derp_common.mk)

include device/google/shusky/husky/device-derp.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 8 Pro
PRODUCT_NAME := derp_husky

# Derp-specific 
DERP_BUILDTYPE := Official
TARGET_IS_PIXEL := true
TARGET_IS_PIXEL_8 := true
TARGET_PIXEL_STAND_SUPPORTED := true
EXTRA_UDFPS_ICONS := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_SUPPORTS_64_BIT_APPS := true

# Boot animation
TARGET_SCREEN_HEIGHT := 2992
TARGET_SCREEN_WIDTH := 1344

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=husky \
    PRIVATE_BUILD_DESC="husky-user 14 UQ1A.240205.004 11269751 release-keys"

BUILD_FINGERPRINT := google/husky/husky:14/UQ1A.240205.004/11269751:user/release-keys

$(call inherit-product, vendor/google/husky/husky-vendor.mk)
