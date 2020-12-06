# Include librsjni explicitly to workaround GMS issue
PRODUCT_PACKAGES += \
    librsjni \
    wellbeingconf \
    googleconf

# Navbar
PRODUCT_PACKAGES += \
    GesturalNavigationOverlayLong \
    GesturalNavigationOverlayMedium \
    GesturalNavigationOverlayHidden

# FOD Animations
ifeq ($(TARGET_WANTS_FOD_ANIMATIONS),true)
PRODUCT_PACKAGES += \
    FodAnimationResources
endif

# Extra tools
PRODUCT_PACKAGES += \
    7z \
    awk \
    bash \
    bzip2 \
    curl \
    getcap \
    htop \
    lib7z \
    libsepol \
    nano \
    pigz \
    powertop \
    setcap \
    unrar \
    unzip \
    vim \
    wget \
    zip

# Filesystems tools
PRODUCT_PACKAGES += \
    e2fsck \
    tune2fs \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    mke2fs \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs \
    mkfs.ntfs \
    fsck.ntfs \
    mount.ntfs

# Required packages
PRODUCT_PACKAGES += \
    ThemePicker \
    OctaviThemesStub \
    PixelThemesStub2019 \
    WallpaperPickerGoogle \
    OmniJaws \
    WeatherIcons \
    QuickAccessWallet


# Custom Overlays
# Settings
PRODUCT_PACKAGES += \
    SystemRavenBlackOverlay \
    SystemUIRavenBlackOverlay \
    SystemDarkGrayOverlay \
    SystemUIDarkGrayOverlay \
    SystemStyleOverlay \
    SystemUIStyleOverlay \
    SystemNightOverlay \
    SystemUINightOverlay \
    SystemOctaviClearOverlay \
    SystemUIOctaviClearOverlay
