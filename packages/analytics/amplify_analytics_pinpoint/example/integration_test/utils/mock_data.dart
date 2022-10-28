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

const boolProperty = MapEntry('boolProperty', true);
// Boolean properties are recorded as strings
const stringifiedBoolProperty = MapEntry('boolProperty', 'true');

const doubleProperty = MapEntry('doubleProperty', pi);
// There is some lossiness behavior to doubles
const lossyDoubleProperty = MapEntry('doubleProperty', 3.141592653589793);

const intProperty = MapEntry('intProperty', 42);
const stringProperty = MapEntry('stringProperty', 'Hello, world');

const secondStringProperty = MapEntry('secondStringProperty', 'Another world');
const secondIntProperty = MapEntry('secondIntProperty', 43);
