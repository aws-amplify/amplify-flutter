#!/bin/bash

set -e

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # apt update && apt install -y libsecret-1-dev libglib2.0-dev dbus gnome-keyring

    # If running in headless mode, re-run script in dbus session.
    if [ -z $DBUS_SESSION_BUS_ADDRESS ]; then
        exec dbus-run-session -- $0
    fi

    # Set up keyring in CI env
    if [ -n $CI ]; then
        echo 'password' | gnome-keyring-daemon --start --replace --daemonize --unlock
    fi
fi

dart test
