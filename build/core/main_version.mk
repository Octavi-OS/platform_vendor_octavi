# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# OctaviOS Platform Display Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.octavi.display.version=$(OCTAVI_DISPLAY_VERSION) \
    ro.octavi.build.version=$(OCTAVI_BUILD_VERSION) \
    ro.octavi.build.date=$(BUILD_DATE) \
    ro.octavi.buildtype=$(OCTAVI_BUILD_TYPE) \
    ro.octavi.fingerprint=$(ROM_FINGERPRINT) \
    ro.octavi.version=$(OCTAVI_VERSION) \
    ro.modversion=$(OCTAVI_VERSION)
