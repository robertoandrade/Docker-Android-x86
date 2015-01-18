FROM aerath/docker-android
MAINTAINER Aerath44 <dmcraft@laposte.net>

RUN mkdir android-x86;mkdir android-x86/android-4.4.4_r2;cd android-x86/android-4.4.4_r2
RUN repo init -u http://git.android-x86.org/manifest -b android-4.4.4_r2;repo sync
RUN make -j4 iso_img TARGET_PRODUCT=android_x86
