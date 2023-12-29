TARGET = iphone:14.5
ARCHS = arm64 arm64e

THEOS_PACKAGE_SCHEME=roothide


include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = ColorCodedLogs
ColorCodedLogs_FILES = ColorCodedLogs.mm
ColorCodedLogs_INSTALL_PATH = /Library/PreferenceBundles
ColorCodedLogs_FRAMEWORKS = Foundation UIKit
ColorCodedLogs_LIBRARIES = colorpicker
ColorCodedLogs_PRIVATE_FRAMEWORKS = Preferences
ColorCodedLogs_LDFLAGS += -lroothide

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/ColorCodedLogs.plist$(ECHO_END)


