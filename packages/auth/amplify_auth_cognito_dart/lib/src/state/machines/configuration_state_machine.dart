// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/auth_plugin_credentials_provider.dart';
import 'package:amplify_auth_cognito_dart/src/model/auth_configuration.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/sdk_bridge.dart';
import 'package:amplify_auth_cognito_dart/src/state/machines/generated/configuration_state_machine_base.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_auth_cognito.configuration_state_machine}
/// Manages configuration of the Auth category.
/// {@endtemplate}
class ConfigurationStateMachine extends ConfigurationStateMachineBase {
  /// {@macro amplify_auth_cognito.configuration_state_machine}
  ConfigurationStateMachine(super.manager);

  /// The [ConfigurationStateMachine] type.
  static const type = StateMachineToken<ConfigurationEvent, ConfigurationState,
      ConfigurationStateMachine>();

  @override
  String get runtimeTypeName => 'ConfigurationStateMachine';

  /// The credentials provider for SDK calls.
  AuthPluginCredentialsProvider get _credentialsProvider => getOrCreate(
        AuthPluginCredentialsProvider.token,
      );

  @override
  Future<void> onConfigure(Configure event) async {
    final cognitoConfig = event.config.auth?.awsPlugin;
    if (cognitoConfig == null) {
      throw ConfigurationError('No Cognito plugin config available');
    }
    addInstance(cognitoConfig);
    final config = AuthConfiguration.fromConfig(cognitoConfig);
    addInstance(config);

    final waiters = <Future<void>>[];
    final userPoolConfig = config.userPoolConfig;
    if (userPoolConfig != null) {
      addInstance(userPoolConfig);
      addInstance<CognitoIdentityProviderClient>(
        WrappedCognitoIdentityProviderClient(
          region: userPoolConfig.region,
          credentialsProvider: _credentialsProvider,
          dependencyManager: this,
          endpoint: userPoolConfig.endpoint,
        ),
      );
    }

    // Configure HostedUI, if available
    final hostedUiConfig = config.hostedUiConfig;
    if (hostedUiConfig != null) {
      addInstance(hostedUiConfig);

      dispatch(const HostedUiEvent.configure());
      final hostedUiConfigured = Completer<void>.sync();
      subscribeTo(
        HostedUiStateMachine.type,
        (HostedUiState state) {
          if ((state is HostedUiSignedIn || state is HostedUiSignedOut) &&
              !hostedUiConfigured.isCompleted) {
            hostedUiConfigured.complete();
          }
          if (state is HostedUiFailure && !hostedUiConfigured.isCompleted) {
            hostedUiConfigured.completeError(state.exception);
          }
        },
      );
      waiters.add(hostedUiConfigured.future);
    }

    final identityPoolConfig = config.identityPoolConfig;
    if (identityPoolConfig != null) {
      addInstance(identityPoolConfig);
      addInstance<CognitoIdentityClient>(
        WrappedCognitoIdentityClient(
          region: identityPoolConfig.region,
          credentialsProvider: _credentialsProvider,
          dependencyManager: this,
        ),
      );
    }

    dispatch(const CredentialStoreEvent.migrateLegacyCredentialStore());

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
      dispatch(ConfigurationEvent.configureSucceeded(config));
    } on Exception catch (e) {
      dispatch(
        ConfigurationEvent.configureFailed(AuthException.fromException(e)),
      );
    }
  }

  @override
  Future<void> onConfigureSucceeded(ConfigureSucceeded event) async {}

  @override
  Future<void> onConfigureFailed(ConfigureFailed event) async {}
}
