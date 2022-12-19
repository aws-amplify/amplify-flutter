// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/blocs/auth/auth_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class InheritedAuthBloc extends InheritedWidget {
  const InheritedAuthBloc({
    Key? key,
    required this.authBloc,
    required Widget child,
  }) : super(key: key, child: child);

  final StateMachineBloc authBloc;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  static StateMachineBloc of(BuildContext context, {bool listen = true}) {
    InheritedAuthBloc? bloc;
    if (listen) {
      bloc = context.dependOnInheritedWidgetOfExactType<InheritedAuthBloc>();
    } else {
      bloc = context.findAncestorWidgetOfExactType<InheritedAuthBloc>();
    }
    assert(() {
      if (bloc == null) {
        throw FlutterError.fromParts([
          ErrorSummary('No InheritedAuthBloc widget found.'),
          ErrorDescription(
            'Make sure your app is wrapped with an Authenticator widget.',
          )
        ]);
      }
      return true;
    }());
    return bloc!.authBloc;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<StateMachineBloc>('authBloc', authBloc));
  }
}

// ignore_for_file: prefer_asserts_with_message
