#!/usr/bin/env bash
# Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

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
