#!/bin/bash
# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0

set -e

APP_ID=$AFS_CANARY_APP_ID ../build-support/pull_backend_by_app_id.sh 
