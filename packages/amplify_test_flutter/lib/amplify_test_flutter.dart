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

import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';

class AmplifyTestFlutter {
  static const MethodChannel _channel = MethodChannel('amplify_test_flutter');

  static Future<void> reset() {
    if (Platform.isAndroid) {
      throw UnsupportedError('Amplify.reset is not available on Android');
    }
    return _channel.invokeMethod('reset');
  }
}
