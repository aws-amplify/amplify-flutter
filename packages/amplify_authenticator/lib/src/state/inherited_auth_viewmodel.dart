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

import 'package:amplify_authenticator/src/state/auth_viewmodel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class InheritedAuthViewModel extends InheritedNotifier {
  const InheritedAuthViewModel({
    Key? key,
    required Widget child,
    required this.viewModel,
  }) : super(
          key: key,
          child: child,
          notifier: viewModel,
        );

  final AuthViewModel viewModel;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;

  static AuthViewModel of(BuildContext context, {bool listen = true}) {
    InheritedAuthViewModel? inheritedViewModel;
    if (listen) {
      inheritedViewModel =
          context.dependOnInheritedWidgetOfExactType<InheritedAuthViewModel>();
    } else {
      inheritedViewModel =
          context.findAncestorWidgetOfExactType<InheritedAuthViewModel>();
    }
    assert(() {
      if (inheritedViewModel == null) {
        throw FlutterError.fromParts([
          ErrorSummary('No InheritedAuthViewModel widget found.'),
          ErrorDescription(
            'Make sure your app is wrapped with an Authenticator widget.',
          )
        ]);
      }
      return true;
    }());
    return inheritedViewModel!.viewModel;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<AuthViewModel>('viewModel', viewModel));
  }
}

// ignore_for_file: prefer_asserts_with_message
