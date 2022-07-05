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

import 'package:amplify_authenticator/src/models/authenticator_theme.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class InheritedConfig extends InheritedWidget {
  const InheritedConfig({
    Key? key,
    required this.amplifyConfig,
    required this.padding,
    required Widget child,
    this.authenticatorTheme,
  }) : super(key: key, child: child);

  final AmplifyConfig? amplifyConfig;
  final EdgeInsets padding;
  final AuthenticatorTheme? authenticatorTheme;

  static InheritedConfig of(BuildContext context) {
    final inheritedConfig =
        context.dependOnInheritedWidgetOfExactType<InheritedConfig>();
    assert(() {
      if (inheritedConfig == null) {
        throw FlutterError.fromParts([
          ErrorSummary('InheritedConfig widget was not configured correctly.'),
          ErrorDescription(
            'Make sure your app is wrapped with an Authenticator widget and '
            'has called `Amplify.configure`.',
          ),
        ]);
      }
      return true;
    }());

    return inheritedConfig!;
  }

  @override
  bool updateShouldNotify(InheritedConfig oldWidget) {
    var updatedConfig = oldWidget.amplifyConfig != amplifyConfig;
    if (updatedConfig) {
      if (oldWidget.amplifyConfig == null) {
        return true;
      }
      throw FlutterError.fromParts([
        ErrorSummary(
          'Runtime re-configuration of the Authenticator is not supported.',
        ),
        ErrorDescription(
          'Please restart your app if you have made changes to your configuration.',
        ),
      ]);
    }
    return false;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty<AmplifyConfig?>('config', amplifyConfig));
    properties.add(DiagnosticsProperty<EdgeInsets>('padding', padding));
  }
}

// ignore_for_file: prefer_asserts_with_message
