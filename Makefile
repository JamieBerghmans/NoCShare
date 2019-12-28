INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NoCShare

NoCShare_FILES = Tweak.x
NoCShare_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
