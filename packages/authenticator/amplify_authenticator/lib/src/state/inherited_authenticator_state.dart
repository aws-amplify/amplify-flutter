// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/state/authenticator_state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class InheritedAuthenticatorState extends InheritedNotifier {
  const InheritedAuthenticatorState({
    Key? key,
    required Widget child,
    required this.state,
  }) : super(
          key: key,
          child: child,
          notifier: state,
        );

  final AuthenticatorState state;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  static AuthenticatorState of(BuildContext context, {bool listen = true}) {
    InheritedAuthenticatorState? inheritedViewModel;
    if (listen) {
      inheritedViewModel = context
          .dependOnInheritedWidgetOfExactType<InheritedAuthenticatorState>();
    } else {
      inheritedViewModel =
          context.findAncestorWidgetOfExactType<InheritedAuthenticatorState>();
    }
    assert(() {
      if (inheritedViewModel == null) {
        throw FlutterError.fromParts([
          ErrorSummary('No InheritedAuthenticatorState widget found.'),
          ErrorDescription(
            'Make sure your app is wrapped with an Authenticator widget.',
          )
        ]);
      }
      return true;
    }());
    return inheritedViewModel!.state;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<AuthenticatorState>('state', state));
  }
}

// ignore_for_file: prefer_asserts_with_message
