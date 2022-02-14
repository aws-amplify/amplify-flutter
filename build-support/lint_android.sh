#!/bin/bash

set -euo pipefail

# Set plugin to variable passed from circle config
plugin=$2

echo $plugin

cd ./packages/$2/example/android

# Run in background to prevent Melos from hanging
./gradlew :"$plugin"_example:lintDebug --no-rebuild --no-daemon --stacktrace &
gradle_pid=$!

if ! wait $gradle_pid; then
    exit 1
fi
