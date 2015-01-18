FROM aerath/docker-android
MAINTAINER Aerath44 <dmcraft@laposte.net>

RUN mkdir android-x86/android-4.4.4_r2;cd android-x86/android-4.4.4_r2;repo init -u http://git.android-x86.org/manifest -b android-4.4.4_r2;repo sync