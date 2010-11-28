# Inherit AOSP device configuration for geeksphone one.
$(call inherit-product, device/samsung/spica/full_spica.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, device/samsung/spica/generic_spica.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := spica
PRODUCT_DEVICE := GT-I5700
PRODUCT_MODEL := GT-I5700
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=FRG83 BUILD_DISPLAY_ID=FRG83 PRODUCT_NAME=GT-I5700 BUILD_FINGERPRINT=samsung/GT-I5700/GT-I5700/GT-I5700:2.2.1/FRG83/60505:user/release-keys TARGET_BUILD_TYPE=userdebug BUILD_VERSION_TAGS=release-keys
PRIVATE_BUILD_DESC="spica-user 2.2.1 FRG83 60505 release-keys"

ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-6-$(shell date +%m%d%Y)-NIGHTLY-SPICA
else
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-6.1.0-RC1-Spica-alpha7.4
endif

