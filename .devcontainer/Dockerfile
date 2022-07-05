FROM ubuntu:20.04

## Dockerfile for local development of Amplify Flutter packages on Linux

#Locale
ENV LANG C.UTF-8

# ENV
ENV USER="user1"
ENV USER_HOME="/home/$USER"
ENV UID=1000
ENV GID=$UID
ENV FLUTTER_CHANNEL="stable"
ENV FLUTTER_HOME="$USER_HOME/flutter"
ENV PUB_CACHE="$USER_HOME/.pub-cache"
ENV PATH=${PATH}:${FLUTTER_HOME}/bin:${PUB_CACHE}/bin

# Install packages
ENV DEBIAN_FRONTEND="noninteractive"
RUN apt-get update \
	&& apt-get install -y sudo \
	&& apt-get install -y wget curl ca-certificates git xz-utils zip unzip --no-install-recommends \
  	# packages required for linux development - https://docs.flutter.dev/get-started/install/linux#additional-linux-requirements
	&& apt-get install clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev -y \
	# keyring packages
	&& apt-get install gnome-keyring libsecret-1-dev dbus-x11 -y \
	# clean up
	&& apt-get autoremove -y \
	&& apt-get clean -y \
	&& rm -rf /var/lib/apt/lists/*
	
# Create a non-root user. Use the "remoteUser" property in devcontainer.json to use it.
# See https://aka.ms/vscode-remote/containers/non-root-user for details.
RUN groupadd --gid $GID $USER \
  && useradd -s /bin/bash --uid $UID --gid $GID -m $USER \
  && echo $USER ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USER \
  && chmod 0440 /etc/sudoers.d/$USER
USER $USER
WORKDIR $USER_HOME

# Install and Setup Flutter
RUN git clone --branch ${FLUTTER_CHANNEL} https://github.com/flutter/flutter.git ${FLUTTER_HOME} \
	&& flutter doctor \
	&& flutter config --no-analytics \
	&& dart --disable-analytics

# Activate melos
RUN dart pub global activate melos
