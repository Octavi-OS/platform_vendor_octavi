# RRO Overlays
PRODUCT_PACKAGES += \
    NavigationBarModeGesturalOverlayFS

# Octavi packages
PRODUCT_PACKAGES += \
    ota \
    Updater \
    ThemePicker

# Statusbar Icons
PRODUCT_PACKAGES += \
    StrokeSignalOverlay \
    SneakySignalOverlay \
    XperiaSignalOverlay \
    ZigZagSignalOverlay \
    WavySignalOverlay \
    RoundSignalOverlay \
    InsideSignalOverlay \
    BarsSignalOverlay

# Wi-Fi Icons
PRODUCT_PACKAGES += \
    StrokeWiFiOverlay \
    SneakyWiFiOverlay \
    XperiaWiFiOverlay \
    ZigZagWiFiOverlay \
    WavyWiFiOverlay \
    RoundWiFiOverlay \
    InsideWiFiOverlay \
    BarsWiFiOverlay

# Extra tools in Awaken
PRODUCT_PACKAGES += \
    7z \
    bash \
    curl \
    getcap \
    htop \
    lib7z \
    libsepol \
    nano \
    pigz \
    setcap \
    unrar \
    vim \
    wget \
    zip

# Filesystems tools
PRODUCT_PACKAGES += \
    fsck.ntfs \
    mke2fs \
    mkfs.ntfs \
    mount.ntfs

# Openssh
PRODUCT_PACKAGES += \
    scp \
    sftp \
    ssh \
    sshd \
    sshd_config \
    ssh-keygen \
    start-ssh

# rsync
PRODUCT_PACKAGES += \
    rsync

# Fonts
PRODUCT_COPY_FILES += \
      vendor/octavi/prebuilt/fonts/Aclonica.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Aclonica.ttf \
      vendor/octavi/prebuilt/fonts/Amarante.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Amarante.ttf \
      vendor/octavi/prebuilt/fonts/Bariol-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Bariol-Regular.ttf \
      vendor/octavi/prebuilt/fonts/Cagliostro-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Cagliostro-Regular.ttf \
      vendor/octavi/prebuilt/fonts/CaviarDreams.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/CaviarDreams.ttf \
      vendor/octavi/prebuilt/fonts/Comic_Sans.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Comic_Sans.ttf \
      vendor/octavi/prebuilt/fonts/Coolstory-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Coolstory-Regular.ttf \
      vendor/octavi/prebuilt/fonts/Domkrat.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Domkrat.ttf \
      vendor/octavi/prebuilt/fonts/Exo2.otf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Exo2.otf \
      vendor/octavi/prebuilt/fonts/Fakedes.otf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Fakedes.otf \
      vendor/octavi/prebuilt/fonts/Fifa_2018.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Fifa_2018.ttf \
      vendor/octavi/prebuilt/fonts/GoogleSans-Bold.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/GoogleSans-Bold.ttf \
      vendor/octavi/prebuilt/fonts/GoogleSans-BoldItalic.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/GoogleSans-BoldItalic.ttf \
      vendor/octavi/prebuilt/fonts/GoogleSans-Italic.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/GoogleSans-Italic.ttf \
      vendor/octavi/prebuilt/fonts/GoogleSans-Medium.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/GoogleSans-Medium.ttf \
      vendor/octavi/prebuilt/fonts/GoogleSans-MediumItalic.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/GoogleSans-MediumItalic.ttf \
      vendor/octavi/prebuilt/fonts/GoogleSans-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/GoogleSans-Regular.ttf \
      vendor/octavi/prebuilt/fonts/Honda.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Honda.ttf \
      vendor/octavi/prebuilt/fonts/Hortensia.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Hortensia.ttf \
      vendor/octavi/prebuilt/fonts/LGSmartGothic.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/LGSmartGothic.ttf \
      vendor/octavi/prebuilt/fonts/Minusman.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Minusman.ttf \
      vendor/octavi/prebuilt/fonts/Montserrat.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Montserrat.ttf \
      vendor/octavi/prebuilt/fonts/NokiaPure-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/NokiaPure-Regular.ttf \
      vendor/octavi/prebuilt/fonts/Nova.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Nova.ttf \
      vendor/octavi/prebuilt/fonts/Oswald.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Oswald.ttf \
      vendor/octavi/prebuilt/fonts/RobotoCondensedLight.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/RobotoCondensedLight.ttf \
      vendor/octavi/prebuilt/fonts/Rosemary-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Rosemary-Regular.ttf \
      vendor/octavi/prebuilt/fonts/RoundedElegance.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/RoundedElegance.ttf \
      vendor/octavi/prebuilt/fonts/SamsungOne.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/SamsungOne.ttf \
      vendor/octavi/prebuilt/fonts/SanFranciscoDisplayPro.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/SanFranciscoDisplayPro.ttf \
      vendor/octavi/prebuilt/fonts/SlateFromOP-Light.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/SlateFromOP-Light.ttf \
      vendor/octavi/prebuilt/fonts/SlateFromOP-Regular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/SlateFromOP-Regular.ttf \
      vendor/octavi/prebuilt/fonts/SonySketch.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/SonySketch.ttf \
      vendor/octavi/prebuilt/fonts/Storopia.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Storopia.ttf \
      vendor/octavi/prebuilt/fonts/Surfer.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Surfer.ttf \
      vendor/octavi/prebuilt/fonts/Taurus.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Taurus.ttf \
      vendor/octavi/prebuilt/fonts/Technical.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/Technical.ttf \
      vendor/octavi/prebuilt/fonts/UbuntuRegular.ttf:$(TARGET_COPY_OUT_SYSTEM)/fonts/UbuntuRegular.ttf
