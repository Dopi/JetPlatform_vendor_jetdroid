###############################################################
############## JetDroid Modifications Start ###################
# vold.conf needs to be included for USB mass storage 
# It defines the interface between Android and SD card

LOCAL_PATH := $(my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := vold.conf

LOCAL_MODULE_CLASS := ETC

LOCAL_SRC_FILES := $(LOCAL_MODULE)

include $(BUILD_PREBUILT)

###############################################################
# nvram file for wifi driver

include $(CLEAR_VARS)

LOCAL_MODULE := nvram.txt

LOCAL_MODULE_TAGS := user development

LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/wifi

LOCAL_SRC_FILES := $(LOCAL_MODULE)

include $(BUILD_PREBUILT)

###############################################################
# firmware for wifi driver
# needs to be enabled if firmware is not built in the driver

#include $(CLEAR_VARS)

#LOCAL_MODULE := rtecdc.bin

#LOCAL_MODULE_TAGS := user development

#LOCAL_MODULE_CLASS := ETC
#LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)

#LOCAL_SRC_FILES := $(LOCAL_MODULE)

#include $(BUILD_PREBUILT)

############## JetDroid Modifications End #####################
###############################################################
