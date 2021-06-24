# Copyright (C) 2020 Paranoid Android
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

# Check for target product
ifeq (pa_RMX1911,$(TARGET_PRODUCT))

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from RMX1911 device
$(call inherit-product, device/realme/RMX1911/device.mk)

# Inherit some common Paranoid Android stuff
$(call inherit-product, vendor/pa/config/common_full_phone.mk)

# Device identifier
PRODUCT_NAME := pa_RMX1911
PRODUCT_DEVICE := RMX1911
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Realme 5
PRODUCT_MANUFACTURER := Realme

PRODUCT_GMS_CLIENTID_BASE := android-realme
TARGET_VENDOR_PRODUCT_NAME := RMX1911

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 720

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="trinket-user 10 QKQ1.200209.002 release-keys" \
    PRODUCT_NAME="RMX1911"

endif
