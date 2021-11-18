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

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_authenticator/src/state/auth_viewmodel.dart';
import 'package:amplify_authenticator/src/state/inherited_auth_viewmodel.dart';
import 'package:amplify_authenticator/src/state/inherited_config.dart';
import 'package:amplify_authenticator/src/state/inherited_strings.dart';
import 'package:amplify_flutter/src/config/amplify_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// {@template authenticator.stateless_authenticator_component}
/// Base class for all Authenticator components which do not manage their own state.
/// {@endtemplate}
abstract class StatelessAuthenticatorComponent extends StatelessWidget {
  /// {@macro authenticator.stateless_authenticator_component}
  const StatelessAuthenticatorComponent({
    Key? key,
  }) : super(key: key);

  /// A [StatelessWidget.build] replacement which injects inherited Authenticator
  /// components.
  Widget builder(
    BuildContext context,
    AuthViewModel viewModel,
    AuthStringResolver stringResolver,
  );

  @override
  @nonVirtual
  Widget build(BuildContext context) {
    final viewModel = InheritedAuthViewModel.of(context);
    final strings = InheritedStrings.of(context);
    return builder(context, viewModel, strings);
  }
}

/// {@template authenticator.authenticator_component}
/// Base class for all stateful Authenticator components.
/// {@endtemplate}
abstract class AuthenticatorComponent extends StatefulWidget {
  /// {@macro authenticator.authenticator_component}
  const AuthenticatorComponent({Key? key}) : super(key: key);

  @override
  AuthenticatorComponentState createState();
}

/// Base state class for [AuthenticatorComponent].
///
/// Subclasses of [AuthenticatorComponent] must have a [State] object which
/// subclasses this class.
abstract class AuthenticatorComponentState<T extends StatefulWidget>
    extends State<T> {
  /// The root Autheticator view model.
  late AuthViewModel viewModel;

  /// The root Authenticator string resolver.
  late AuthStringResolver stringResolver;

  /// The root Authenticator config.
  late InheritedConfig config;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    viewModel = InheritedAuthViewModel.of(context);
    stringResolver = InheritedStrings.of(context);
    config = InheritedConfig.of(context);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<AuthViewModel>('viewModel', viewModel));
    properties.add(DiagnosticsProperty<AuthStringResolver>(
        'stringResolver', stringResolver));
    properties.add(
        DiagnosticsProperty<AmplifyConfig>('config', config.amplifyConfig));
  }
}
