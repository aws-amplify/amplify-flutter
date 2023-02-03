// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/auth_plugin_credentials_provider.dart';
import 'package:amplify_auth_cognito_dart/src/model/auth_configuration.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/sdk_bridge.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart';

/// {@template amplify_auth_cognito.configuration_state_machine}
/// Manages configuration of the Auth category.
/// {@endtemplate}
class ConfigurationStateMachine extends StateMachine<ConfigurationEvent,
    ConfigurationState, AuthEvent, AuthState, CognitoAuthStateMachine> {
  /// {@macro amplify_auth_cognito.configuration_state_machine}
  ConfigurationStateMachine(CognitoAuthStateMachine manager)
      : super(manager, type);

  @override
  ConfigurationState get initialState =>
      const ConfigurationState.notConfigured();

  /// The [ConfigurationStateMachine] type.
  static const type = StateMachineToken<
      ConfigurationEvent,
      ConfigurationState,
      AuthEvent,
      AuthState,
      CognitoAuthStateMachine,
      ConfigurationStateMachine>();

  @override
  String get runtimeTypeName => 'ConfigurationStateMachine';

  /// The credentials provider for SDK calls.
  AuthPluginCredentialsProvider get _credentialsProvider => getOrCreate(
        AuthPluginCredentialsProvider.token,
      );

  @override
  Future<void> resolve(ConfigurationEvent event) async {
    switch (event.type) {
      case ConfigurationEventType.configure:
        final castEvent = event as Configure;
        emit(const ConfigurationState.configuring());
        await onConfigure(castEvent);
        return;
      case ConfigurationEventType.configureSucceeded:
        final castEvent = event as ConfigureSucceeded;
        emit(ConfigurationState.configured(event.config));
        await onConfigureSucceeded(castEvent);
        return;
      case ConfigurationEventType.configureFailed:
        final castEvent = event as ConfigureFailed;
        emit(ConfigurationState.failure(castEvent.exception));
        await onConfigureFailed(castEvent);
        return;
    }
  }

  @override
  ConfigurationState? resolveError(Object error, [StackTrace? st]) {
    if (error is Exception) {
      return ConfigureFailure(error);
    }
    return null;
  }

  /// State machine callback for the [Configure] event.
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
      waiters.add(manager.configureHostedUI());
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

    waiters.add(manager.loadCredentials());

    await _waitForConfiguration(cognitoConfig, waiters);
  }

  Future<void> _waitForConfiguration(
    CognitoPluginConfig config,
    List<Future<void>> futures,
  ) async {
    try {
      await Future.wait<void>(futures, eagerError: true);
      emit(ConfigurationState.configured(config));
    } on Exception catch (e) {
      emit(
        ConfigurationState.failure(AuthException.fromException(e)),
      );
    }
  }

  /// State machine callback for the [ConfigureSucceeded] event.
  Future<void> onConfigureSucceeded(ConfigureSucceeded event) async {}

  /// State machine callback for the [ConfigureFailed] event.
  Future<void> onConfigureFailed(ConfigureFailed event) async {}
}
