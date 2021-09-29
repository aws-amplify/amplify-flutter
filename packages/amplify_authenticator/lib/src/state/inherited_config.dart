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
import 'package:flutter/material.dart';

class InheritedConfig extends InheritedWidget {
  const InheritedConfig({
    Key? key,
    required this.config,
    required Widget child,
  }) : super(key: key, child: child);

  final AmplifyConfig? config;

  // ignore: public_member_api_docs
  static AmplifyConfig? of(BuildContext context) {
    final config =
        context.dependOnInheritedWidgetOfExactType<InheritedConfig>();
    assert(() {
      if (config == null) {
        throw FlutterError.fromParts([
          ErrorSummary('No InheritedConfig widget found.'),
          ErrorDescription(
              'Make sure your app is wrapped with an Authenticator widget.')
        ]);
      }
      return true;
    }());
    return config!.config;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}

// ignore_for_file: prefer_asserts_with_message
