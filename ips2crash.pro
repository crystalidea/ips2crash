QT = ''
CONFIG += console
CONFIG -= app_bundle

include(../common/deploy_mac/qmake_mac.prj)

QMAKE_MACOSX_DEPLOYMENT_TARGET = 12.0 # override

TEMPLATE = app
TARGET = ips2crash

DESTDIR = "build/$$BUILD_DIR"

OBJECTIVE_SOURCES += main.m

LIBS += -framework AppKit
LIBS += -F/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/System/Library/PrivateFrameworks/ -framework OSAnalytics

CONFIG += FINAL_CODESIGN

include($$MY_COMMON/deploy_mac/final.prj)
