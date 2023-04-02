#!/bin/bash
# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0


for i in {1..66560}
do
    echo -n "a" >> chunked_request.txt
done
