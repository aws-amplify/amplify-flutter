#!/bin/bash
# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0

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
