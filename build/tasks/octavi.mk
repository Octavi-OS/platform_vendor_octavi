# Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2017 The LineageOS Project
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

# -----------------------------------------------------------------
# Octavi OTA update package

# Build system colors
ifneq ($(BUILD_WITH_COLORS),0)
  CL_RED="\033[31m"
  CL_GRN="\033[32m"
  CL_YLW="\033[33m"
  CL_BLU="\033[34m"
  CL_MAG="\033[35m"
  CL_CYN="\033[36m"
  CL_RST="\033[0m"
endif

OCTAVI_TARGET_PACKAGE := $(PRODUCT_OUT)/$(OCTAVI_VERSION).zip

.PHONY: octavi
octavi: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(OCTAVI_TARGET_PACKAGE)
	@echo "Package Complete: $(OCTAVI_TARGET_PACKAGE)" >&2
	echo -e ${CL_GRN}"    ____  _______________ _    ______   ____  _____       "${CL_RST}
	echo -e ${CL_RED}"   / __ \/ ____/_  __/   | |  / /  _/  / __ \/ ___/       "${CL_RST}
	echo -e ${CL_CYN}"  / / / / /     / / / /| | | / // /   / / / /\__ \        "${CL_RST} 
	echo -e ${CL_BLU}" / /_/ / /___  / / / ___ | |/ // /   / /_/ /___/ /        "${CL_RST}
	echo -e ${CL_MAG}" \____/\____/ /_/ /_/  |_|___/___/   \____//____/         "${CL_RST}
	echo -e ${CL_BLD}${CL_CYN}"================================================="${CL_RST}
	echo -e ${CL_BLD}${CL_YLW}"Zip: "${CL_YLW} $(OCTAVI_TARGET_PACKAGE)${CL_RST}
	echo -e ${CL_BLD}${CL_YLW}"Size:"${CL_YLW}" `du -sh $(OCTAVI_TARGET_PACKAGE) | awk '{print $$1}' `"${CL_RST}
	echo -e ${CL_BLD}${CL_CYN}"====================================================="${CL_RST}
