TARGET = iphone:clang:latest:13.0
ARCHS = arm64 arm64e
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NoCShare

NoCShare_FILES = Tweak.x
NoCShare_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
