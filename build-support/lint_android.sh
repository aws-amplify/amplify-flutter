#!/bin/bash

set -euo pipefail

# Script is run from example/ folder. 
# Pop up a dir to get the package we're testing.
pushd ..
project=$(basename $PWD)
popd

cd android

# Run in background to prevent Melos from hanging
./gradlew :$project:lintDebug --no-rebuild --no-daemon --stacktrace &
gradle_pid=$!

if ! wait $gradle_pid; then
    exit 1
fi
