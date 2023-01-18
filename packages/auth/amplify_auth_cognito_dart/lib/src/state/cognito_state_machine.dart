// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/auth_plugin_credentials_provider.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/device_metadata_repository.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

/// Default state machine builders for [CognitoAuthStateMachine].
@visibleForTesting
final stateMachineBuilders = <StateMachineToken, Function>{
  ConfigurationStateMachine.type: ConfigurationStateMachine.new,
  CredentialStoreStateMachine.type: CredentialStoreStateMachine.new,
  FetchAuthSessionStateMachine.type: FetchAuthSessionStateMachine.new,
  HostedUiStateMachine.type: HostedUiStateMachine.new,
  SignUpStateMachine.type: SignUpStateMachine.new,
  SignInStateMachine.type: SignInStateMachine.new,
};

AWSHttpClient _makeAwsHttpClient() =>
    AmplifyHttpClient()..supportedProtocols = SupportedProtocols.http1;

/// Default defaultDependencies for [CognitoAuthStateMachine].
@visibleForTesting
final defaultDependencies = <Token, DependencyBuilder>{
  HostedUiPlatform.token: HostedUiPlatform.new,
  const Token<http.Client>(): http.Client.new,
  const Token<AWSHttpClient>(): _makeAwsHttpClient,
  AuthPluginCredentialsProvider.token: AuthPluginCredentialsProviderImpl.new,
  DeviceMetadataRepository.token: DeviceMetadataRepository.new,
};

/// {@template amplify_auth_cognito.cognito_auth_state_machine}
/// The state machine for managing auth state and relevant work.
/// {@endtemplate}
class CognitoAuthStateMachine
    extends StateMachineManager<AuthEvent, AuthState, CognitoAuthStateMachine> {
  /// {@macro amplify_auth_cognito.cognito_auth_state_machine}
  CognitoAuthStateMachine({
    DependencyManager? dependencyManager,
  }) : super(
          stateMachineBuilders,
          dependencyManager ?? DependencyManager(defaultDependencies),
        );

  Dispatcher<AuthEvent, AuthState> get _dispatch => expect();

  @override
  StateMachineToken mapEventToMachine(AuthEvent event) {
    if (event is ConfigurationEvent) {
      return ConfigurationStateMachine.type;
    } else if (event is CredentialStoreEvent) {
      return CredentialStoreStateMachine.type;
    } else if (event is FetchAuthSessionEvent) {
      return FetchAuthSessionStateMachine.type;
    } else if (event is HostedUiEvent) {
      return HostedUiStateMachine.type;
    } else if (event is SignUpEvent) {
      return SignUpStateMachine.type;
    } else if (event is SignInEvent) {
      return SignInStateMachine.type;
    }
    throw StateError('Unhandled event: $event');
  }

  /// Loads credentials from the credential store (which may be
  /// outdated or expired).
  Future<CredentialStoreData> loadCredentials([
    CredentialStoreEvent event =
        const CredentialStoreEvent.loadCredentialStore(),
  ]) async {
    final credentialsState = await _dispatch(event).completed;
    if (credentialsState is CredentialStoreFailure) {
      throw credentialsState.exception;
    }
    return (credentialsState as CredentialStoreSuccess).data;
  }

  /// Stores [credentials] in the credential store.
  Future<void> storeCredentials(CredentialStoreData credentials) async {
    final credentialsState = await _dispatch(
      CredentialStoreEvent.storeCredentials(credentials),
    ).completed;
    if (credentialsState is CredentialStoreFailure) {
      throw credentialsState.exception;
    }
  }

  /// Clears [keys] from the credential store, or all keys if unspecified.
  Future<void> clearCredentials([Iterable<String> keys = const []]) async {
    await loadCredentials(
      CredentialStoreEvent.clearCredentials(keys),
    );
  }

  /// Loads the user's current session.
  Future<CognitoAuthSession> loadSession([
    FetchAuthSessionEvent event = const FetchAuthSessionEvent.fetch(),
  ]) async {
    final sessionState = await _dispatch(event).completed;
    if (sessionState is FetchAuthSessionFailure) {
      throw sessionState.exception;
    }
    return (sessionState as FetchAuthSessionSuccess).session;
  }

  /// Configures the Hosted UI state machine.
  Future<void> configureHostedUI() async {
    final configuredState = await _dispatch(
      const HostedUiEvent.configure(),
    ).completed;
    if (configuredState is HostedUiFailure) {
      throw configuredState.exception;
    }
  }

  /// Signs out using the Hosted UI state machine.
  Future<HostedUiState> signOutHostedUI() async {
    return await _dispatch(const HostedUiEvent.signOut()).completed
        as HostedUiState;
  }
}
