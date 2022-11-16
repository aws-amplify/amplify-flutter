#!/bin/bash

set -e

if [[ "$OSTYPE" == "linux-gnu"* ]]; then

    sudo apt-get update && sudo apt-get install -y libsecret-1-dev gnome-keyring

    # If running in headless mode, re-run script in dbus session.
    if [ -z $DBUS_SESSION_BUS_ADDRESS && -n $1 ]; then
        exec dbus-run-session -- $@
    fi

    # Set up keyring in CI env
    if [ -n $CI ]; then
        echo 'password' | gnome-keyring-daemon --start --replace --daemonize --unlock
    fi
fi
