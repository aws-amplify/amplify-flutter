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
import 'package:amplify_authenticator/src/state/inherited_authenticator_state.dart';
import 'package:amplify_authenticator/src/state/inherited_config.dart';
import 'package:amplify_authenticator/src/state/inherited_strings.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// {@template amplify_authenticator.stateless_authenticator_component}
/// Base class for all Authenticator components which do not manage their own state.
/// {@endtemplate}
abstract class StatelessAuthenticatorComponent extends StatelessWidget {
  /// {@macro amplify_authenticator.stateless_authenticator_component}
  const StatelessAuthenticatorComponent({
    Key? key,
  }) : super(key: key);

  /// A [StatelessWidget.build] replacement which injects inherited Authenticator
  /// components.
  Widget builder(
    BuildContext context,
    AuthenticatorState state,
    AuthStringResolver stringResolver,
  );

  @override
  @nonVirtual
  Widget build(BuildContext context) {
    final state = InheritedAuthenticatorState.of(context);
    final strings = InheritedStrings.of(context);
    return builder(context, state, strings);
  }
}

/// {@template amplify_authenticator.authenticator_component}
/// Base class for all stateful Authenticator components.
/// {@endtemplate}
abstract class AuthenticatorComponent<T extends StatefulWidget>
    extends StatefulWidget {
  /// {@macro amplify_authenticator.authenticator_component}
  const AuthenticatorComponent({Key? key}) : super(key: key);

  @override
  AuthenticatorComponentState<T> createState();
}

/// Base state class for [AuthenticatorComponent].
///
/// Subclasses of [AuthenticatorComponent] must have a [State] object which
/// subclasses this class.
abstract class AuthenticatorComponentState<T extends StatefulWidget>
    extends State<T> {
  /// The root Authenticator state.
  late AuthenticatorState state;

  /// The root Authenticator string resolver.
  late AuthStringResolver stringResolver;

  /// The root Authenticator config.
  late InheritedConfig config;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    state = InheritedAuthenticatorState.of(context);
    stringResolver = InheritedStrings.of(context);
    config = InheritedConfig.of(context);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<AuthenticatorState>('state', state));
    properties.add(DiagnosticsProperty<AuthStringResolver>(
        'stringResolver', stringResolver));
    properties.add(
        DiagnosticsProperty<AmplifyConfig>('config', config.amplifyConfig));
  }
}
