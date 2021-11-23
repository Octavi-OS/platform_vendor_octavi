# Inherit common Lineage stuff
$(call inherit-product, vendor/xandar/config/common.mk)

# Inherit Lineage atv device tree
$(call inherit-product, device/xandar/atv/lineage_atv.mk)

# AOSP packages
PRODUCT_PACKAGES += \
    LeanbackIME

# Lineage packages
PRODUCT_PACKAGES += \
    LineageCustomizer

PRODUCT_PACKAGE_OVERLAYS += vendor/xandar/overlay/tv
