# Inherit full common Lineage stuff
$(call inherit-product, vendor/xandar/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include Lineage LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/xandar/overlay/dictionaries
