include vendor/xandar/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/xandar/config/BoardConfigQcom.mk
endif

include vendor/xandar/config/BoardConfigSoong.mk
