include vendor/octavi/config/ProductConfigQcom.mk

PRODUCT_SOONG_NAMESPACES += $(PATHMAP_SOONG_NAMESPACES)

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google
else

# Clean cache
PRODUCT_COPY_FILES += \
    vendor/octavi/prebuilt/common/bin/clean_cache.sh:$(TARGET_COPY_OUT_SYSTEM)/bin/clean_cache.shPRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/octavi/prebuilt/common/bin/backuptool.sh:$(TARGET_COPY_OUT_SYSTEM)/install/bin/backuptool.sh \
    vendor/octavi/prebuilt/common/bin/backuptool.functions:$(TARGET_COPY_OUT_SYSTEM)/install/bin/backuptool.functions \
    vendor/octavi/prebuilt/common/bin/50-base.sh:$(TARGET_COPY_OUT_SYSTEM)/addon.d/50-base.sh \

# backuptool
PRODUCT_COPY_FILES += \
    vendor/octavi/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/octavi/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/octavi/prebuilt/common/bin/50-base.sh:system/addon.d/50-base.sh

# IORap app launch prefetching using Perfetto traces and madvise
PRODUCT_PRODUCT_PROPERTIES += \
    ro.iorapd.enable=true

# system mount
PRODUCT_COPY_FILES += \
    vendor/octavi/prebuilt/common/bin/system-mount.sh:install/bin/system-mount.sh

# Copy all init rc files
$(foreach f,$(wildcard vendor/octavi/prebuilt/common/etc/init/*.rc),\
	$(eval PRODUCT_COPY_FILES += $(f):$(TARGET_COPY_OUT_SYSTEM)/etc/init/$(notdir $f)))

ifneq ($(AB_OTA_PARTITIONS),)
PRODUCT_COPY_FILES += \
    vendor/octavi/prebuilt/common/bin/backuptool_ab.sh:$(TARGET_COPY_OUT_SYSTEM)/bin/backuptool_ab.sh \
    vendor/octavi/prebuilt/common/bin/backuptool_ab.functions:$(TARGET_COPY_OUT_SYSTEM)/bin/backuptool_ab.functions \
    vendor/octavi/prebuilt/common/bin/backuptool_postinstall.sh:$(TARGET_COPY_OUT_SYSTEM)/bin/backuptool_postinstall.sh
endif

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    dalvik.vm.debug.alloc=0 \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dataroaming=false \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent \
    ro.com.android.dateformat=MM-dd-yyyy \
    persist.sys.disable_rescue=true \
    persist.debug.wfd.enable=1 \
    persist.sys.wfd.virtual=0 \
    ro.build.selinux=1 \
    persist.sys.disable_rescue=true \
    ro.opa.eligible_device=true \
    ro.setupwizard.rotation_locked=true

# Disable vendor restrictions
PRODUCT_RESTRICT_VENDOR_FILES := false

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED ?= true
ifeq ($(TARGET_FACE_UNLOCK_SUPPORTED),true)
PRODUCT_PACKAGES += \
    FaceUnlockService
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.face_unlock_service.enabled=$(TARGET_FACE_UNLOCK_SUPPORTED)
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.biometrics.face.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.biometrics.face.xml
endif

# Octavi-OS Common
PRODUCT_COPY_FILES += \
    vendor/octavi/prebuilt/common/etc/permissions/privapp-permissions-octavi.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-octavi.xml \
    vendor/octavi/prebuilt/common/etc/permissions/privapp-permissions-octavi-product.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-octavi-product.xml \
    vendor/octavi/prebuilt/common/etc/permissions/privapp-permissions-elgoog.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-elgoog.xml \
    vendor/octavi/config/permissions/pixel_experience_2020.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/pixel_experience_2020.xml

# Bootanimation
PRODUCT_COPY_FILES += \
    vendor/octavi/bootanimation/bootanimation.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip

# Set custom volume steps
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.media_vol_steps=30 \
    ro.config.bt_sco_vol_steps=30

# Power whitelist
PRODUCT_COPY_FILES += \
    vendor/octavi/config/permissions/custom-power-whitelist.xml:system/etc/sysconfig/custom-power-whitelist.xml

# Clang
ifeq ($(TARGET_USE_LATEST_CLANG),true)
    TARGET_KERNEL_CLANG_VERSION := $(shell grep -v based prebuilts/clang/host/$(HOST_OS)-x86/*/AndroidVersion.txt | sort | tail -n 1 | cut -d : -f 2)
endif

# Disable Rescue Party
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.disable_rescue=true

# We modify several neverallows, so let the build proceed
ifneq ($(TARGET_BUILD_VARIANT),user)
    SELINUX_IGNORE_NEVERALLOWS := true
endif

# Overlays
PRODUCT_PACKAGES += \
    CustomConfigOverlay \
    CustomLauncherOverlay \
    CustomSettingsOverlay

# Blur
PRODUCT_PRODUCT_PROPERTIES += \
    ro.sf.blurs_are_expensive=1 \
    ro.surface_flinger.supports_background_blur=1

ifeq ($(TARGET_USES_BLUR), true)
PRODUCT_PRODUCT_PROPERTIES += \
    persist.sys.sf.disable_blurs=0
else
PRODUCT_PRODUCT_PROPERTIES += \
    persist.sys.sf.disable_blurs=1
endif

# Packages
include vendor/octavi/config/packages.mk

# ThemeOverlays
include packages/overlays/Themes/themes.mk

# Inherit from audio config
$(call inherit-product, vendor/octavi/config/audio.mk)

# Branding
include vendor/octavi/config/branding.mk

# Plugins
include packages/apps/PotatoPlugins/plugins.mk

# Overlays
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/octavi/overlay

# Device Overlays
DEVICE_PACKAGE_OVERLAYS += vendor/octavi/overlay/common
