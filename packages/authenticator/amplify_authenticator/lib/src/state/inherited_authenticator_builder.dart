// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/models/authenticator_builder.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class InheritedAuthenticatorBuilder extends InheritedWidget {
  const InheritedAuthenticatorBuilder({
    Key? key,
    required Widget child,
    required this.authenticatorBuilder,
  }) : super(key: key, child: child);

  final AuthenticatorBuilder? authenticatorBuilder;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  static AuthenticatorBuilder? of(BuildContext context, {bool listen = true}) {
    InheritedAuthenticatorBuilder? inheritedViewModel;
    if (listen) {
      inheritedViewModel = context
          .dependOnInheritedWidgetOfExactType<InheritedAuthenticatorBuilder>();
    } else {
      inheritedViewModel = context
          .findAncestorWidgetOfExactType<InheritedAuthenticatorBuilder>();
    }
    assert(() {
      if (inheritedViewModel == null) {
        throw FlutterError.fromParts([
          ErrorSummary('No InheritedAuthenticatorBuilder widget found.'),
          ErrorDescription(
            'Make sure your app is wrapped with an Authenticator widget.',
          )
        ]);
      }
      return true;
    }());
    return inheritedViewModel?.authenticatorBuilder;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<AuthenticatorBuilder>(
        'authenticatorBuilder', authenticatorBuilder));
  }
}

// ignore_for_file: prefer_asserts_with_message
