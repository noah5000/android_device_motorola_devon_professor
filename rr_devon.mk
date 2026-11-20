#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/motorola/devon/device.mk)

# Inherit some common infinity stuff.
$(call inherit-product, vendor/rr/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := rr_devon
PRODUCT_DEVICE := devon
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g32
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="devon_g-user 13 T2SNS33.73-22-3-19 565799-307aa release-keys" \
    BuildFingerprint=motorola/devon_g/devon:13/T2SNS33.73-22-3-19/565799-307aa:user/release-keys \
    DeviceProduct=devon_g

rr_MAINTAINER := Hades
TARGET_HAS_UDFPS := false
WITH_GAPPS := false
TARGET_SUPPORTS_BLUR := true
TARGET_EXCLUDES_AUDIOFX := true

PRODUCT_SYSTEM_PROPERTIES += \
    ro.product.marketname=moto g32 \
    ro.infinity.soc=Snapdragon 680 \
    ro.infinity.camera=50MP + 8MP + 2MP
