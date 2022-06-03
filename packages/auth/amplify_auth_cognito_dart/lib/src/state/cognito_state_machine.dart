// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:async';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/auth_plugin_credentials_provider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

import 'state.dart';

/// Default state machine builders for [CognitoAuthStateMachine].
@visibleForTesting
final stateMachineBuilders = <StateMachineToken, StateMachineBuilder>{
  AuthStateMachine.type: AuthStateMachine.new,
  CredentialStoreStateMachine.type: CredentialStoreStateMachine.new,
  FetchAuthSessionStateMachine.type: FetchAuthSessionStateMachine.new,
  HostedUiStateMachine.type: HostedUiStateMachine.new,
  SignUpStateMachine.type: SignUpStateMachine.new,
};

/// Default defaultDependencies for [CognitoAuthStateMachine].
@visibleForTesting
final defaultDependencies = <Token, DependencyBuilder>{
  HostedUiPlatform.token: HostedUiPlatform.new,
  const Token<http.Client>(): http.Client.new,
  AuthPluginCredentialsProvider.token: AuthPluginCredentialsProviderImpl.new,
};

/// {@template amplify_auth_cognito.cognito_auth_state_machine}
/// The state machine for managing auth state and relevant work.
/// {@endtemplate}
class CognitoAuthStateMachine extends StateMachineManager {
  /// {@macro amplify_auth_cognito.cognito_auth_state_machine}
  CognitoAuthStateMachine({
    DependencyManager? dependencyManager,
  }) : super(
          stateMachineBuilders,
          dependencyManager ?? DependencyManager(defaultDependencies),
        );

  @override
  FutureOr<void> dispatch(StateMachineEvent<dynamic> event) async {
    try {
      if (event is AuthEvent) {
        return getOrCreate(AuthStateMachine.type).add(event);
      } else if (event is CredentialStoreEvent) {
        return getOrCreate(CredentialStoreStateMachine.type).add(event);
      } else if (event is FetchAuthSessionEvent) {
        return getOrCreate(FetchAuthSessionStateMachine.type).add(event);
      } else if (event is HostedUiEvent) {
        return getOrCreate(HostedUiStateMachine.type).add(event);
      } else if (event is SignUpEvent) {
        return getOrCreate(SignUpStateMachine.type).add(event);
      }
      throw StateError('Unhandled event: $event');
    } finally {
      // Allow propogation of event
      await Future<void>.delayed(Duration.zero);
    }
  }
}
