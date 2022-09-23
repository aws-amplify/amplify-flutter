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

if [[ ! -e smithy ]]; then
    echo "Must be run from goldens/ root" >&2
    exit 1
fi

PROTOCOLS="awsJson1_0 awsJson1_1 restJson1 restXml restXmlWithNamespace"
MODELS=models2

for PROTOCOL in $PROTOCOLS; do
    DIR=$MODELS/$PROTOCOL
    rm -r $DIR
    mkdir -p $DIR
    cp -R smithy/smithy-aws-protocol-tests/model/$PROTOCOL/* $DIR
done

# Shared types
mkdir -p $MODELS/shared
cp smithy/smithy-aws-protocol-tests/model/aws-config.smithy $MODELS/shared/
cp smithy/smithy-aws-protocol-tests/model/shared-types.smithy $MODELS/shared/

for FILE in $MODELS/**; do
    if [[ -f $FILE ]]; then
        sed -i '' -e 's/coral/example/g' $FILE
    fi
done
