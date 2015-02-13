FROM aerath/docker-android
MAINTAINER Aerath44 <dmcraft@laposte.net>

RUN chmod +x .bash_profile
RUN ./.bash_profile

# Updating Android SDK
RUN cd android-sdk-linux/tools/
RUN ./android -s update sdk --no-ui --filter 1,2,3,10,19,20,22,40,42,60,61,65,79,80,102,103,112,113,118,119,120,121,122,123,124

# Getting Repo Tool
RUN mkdir ~/bin
RUN PATH=~/bin:$PATH
RUN curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
RUN chmod a+x ~/bin/repo

# Pulling Android x86 sources
RUN mkdir android-x86
RUN mkdir android-x86/kitkat-x86
RUN cd android-x86/kitkat-x86
RUN repo init -u http://git.android-x86.org/manifest -b kitkat-x86
RUN repo sync

# Making ISO and Kernel
#RUN make -j4 iso_img
#RUN make kernel