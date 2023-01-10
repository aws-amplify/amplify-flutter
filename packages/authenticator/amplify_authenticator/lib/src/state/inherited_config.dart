// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class InheritedConfig extends InheritedWidget {
  const InheritedConfig({
    Key? key,
    required this.amplifyConfig,
    required this.padding,
    required Widget child,
  }) : super(key: key, child: child);

  final AmplifyConfig? amplifyConfig;
  final EdgeInsets padding;

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
