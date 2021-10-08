include vendor/octavi/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/octavi/config/BoardConfigQcom.mk
endif

include vendor/octavi/config/BoardConfigSoong.mk
