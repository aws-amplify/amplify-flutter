#!/bin/bash
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

if [[ -n "$CI" ]]; then
    cd packages/smithy/goldens
fi

if [[ ! -e smithy ]]; then
    echo "Must be run from goldens/ root" >&2
    exit 1
fi

if [[ -z "$CI" ]]; then
    git submodule update --init
fi

PROTOCOLS="awsJson1_0 awsJson1_1 restJson1 restXml restXmlWithNamespace"

for PROTOCOL in $PROTOCOLS; do
    DIR=models/$PROTOCOL
    rm -rf $DIR
    mkdir -p $DIR
    cp -R smithy/smithy-aws-protocol-tests/model/$PROTOCOL/* $DIR
done

# Shared types
mkdir -p models/shared
cp smithy/smithy-aws-protocol-tests/model/aws-config.smithy models/shared/
cp smithy/smithy-aws-protocol-tests/model/shared-types.smithy models/shared/

# Generate AST if running in CI
if [[ -n "$CI" ]]; then
    for PROTOCOL in $PROTOCOLS; do
        /smithy/bin/smithy ast -d \
            /smithy/lib/traits \
            models/shared \
            models/$PROTOCOL > models/${PROTOCOL}.json
    done
fi
