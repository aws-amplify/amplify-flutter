#!/usr/bin/env bash
# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0

set -e

# Deploy Analytics, Auth, and Storage categories
pushd infra
pnpm install
pnpm run setup
pnpm run deploy
popd

# Deploy API category
pushd packages/api/amplify_api/example
./tool/provision_integration_test_resources.sh
popd
