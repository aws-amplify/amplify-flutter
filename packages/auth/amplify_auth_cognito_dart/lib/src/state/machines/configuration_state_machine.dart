// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

// ignore: implementation_imports
import 'package:amplify_analytics_pinpoint_dart/src/impl/analytics_client/endpoint_client/endpoint_info_store_manager.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/auth_plugin_credentials_provider.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/sdk_bridge.dart';
import 'package:amplify_auth_cognito_dart/src/state/cognito_state_machine.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart';
// ignore: implementation_imports
import 'package:amplify_core/src/config/amplify_outputs/analytics/analytics_outputs.dart';

/// {@template amplify_auth_cognito.configuration_state_machine}
/// Manages configuration of the Auth category.
/// {@endtemplate}
final class ConfigurationStateMachine
    extends AuthStateMachine<ConfigurationEvent, ConfigurationState> {
  /// {@macro amplify_auth_cognito.configuration_state_machine}
  ConfigurationStateMachine(CognitoAuthStateMachine manager)
    : super(manager, type);

  @override
  ConfigurationState get initialState =>
      const ConfigurationState.notConfigured();

  /// The [ConfigurationStateMachine] type.
  static const type =
      StateMachineToken<
        ConfigurationEvent,
        ConfigurationState,
        AuthEvent,
        AuthState,
        CognitoAuthStateMachine,
        ConfigurationStateMachine
      >();

  @override
  String get runtimeTypeName => 'ConfigurationStateMachine';

  /// The credentials provider for SDK calls.
  AuthPluginCredentialsProvider get _credentialsProvider => getOrCreate();

  @override
  Future<void> resolve(ConfigurationEvent event) async {
    switch (event) {
      case Configure _:
        emit(const ConfigurationState.configuring());
        await onConfigure(event);
      case ConfigureSucceeded(:final config):
        emit(ConfigurationState.configured(config));
        await onConfigureSucceeded(event);
    }
  }

  @override
  ConfigurationState? resolveError(Object error, StackTrace st) {
    if (error is Exception) {
      return ConfigureFailure(error, st);
    }
    return null;
  }

  /// State machine callback for the [Configure] event.
  Future<void> onConfigure(Configure event) async {
    final authOutputs = event.config.auth;
    if (authOutputs == null) {
      throw ConfigurationError('No Cognito plugin config available');
    }
    addInstance(authOutputs);
    final waiters = <Future<void>>[];
    addInstance<CognitoIdentityProviderClient>(
      WrappedCognitoIdentityProviderClient(
        region: authOutputs.awsRegion,
        credentialsProvider: _credentialsProvider,
        dependencyManager: this,
      ),
    );

    // Configure HostedUI, if available
    if (authOutputs.oauth != null) {
      waiters.add(manager.configureHostedUI());
    }

    if (authOutputs.identityPoolId != null) {
      addInstance<CognitoIdentityClient>(
        WrappedCognitoIdentityClient(
          region: authOutputs.awsRegion,
          credentialsProvider: _credentialsProvider,
          dependencyManager: this,
        ),
      );
    }

    waiters.add(manager.loadCredentials());

    await _waitForConfiguration(event.config, waiters);

    // Setup AnalyticsMetadataType
    await _registerAnalyticsMetadata(event.config.analytics);
  }

  Future<void> _waitForConfiguration(
    AmplifyOutputs config,
    List<Future<void>> futures,
  ) async {
    await Future.wait<void>(futures, eagerError: true);
    emit(ConfigurationState.configured(config));
  }

  /// State machine callback for the [ConfigureSucceeded] event.
  Future<void> onConfigureSucceeded(ConfigureSucceeded event) async {}

  Future<void> _registerAnalyticsMetadata(AnalyticsOutputs? config) async {
    final appId = config?.amazonPinpoint?.appId;
    if (appId == null) return;
    final endpointStoreManager = getOrCreate<EndpointInfoStoreManager>();
    await endpointStoreManager.init(pinpointAppId: appId);

    addInstance<AnalyticsMetadataType>(
      AnalyticsMetadataType(
        analyticsEndpointId: endpointStoreManager.endpointId,
      ),
    );
  }
}
