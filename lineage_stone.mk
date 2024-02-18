#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common ProjectMatrixx stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from stone device
$(call inherit-product, device/xiaomi/stone/device.mk)

# Device props
TARGET_SUPPORTS_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_DISABLE_EPPE := true
TARGET_DEBLOAT := true
SYSTEM_OPTIMIZE_JAVA := true
SYSTEMUI_OPTIMIZE_JAVA := true
MATRIXX_BUILD_TYPE := Official
MATRIXX_MAINTAINER := ARIJIT-SAHA
MATRIXX_CHIPSET := SM6375
MATRIXX_BATTERY := 5000mah
MATRIXX_DISPLAY := 1080x2400
WITH_GMS := true
EXTRA_GAPPS := false

# Charging Animation
TARGET_USE_PIXEL_CHARGER := true

# Use Prebuilt Kernel
PREBUILT_KERNEL := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_stone
PRODUCT_DEVICE := stone
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
