## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := Wave

# We need screen width/height defined before inheriting
# common_mini_phone.mk to avoid automatically bringing in the wrong
# boot animation.
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 800
TARGET_BOOTANIMATION_HALF_RES := true

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/wave/full_wave.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := wave
PRODUCT_NAME := cm_wave
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-S8500

# Set build fingerprint / ID / Prduct Name ect.
# PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9000 TARGET_DEVICE=GT-I9000 BUILD_FINGERPRINT=samsung/GT-I9000/GT-I9000:2.3.5/GINGERBREAD/XXJVT:user/release-keys PRIVATE_BUILD_DESC="GT-I9000-user 2.3.5 GINGERBREAD XXJVT release-keys"
