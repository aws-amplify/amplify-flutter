/*
 * Copyright 2020 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

import 'dart:html' as html;
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:amplify_flutter/src/amplify_impl.dart';

/// An implementation of [Core] that uses method channels.
class AmplifyFlutterWeb extends AmplifyClass {
  AmplifyFlutterWeb() : super.protected();

  @override
  Future<void> _configurePlatforms(String version, String configuration) async {
    print(configuration);
  }
}
