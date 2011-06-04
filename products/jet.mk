# Inherit AOSP device configuration for Jet.
$(call inherit-product, device/samsung/jet/full_jet.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := jet
PRODUCT_DEVICE := GT-S8000
PRODUCT_MODEL := GT-S8000
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=FRG83G BUILD_DISPLAY_ID=FRG83G PRODUCT_NAME=GT-S8000 BUILD_FINGERPRINT=samsung/GT-S8000/GT-S8000/GT-S8000:2.2.2/FRG83G/60505:user/release-keys TARGET_BUILD_TYPE=userdebug BUILD_VERSION_TAGS=release-keys
PRIVATE_BUILD_DESC="jetdroid-user 2.2.2 FRG83G JD-froyo"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.modversion=SpicagenMod-froyo-BETA2

# Copy over the changelog to the device
PRODUCT_COPY_FILES += \
	vendor/jetdroid/CHANGELOG:system/etc/CHANGELOG.txt

# Use edify for otapackage
PRODUCT_SPECIFIC_DEFINES += TARGET_OTA_SCRIPT_MODE=amend

# Used by BusyBox
KERNEL_MODULES_DIR:=/lib/modules

# Tiny toolbox
TINY_TOOLBOX:=true

# Enable Windows Media if supported by the board
WITH_WINDOWS_MEDIA:=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false \
    dalvik.vm.dexopt-data-only=1 \
    dalvik.vm.heapsize=32m

# Default network type.
# 0 => WCDMA preferred.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_network=0

# mobile interfaces
PRODUCT_PROPERTY_OVERRIDES += \
    mobiledata.interfaces=pdp0,eth0,gprs,ppp0

#scan interval
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.supplicant_scan_interval=90

PRODUCT_PACKAGES += \
    ADWLauncher \
    DownloadProviderUi \
    DSPManager \
    FileManager \
    GenKiller \
    openvpn \
    SMParts \
    SMPartsHelper \
    Stk \
    Superuser

ifeq ($(BOARD_HAVE_FM_RADIO),true)
    PRODUCT_PACKAGES += \
        FM
endif

# Live wallpaper packages
ifdef JETDROID_WITH_LIVEWALLPAPERS
    PRODUCT_PACKAGES += \
        LiveWallpapers \
        LiveWallpapersPicker \
        MagicSmokeWallpapers \
        librs_jni
endif

#
# Copy bootanimation
#
PRODUCT_COPY_FILES += \
	vendor/jetdroid/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip

# Common SM overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/jetdroid/overlay

# Bring in some audio files
include frameworks/base/data/sounds/AudioPackage4.mk

PRODUCT_COPY_FILES += \
    vendor/jetdroid/prebuilt/common/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/jetdroid/prebuilt/common/bin/firstboot_to_run.sh:system/bin/firstboot_to_run.sh \
    vendor/jetdroid/prebuilt/common/bin/remount:system/bin/remount \
    vendor/jetdroid/prebuilt/common/bin/compcache:system/bin/compcache \
    vendor/jetdroid/prebuilt/common/bin/handle_compcache:system/bin/handle_compcache \
    vendor/jetdroid/prebuilt/common/lib/libncurses.so:system/lib/libncurses.so \
    vendor/jetdroid/prebuilt/common/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
    vendor/jetdroid/prebuilt/common/etc/init.d/04apps2sd:system/etc/init.d/04apps2sd \
    vendor/jetdroid/prebuilt/common/etc/init.d/05apps2sdoff:system/etc/init.d/05apps2sdoff \
    vendor/jetdroid/prebuilt/common/etc/init.d/07userinit:system/etc/init.d/07userinit \
    vendor/jetdroid/prebuilt/common/etc/init.d/99complete:system/etc/init.d/99complete \
    vendor/jetdroid/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf \
    vendor/jetdroid/prebuilt/common/etc/terminfo/l/linux:system/etc/terminfo/l/linux \
    vendor/jetdroid/prebuilt/common/etc/terminfo/u/unknown:system/etc/terminfo/u/unknown \
    vendor/jetdroid/prebuilt/common/etc/profile:system/etc/profile \
    vendor/jetdroid/prebuilt/common/xbin/bash:system/xbin/bash \
    vendor/jetdroid/prebuilt/common/xbin/htop:system/xbin/htop \
    vendor/jetdroid/prebuilt/common/xbin/lsof:system/xbin/lsof \
    vendor/jetdroid/prebuilt/common/xbin/nano:system/xbin/nano \
    vendor/jetdroid/prebuilt/common/xbin/powertop:system/xbin/powertop \
    vendor/jetdroid/prebuilt/common/xbin/openvpn-up.sh:system/xbin/openvpn-up.sh

ifdef JETDROID_WITH_GOOGLE
    PRODUCT_COPY_FILES += \
	vendor/jetdroid/proprietary/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
	vendor/jetdroid/proprietary/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
	vendor/jetdroid/proprietary/Facebook.apk:system/app/Facebook.apk \
	vendor/jetdroid/proprietary/features.xml:system/etc/permissions/features.xml \
	vendor/jetdroid/proprietary/GenieWidget.apk:system/app/GenieWidget.apk \
	vendor/jetdroid/proprietary/Gmail.apk:system/app/Gmail.apk \
	vendor/jetdroid/proprietary/GoogleBackupTransport.apk:system/app/GoogleBackupTransport.apk \
	vendor/jetdroid/proprietary/GoogleCalendarSyncAdapter.apk:system/app/GoogleCalendarSyncAdapter.apk \
	vendor/jetdroid/proprietary/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk \
	vendor/jetdroid/proprietary/GoogleFeedback.apk:system/app/GoogleFeedback.apk \
	vendor/jetdroid/proprietary/GooglePartnerSetup.apk:system/app/GooglePartnerSetup.apk \
	vendor/jetdroid/proprietary/GoogleQuickSearchBox.apk:system/app/GoogleQuickSearchBox.apk \
	vendor/jetdroid/proprietary/GoogleServicesFramework.apk:system/app/GoogleServicesFramework.apk \
	vendor/jetdroid/proprietary/googlevoice.apk:system/app/googlevoice.apk \
	vendor/jetdroid/proprietary/HtcSettings.apk:system/app/HtcSettings.apk \
	vendor/jetdroid/proprietary/LatinImeTutorial.apk:system/app/LatinImeTutorial.apk \
	vendor/jetdroid/proprietary/libspeech.so:system/lib/libspeech.so \
	vendor/jetdroid/proprietary/libvoicesearch.so:system/lib/libvoicesearch.so \
	vendor/jetdroid/proprietary/Maps.apk:system/app/Maps.apk \
	vendor/jetdroid/proprietary/MarketUpdater.apk:system/app/MarketUpdater.apk \
	vendor/jetdroid/proprietary/MediaUploader.apk:system/app/MediaUploader.apk \
	vendor/jetdroid/proprietary/NetworkLocation.apk:system/app/NetworkLocation.apk \
	vendor/jetdroid/proprietary/OneTimeInitializer.apk:system/app/OneTimeInitializer.apk \
	vendor/jetdroid/proprietary/SetupWizard.apk:system/app/SetupWizard.apk \
	vendor/jetdroid/proprietary/Talk.apk:system/app/Talk.apk \
	vendor/jetdroid/proprietary/Vending.apk:system/app/Vending.apk \
	vendor/jetdroid/proprietary/VoiceSearch.apk:system/app/VoiceSearch.apk \
	vendor/jetdroid/proprietary/YouTube.apk:system/app/YouTube.apk
else
    PRODUCT_PACKAGES += \
        Provision \
        GoogleSearch \
        LatinIME
endif

