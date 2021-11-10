/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_flutter/src/config/amplify_config.dart';
import 'package:flutter/foundation.dart';

import 'create_config_object.dart';

AmplifyConfig? parseConfigJson(String configuration) {
  try {
    return createConfigObject(configuration);
  } on Exception {
    if (kDebugMode) {
      debugPrint(
          'There was an unexpected problem parsing the amplifyconfiguration.dart file.');
    }
  }
}
