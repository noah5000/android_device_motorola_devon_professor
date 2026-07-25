#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/motorola/devon/device.mk)

# Inherit some common AxionOS stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_devon
PRODUCT_DEVICE := devon
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g32
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="devon_g-user 13 T2SNS33.73-22-3-19 565799-307aa release-keys" \
    BuildFingerprint=motorola/devon_g/devon:13/T2SNS33.73-22-3-19/565799-307aa:user/release-keys \
    DeviceProduct=devon_g

AXION_MAINTAINER := noah5000
AXION_PROCESSOR := Snapdragon_680
AXION_CAMERA_REAR_INFO := 50,8
AXION_CAMERA_FRONT_INFO := 16
TARGET_INCLUDE_AXFX := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDES_LOS_PREBUILTS := false
TARGET_DISABLES_LIBPERF := true
HBM_SUPPORTED := false
TARGET_NEEDS_DOZE_FIX := false
TARGET_DOZE_TAP_PULSE_SUPPORTED := false
TARGET_DOZE_DOUBLE_TAP_PULSE_SUPPORTED := false
TARGET_DOZE_PICKUP_PULSE_SUPPORTED := false
TARGET_DOZE_SIDE_FPS_PULSE_SUPPORTED := false
