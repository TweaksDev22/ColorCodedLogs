TARGET = iphone:14.5
ARCHS =  arm64 arm64e
THEOS_PACKAGE_SCHEME=roothide

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = ColorCodedLogs
ColorCodedLogs_FILES = Tweak.xm
ColorCodedLogs_FRAMEWORKS = UIKit
ColorCodedLogs_LIBRARIES = colorpicker
ColorCodedLogs_LDFLAGS += -lroothide

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += prefs
include $(THEOS_MAKE_PATH)/aggregate.mk

ColorCodedLogs_CODESIGN_FLAGS = -Sentitlements.plist