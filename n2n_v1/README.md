n2n_v1 makefile
============


Requestments:
------------

- n2n_v1 source from [ntop.org](http://www.ntop.org/get-started/download/)
- Toolchinas from [sf.net](http://sourceforge.net/projects/dsgpl/) (Synology DS212+ need)
- Android NDK

Use:
------------

1. generate version.c file

        make version.c

2. make commands:

 For Android:

		patch -p0 < android_tun.patch
		ndk-build NDK_PROJECT_PATH=. APP_BUILD_SCRIPT=Android.mk



 For synology DS212+:

		make -f Makefile.DS212+

