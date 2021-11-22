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

import 'dart:async';

import 'package:amplify_core/types/exception/AmplifyException.dart';
import 'package:amplify_core/types/exception/AmplifyExceptionMessages.dart';
import 'package:flutter/services.dart';
export './types/index.dart';

class AmplifyCore {
  static const MethodChannel _channel = const MethodChannel('amplify_core');

  static Future<String> get platformVersion async {
    final String? version =
        await (_channel.invokeMethod<String>('getPlatformVersion'));
    if (version == null)
      throw new AmplifyException(
          AmplifyExceptionMessages.nullReturnedFromMethodChannel);
    return version;
  }
}
