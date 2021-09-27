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

UNPUB_BINARY=unpub_${OS}_amd64
YQ_VERSION=v4.13.2
YQ_BINARY=yq_${OS}_amd64
mkdir -p bin

# Install unpub
curl -s -L https://github.com/dnys1/unpub-launcher/releases/download/v2.0/${UNPUB_BINARY}.tar.gz | tar xz
mv ${UNPUB_BINARY} bin/unpub
chmod +x bin/unpub

# Export CI env variables
export UNPUB_HOST=localhost
export UNPUB_PORT=4000
export UNPUB_LOCAL_PATH="."

# Install yq
curl -s -L https://github.com/mikefarah/yq/releases/download/${YQ_VERSION}/${YQ_BINARY}.tar.gz | tar xz
mv ${YQ_BINARY} bin/yq
chmod +x bin/yq

PATH="$PWD/bin:$PATH"

if ! command -v unpub &>/dev/null; then
    echo "Could not find unpub in PATH" >&2
    exit 1
fi

if ! command -v yq &>/dev/null; then
    echo "Could not find yq in PATH" >&2
    exit 1
fi


DEPS='. as $doc | (.dependencies | keys | .[] | select(. == "amplify*") as $k ireduce ({}; $doc.dependencies[$k] = {"hosted": { "url": "http://localhost:8000", "name": $k }, "version": "any" })) | $doc'
DEV_DEPS='. as $doc | (.dev_dependencies | keys | .[] | select(. == "amplify*") as $k ireduce ({}; $doc.dev_dependencies[$k] = {"hosted": { "url": "http://localhost:8000", "name": $k }, "version": "any" })) | $doc'

# Fix example
pushd example >/dev/null

# Replace Amplify dependencies with hosted version
yq e "$DEPS" -i pubspec.yaml

popd >/dev/null

# Fix individual packages
for PACKAGE in packages/*; do
    if [[ $PACKAGE == "packages/amplify_lints" ]]; then
        continue
    fi

    pushd $PACKAGE >/dev/null

    # Replace Amplify dependencies with hosted version
    yq e "$DEPS" -i pubspec.yaml
    
    # Replace Amplify dev dependencies with hosted version
    yq e "$DEV_DEPS" -i pubspec.yaml

    if [[ -d example ]]; then 
        pushd example >/dev/null

        yq e "$DEPS" -i pubspec.yaml

        popd >/dev/null
    fi

    popd >/dev/null
done

# Launch server and seed with local packages
unpub -port $UNPUB_PORT -launch &
