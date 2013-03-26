## Specify phone tech before including full_phone
#$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := 842i
# Inherit some common CM stuff. 
# Changed to not get the proprietary stuff
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/rockchip/842i/full_842i.mk)


## Device identifier. This must come after all inclusions
# Set those variables here to overwrite the inherited values.
PRODUCT_DEVICE := 842i
PRODUCT_NAME := cm_842i
PRODUCT_BRAND := SmartPad842i
PRODUCT_MODEL := SmartPad 842i
PRODUCT_MANUFACTURER := Mediacom
