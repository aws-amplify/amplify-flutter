#!/usr/bin/env bash

set -euo pipefail

YQ_VERSION=v4.12.2
YQ_BINARY=yq_linux_amd64

if [[ -n "$CI" ]]; then
    # Install unpub launcher
    curl -s -L https://github.com/dnys1/unpub-launcher/releases/download/v1.0/launcher_linux_amd64.tar.gz | tar xz

    # Seed packages
    UNPUB_HOST=localhost \
    UNPUB_PORT=8000 \
    UNPUB_GIT_URL=${CIRCLE_REPOSITORY_URL} \
    UNPUB_GIT_REF=${CIRCLE_SHA1} \
    ./launcher_linux_amd64

    # Install yq
    curl -s -L https://github.com/mikefarah/yq/releases/download/${YQ_VERSION}/${YQ_BINARY}.tar.gz | tar xz
    mkdir -p bin
    mv ${YQ_BINARY} bin/yq

    export PATH="$PWD/bin:$PATH"
fi

if ! command -v yq &>/dev/null; then
    echo "Must install yq before proceeding: \"brew install yq\""
    exit 1
fi

# function no_docker {
#     echo "Must install Docker Compose before proceeding."
#     exit 1
# }

# DOCKER_COMMAND=""
# if command -v docker-compose &>/dev/null; then
#     DOCKER_COMMAND="docker-compose" 
# elif command -v docker &>/dev/null; then
#     docker compose >/dev/null || no_docker
#     DOCKER_COMMAND="docker compose"
# else
#     no_docker
# fi

# UNPUB_DIR=~/unpub

# # Check if UNPUB_DIR is already in use.
# if [[ -d $UNPUB_DIR ]]; then
#     echo -n "$UNPUB_DIR already exists." >&2
#     if [[ -n "$CI" ]]; then
#         exit 1
#     fi
#     echo "Please confirm which directory you want to use." >&2
#     echo -n ": "
#     OVERRIDE_DIR=""
#     read $OVERRIDE_DIR
#     if [[ -n $OVERRIDE_DIR ]]; then
#         UNPUB_DIR=$OVERRIDE_DIR
#     fi
# fi

# echo "Launching unpub server at $UNPUB_DIR..."

# Launch unpub server
# mkdir -p $UNPUB_DIR
# pushd $UNPUB_DIR
# curl -L https://raw.githubusercontent.com/dnys1/unpub-launcher/main/docker/latest/docker-compose.yml \
#     -o docker-compose.yml
# $DOCKER_COMMAND up -d
# popd

DEPS='. as $doc | (.dependencies | keys | .[] | select(. == "amplify*") as $k ireduce ({}; $doc.dependencies[$k] = {"hosted": { "url": "http://localhost:8000", "name": $k }, "version": "any" })) | $doc'
DEV_DEPS='. as $doc | (.dev_dependencies | keys | .[] | select(. == "amplify*") as $k ireduce ({}; $doc.dev_dependencies[$k] = {"hosted": { "url": "http://localhost:8000", "name": $k }, "version": "any" })) | $doc'

# Fix example
pushd example

# Replace Amplify dependencies with hosted version
yq e "$DEPS" -i pubspec.yaml

popd

# Fix individual packages
for PACKAGE in packages/*; do
    pushd $PACKAGE

    set +e

    # Replace Amplify dependencies with hosted version
    yq e "$DEPS" -i pubspec.yaml
    
    # Replace Amplify dev dependencies with hosted version
    yq e "$DEV_DEPS" -i pubspec.yaml

    set -e

    if [[ -d example ]]; then 
        pushd example
        yq e "$DEPS" -i pubspec.yaml
        popd
    fi

    popd
done
