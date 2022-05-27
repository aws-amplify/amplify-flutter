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

import 'package:amplify_auth_cognito/src/model/auth_configuration.dart';
import 'package:amplify_auth_cognito/src/sdk/cognito_identity.dart';
import 'package:amplify_auth_cognito/src/sdk/cognito_identity_provider.dart';
import 'package:amplify_auth_cognito/src/state/machines/generated/auth_state_machine_base.dart';
import 'package:amplify_auth_cognito/src/state/state.dart';
import 'package:amplify_auth_cognito/src/util/credentials_providers.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:aws_signature_v4/aws_signature_v4.dart';

/// {@template amplify_auth_cognito_dart.auth_state_machine}
/// Manages configuration of the Auth category.
/// {@endtemplate}
class AuthStateMachine extends AuthStateMachineBase {
  /// {@macro amplify_auth_cognito_dart.auth_state_machine}
  AuthStateMachine(super.manager);

  /// The [AuthStateMachine] type.
  static const type =
      StateMachineToken<AuthEvent, AuthState, AuthStateMachine>();

  /// The AWS credentials provider, using cached credentials.
  late final AWSCredentialsProvider credentialsProvider =
      InlineCredentialsProvider(() async {
    throw UnimplementedError();
  });

  @override
  Future<void> onConfigure(AuthConfigure event) async {
    // InitializeAuthConfiguration
    final cognitoConfig = event.config.auth?.awsPlugin;
    if (cognitoConfig == null) {
      throw const AuthException('No Cognito plugin config available');
    }
    addInstance(cognitoConfig);
    final config = AuthConfiguration.fromConfig(cognitoConfig);
    addInstance(config);

    final waiters = <Future<void>>[];
    final userPoolConfig = config.userPoolConfig;
    if (userPoolConfig != null) {
      addInstance(userPoolConfig);
      addInstance(
        CognitoIdentityProviderClient(
          region: userPoolConfig.region,
          credentialsProvider: credentialsProvider,
        ),
      );
    }

    final identityPoolConfig = config.identityPoolConfig;
    if (identityPoolConfig != null) {
      addInstance(identityPoolConfig);
      addInstance(
        CognitoIdentityClient(
          region: identityPoolConfig.region,
          credentialsProvider: const AnonymousCredentialsProvider(),
        ),
      );
    }

    dispatch(const CredentialStoreEvent.loadCredentialStore());

    final credentialStoreConfigured = Completer<void>.sync();
    subscribeTo(CredentialStoreStateMachine.type, (state) {
      if (state is CredentialStoreSuccess &&
          !credentialStoreConfigured.isCompleted) {
        credentialStoreConfigured.complete();
      }
      if (state is CredentialStoreFailure &&
          !credentialStoreConfigured.isCompleted) {
        credentialStoreConfigured.completeError(state.exception);
      }
    });
    waiters.add(credentialStoreConfigured.future);

    unawaited(_waitForConfiguration(cognitoConfig, waiters));
  }

  Future<void> _waitForConfiguration(
    CognitoPluginConfig config,
    List<Future<void>> futures,
  ) async {
    try {
      await Future.wait<void>(futures, eagerError: true);
      dispatch(AuthEvent.configureSucceeded(config));
    } on Exception catch (e) {
      dispatch(AuthEvent.configureFailed(AuthException.fromException(e)));
    }
  }

  @override
  Future<void> onConfigureSucceeded(AuthConfigureSucceeded event) async {}

  @override
  Future<void> onConfigureFailed(AuthConfigureFailed event) async {}
}
