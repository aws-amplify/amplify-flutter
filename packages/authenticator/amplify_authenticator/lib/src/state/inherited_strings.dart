// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class InheritedStrings extends InheritedWidget {
  const InheritedStrings({
    Key? key,
    required this.resolver,
    required Widget child,
  }) : super(key: key, child: child);

  final AuthStringResolver resolver;

  static AuthStringResolver of(BuildContext context) {
    final strings =
        context.dependOnInheritedWidgetOfExactType<InheritedStrings>();
    assert(() {
      if (strings == null) {
        throw FlutterError.fromParts([
          ErrorSummary('No InheritedStrings widget found.'),
          ErrorDescription(
            'Make sure your app is wrapped with an Authenticator widget.',
          )
        ]);
      }
      return true;
    }());
    return strings!.resolver;
  }

  @override
  bool updateShouldNotify(InheritedStrings oldWidget) {
    return oldWidget.resolver != resolver;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty<AuthStringResolver>('resolver', resolver));
  }
}

// ignore_for_file: prefer_asserts_with_message
