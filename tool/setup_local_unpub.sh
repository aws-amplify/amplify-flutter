#!/usr/bin/env bash

set -eo pipefail

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    OS=linux
elif [[ "$OSTYPE" == "darwin"* ]]; then
    OS=darwin
else 
    echo "Unknown OS: $OSTYPE" >&2
    exit 1
fi

UNPUB_VERSION=v2.0
UNPUB_BINARY=unpub_${OS}_amd64
mkdir -p bin

# Install unpub
echo "Installing unpub..."
curl -s -L https://github.com/dnys1/unpub/releases/download/${UNPUB_VERSION}/${UNPUB_BINARY}.tar.gz | tar xz
mv ${UNPUB_BINARY} bin/unpub
chmod +x bin/unpub

# Export CI env variables
export UNPUB_HOST=localhost
export UNPUB_PORT=4000
export UNPUB_LOCAL_PATH="."

PATH="$PWD/bin:$PATH"

if ! command -v unpub &>/dev/null; then
    echo "Could not find unpub in PATH" >&2
    exit 1
fi

echo "Fixing package dependencies..."
( cd tool/bootstrap && dart pub get )
dart run tool/bootstrap/bin/bootstrap.dart --url=http://${UNPUB_HOST}:${UNPUB_PORT}

# Launch server and seed with local packages
echo "Launching unpub server..."
unpub -port $UNPUB_PORT -launch
