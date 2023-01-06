// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:math';

// min and max 32 bit int values
// 32 bit int is the largest supported bewteeen iOS and Android
// see: https://github.com/aws-amplify/amplify-flutter/issues/850
int dataStoreMaxInt = pow(2, 31).toInt() - 1;
int dataStoreMinInt = -pow(2, 31).toInt();
