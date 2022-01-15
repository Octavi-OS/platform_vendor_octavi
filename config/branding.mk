# Copyright (C) 2016-2017 AOSiP
# Copyright (C) 2020 Fluid
# Copyright (C) 2021 OCTAVIOS
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Versioning System
OCTAVI_NUM_VER := 3.3

TARGET_PRODUCT_SHORT := $(subst octavi_,,$(OCTAVI_BUILD_TYPE))

OCTAVI_BUILD_TYPE ?= UNOFFICIAL

# Only include Updater for official, weeklies, CI and nightly builds
ifeq ($(filter-out OFFICIAL WEEKLIES NIGHTLY CI,$(OCTAVI_BUILD_TYPE)),)
    PRODUCT_PACKAGES += \
        Updater
endif

# Sign builds if building an official, weekly, CI and nightly build
ifeq ($(filter-out OFFICIAL WEEKLIES NIGHTLY CI,$(OCTAVI_BUILD_TYPE)),)
    PRODUCT_DEFAULT_DEV_CERTIFICATE := $(KEYS_LOCATION)
endif

# Set all versions
BUILD_DATE :=  $(shell date  +%Y%m%d-%H%M)
BUILD_TIME := $(shell date -u +%H%M)
OCTAVI_BUILD_VERSION := $(OCTAVI_NUM_VER)
OCTAVI_VERSION := $(OCTAVI_BUILD_VERSION)-$(OCTAVI_BUILD)-$(BUILD_DATE)-VANILLA-$(OCTAVI_BUILD_TYPE)
ifeq ($(WITH_GAPPS), true)
OCTAVI_VERSION := $(OCTAVI_BUILD_VERSION)-$(OCTAVI_BUILD)-$(BUILD_DATE)-GAPPS-$(OCTAVI_BUILD_TYPE)
endif
ROM_FINGERPRINT := OCTAVI/$(PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(BUILD_TIME)
OCTAVI_DISPLAY_VERSION := $(OCTAVI_VERSION)
RELEASE_TYPE := $(OCTAVI_BUILD_TYPE)
