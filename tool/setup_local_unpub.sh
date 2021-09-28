#!/usr/bin/env bash

set -eo pipefail

if [[ -z "$CI" ]]; then
    echo "This script only works on CircleCI." >&2
    exit 1
fi

YQ_VERSION=v4.12.2
YQ_BINARY=yq_linux_amd64
LAUNCHER_BINARY=launcher_linux_amd64

mkdir -p bin

# Install unpub launcher
curl -s -L https://github.com/dnys1/unpub-launcher/releases/download/v1.0/${LAUNCHER_BINARY}.tar.gz | tar xz
mv ${LAUNCHER_BINARY} bin/launch-unpub

# Export CI env variables
export UNPUB_HOST=localhost
export UNPUB_PORT=8000
export UNPUB_LOCAL_PATH="."

# Install yq
curl -s -L https://github.com/mikefarah/yq/releases/download/${YQ_VERSION}/${YQ_BINARY}.tar.gz | tar xz
mv ${YQ_BINARY} bin/yq

export PATH="$PWD/bin:$PATH"

if ! command -v launch-unpub &>/dev/null; then
    echo "Could not find launch-unpub in PATH" >&2
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
    pushd $PACKAGE >/dev/null

    # This step can fail for amplify_lints where there are no deps.
    set +e

    # Replace Amplify dependencies with hosted version
    yq e "$DEPS" -i pubspec.yaml
    
    # Replace Amplify dev dependencies with hosted version
    yq e "$DEV_DEPS" -i pubspec.yaml

    set -e

    if [[ -d example ]]; then 
        pushd example >/dev/null

        yq e "$DEPS" -i pubspec.yaml

        popd >/dev/null
    fi

    popd >/dev/null
done

# Seed with local packages
launch-unpub
