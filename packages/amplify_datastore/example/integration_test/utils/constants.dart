//
// Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

import 'dart:math';

// min and max 32 bit int values
// 32 bit int is the largest supported bewteeen iOS and Android
// see: https://github.com/aws-amplify/amplify-flutter/issues/850
int dataStoreMaxInt = pow(2, 31).toInt() - 1;
int dataStoreMinInt = -pow(2, 31).toInt();
