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

if [[ ! -d models ]]; then
    echo "Must be run from goldens/ root" >&2
    exit 1
fi

TMP=$(mktemp -d)
PROTOCOLS="awsJson1_0 awsJson1_1 restJson1 restXml restXmlWithNamespace"

pushd $TMP
git clone --depth=1 https://github.com/awslabs/smithy.git
popd

for PROTOCOL in $PROTOCOLS; do
    DIR=models/$PROTOCOL
    rm -rf $DIR
    mkdir -p $DIR
    cp -R $TMP/smithy/smithy-aws-protocol-tests/model/$PROTOCOL/* $DIR
done

# Shared types
cp $TMP/smithy/smithy-aws-protocol-tests/model/aws-config.smithy models/shared/
cp $TMP/smithy/smithy-aws-protocol-tests/model/shared-types.smithy models/shared/
