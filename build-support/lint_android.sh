#!/bin/bash

set -euo pipefail

# Script is run from example/ folder. 
# Pop up a dir to get the package we're testing.
pushd ..
project=$(basename $PWD)
popd

cd android

# * Run in background to prevent Melos from hanging
# * can't use -no-rebuild here as the lint depends on local_aar_for_lint the
#   intermediates to work, but flutter build doesn't generate it
./gradlew :$project:lintDebug --no-daemon --stacktrace &
gradle_pid=$!

if ! wait $gradle_pid; then
    exit 1
fi
