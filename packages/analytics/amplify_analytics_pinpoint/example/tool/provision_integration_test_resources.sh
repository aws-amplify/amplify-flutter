#!/usr/bin/env bash

set -e

pushd backend
npm ci
npm run deploy
popd
