#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
# Inherit some common AlphaDroid stuff.
$(call inherit-product, vendor/alpha/config/common_full_phone.mk)
# Inherit from device
$(call inherit-product, device/motorola/devon/device.mk)

# Lineage build flags
PRODUCT_CHECK_PREBUILT_MAX_PAGE_SIZE := false

ALLOW_MISSING_DEPENDENCIES := true

# Exclude missing apps
PRODUCT_PACKAGES_EX += \
    Calendar

# Disable GSI checks
BUILDING_GSI := false

# Calendar
PRODUCT_PACKAGES += \
    Calendar

# Device config
TARGET_HAS_UDFPS := false
TARGET_SUPPORTS_BLUR := true
TARGET_EXCLUDES_AUDIOFX := no
TARGET_FACE_UNLOCK_SUPPORTED := yes

# Build config
TARGET_BUILD_PACKAGE := 1
TARGET_BOOT_ANIMATION_RES := 1080

# Debugging
WITH_ADB_INSECURE := false

# Maintainer
ALPHA_BUILD_TYPE := Unofficial
ALPHA_MAINTAINER := Hades

# Device identifier
PRODUCT_DEVICE := devon
PRODUCT_NAME := alpha_devon
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g32
PRODUCT_MANUFACTURER := motorola
PRODUCT_GMS_CLIENTID_BASE := android-motorola
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="devon_g-user 13 T2SNS33.73-22-3-19 565799-307aa release-keys" \
    BuildFingerprint=motorola/devon_g/devon:13/T2SNS33.73-22-3-19/565799-307aa:user/release-keys \
    DeviceProduct=devon_g
