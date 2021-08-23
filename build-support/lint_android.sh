#!/bin/bash

set -e

cd android

# Run in background to prevent Melos from hanging
./gradlew lint --no-rebuild --quiet --console plain &
gradle_pid=$!

if ! wait $gradle_pid; then
    exit 1
fi
