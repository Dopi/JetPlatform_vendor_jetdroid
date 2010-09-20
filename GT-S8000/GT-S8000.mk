PRODUCT_PACKAGES := \
    IM \
    VoiceDialer \
    MediaPlayer \
    Development \
    SpareParts \
    Term \
    Gallery3D \
    Launcher \
    JetCalibrate \
    Superuser \
    su-Superuser \
    Openmanager \
    ADWLauncher \

$(call inherit-product, build/target/product/generic.mk)

# Overrides
PRODUCT_BRAND := GT-S8000
PRODUCT_DEVICE := GT-S8000
PRODUCT_NAME := GT-S8000

#    Launcher2 \
#    LiveWallpapers \
#    LiveWallpapersPicker \
#    VisualizationWallpapers \
#    libRS \
#    librs_jni \
#    ADWLauncher \
