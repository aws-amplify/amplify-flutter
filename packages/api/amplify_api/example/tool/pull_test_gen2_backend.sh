#!/bin/bash
# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0

set -e

STACK_ID=$AFS_GEN2_STACK_ID ../../../../build-support/pull_gen2_backend_by_stack_id.sh 

npx ampx generate outputs --stack $AFS_GEN2_STACK_ID --profile ${AWS_PROFILE:-default} --format dart \--out-dir lib
