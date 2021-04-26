TARGET_BUILD_LAWNCHAIR ?= true
ifeq ($(strip $(TARGET_BUILD_LAWNCHAIR)),true)
include vendor/lawnchair/lawnchair.mk
endif

# RRO Overlays
PRODUCT_PACKAGES += \
    NavigationBarModeGesturalOverlayFS

# Octavi packages
PRODUCT_PACKAGES += \
    Updater \
    ThemePicker

# Statusbar Icons
PRODUCT_PACKAGES += \
    StrokeSignalOverlay \
    SneakySignalOverlay \
    XperiaSignalOverlay

# Wi-Fi Icons
PRODUCT_PACKAGES += \
    StrokeWiFiOverlay \
    SneakyWiFiOverlay \
    XperiaWiFiOverlay

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
