#
# n2n for Android
# by osinx
#
# .../ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=Android.mk
#

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := edge
LOCAL_SRC_FILES := edge.c n2n.c minilzo.c twofish.c tuntap_freebsd.c tuntap_linux.c tuntap_osx.c version.c
LOCAL_CFLAGS    := -c -DANDROID -D__linux__ -DIFCONFIGPATH=\"/system/xbin/\" -Wall
LOCAL_LDLIBS    := -lz

include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_MODULE    := supernode 
LOCAL_SRC_FILES := supernode.c n2n.c minilzo.c twofish.c tuntap_freebsd.c tuntap_linux.c tuntap_osx.c version.c
LOCAL_CFLAGS    := -c -DANDROID -D__linux__ -DIFCONFIGPATH=\"/system/xbin/\" -Wall
LOCAL_LDLIBS    := -lz

include $(BUILD_EXECUTABLE)

