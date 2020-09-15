GET_VERSION := vendor/octavi/build/tools/getversion.py
OCTAVI_STATUS := $(shell $(GET_VERSION) status)
BUILD_TYPE := $(shell $(GET_VERSION) buildtype)
OCTAVI_BRANDING_VERSION := $(BUILD_TYPE)
OCTAVI_VERSION := $(shell $(GET_VERSION) version)

ifneq ($(SIGNING_KEYS),)
    PRODUCT_DEFAULT_DEV_CERTIFICATE := $(SIGNING_KEYS)/releasekey
endif
