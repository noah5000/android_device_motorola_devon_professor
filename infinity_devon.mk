#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)



# Inherit from device
$(call inherit-product, device/motorola/devon/device.mk)

# Inherit some common infinity-X stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := infinity_devon
PRODUCT_DEVICE := devon
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g32
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="devon_g-user 13 T2SNS33.73-22-3-19 565799-307aa release-keys" \
    BuildFingerprint=motorola/devon_g/devon:13/T2SNS33.73-22-3-19/565799-307aa:user/release-keys \
    DeviceProduct=devon_g

# Lunaris Stuff
WITH_GMS := false
SURFACE_FLINGER_BOOST := false
TARGET_USE_MAPS := false
TARGET_CUSTOM_UDFPS := false
$(call soong_config_set,surfaceflinger,frame_rate_category_high,90)
$(call soong_config_set,surfaceflinger,frame_rate_category_min,60)
TARGET_BOOT_ANIMATION_RES := 1080

# AxionFx
$(call inherit-product-if-exists, packages/apps/AxionFx/config.mk)
