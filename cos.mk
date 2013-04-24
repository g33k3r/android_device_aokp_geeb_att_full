## Specify phone tech before including full_phone
$(call inherit-product, vendor/cos/config/gsm.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 768

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common COS stuff.
$(call inherit-product, vendor/cos/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cos/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/geeb_att_full/full_geeb_att_full.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := geeb_att_full
PRODUCT_NAME := cos_geeb_att_full
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-E970
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=google/occam/mako:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.2.2 JDQ39 573038 release-keys"
