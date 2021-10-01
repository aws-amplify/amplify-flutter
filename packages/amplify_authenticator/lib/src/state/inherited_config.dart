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

import 'package:amplify_authenticator/src/enums/alias.dart';
import 'package:amplify_flutter/src/config/amplify_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@immutable
class AuthenticatorConfig {
  const AuthenticatorConfig({
    required this.amplifyConfig,
    required this.usernameAlias,
  });

  final AmplifyConfig? amplifyConfig;
  final Alias usernameAlias;

  @override
  bool operator ==(Object other) =>
      other is AuthenticatorConfig &&
      amplifyConfig == other.amplifyConfig &&
      usernameAlias == other.usernameAlias;

  @override
  int get hashCode => hashValues(amplifyConfig, usernameAlias);
}

class InheritedConfig extends InheritedWidget {
  const InheritedConfig({
    Key? key,
    required this.config,
    required Widget child,
  }) : super(key: key, child: child);

  final AuthenticatorConfig config;

  static AuthenticatorConfig of(BuildContext context) {
    final inheritedConfig =
        context.dependOnInheritedWidgetOfExactType<InheritedConfig>();
    assert(() {
      if (inheritedConfig == null ||
          inheritedConfig.config.amplifyConfig == null) {
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
    return inheritedConfig!.config;
  }

  @override
  bool updateShouldNotify(InheritedConfig oldWidget) {
    var updatedConfig = oldWidget.config != config;
    if (updatedConfig) {
      if (oldWidget.config.amplifyConfig == null) {
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
    properties.add(DiagnosticsProperty<AuthenticatorConfig>('config', config));
  }
}

// ignore_for_file: prefer_asserts_with_message
