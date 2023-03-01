// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/auth_plugin_credentials_provider.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/device_metadata_repository.dart';
import 'package:amplify_auth_cognito_dart/src/model/session/cognito_sign_in_details.dart';
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
  SignInStateMachine.type: SignInStateMachine.new,
  SignOutStateMachine.type: SignOutStateMachine.new,
  SignUpStateMachine.type: SignUpStateMachine.new,
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
    } else if (event is SignInEvent) {
      return SignInStateMachine.type;
    } else if (event is SignOutEvent) {
      return SignOutStateMachine.type;
    } else if (event is SignUpEvent) {
      return SignUpStateMachine.type;
    }
    throw StateError('Unhandled event: $event');
  }

  /// Loads credentials from the credential store (which may be
  /// outdated or expired).
  Future<CredentialStoreData> loadCredentials() async {
    final credentialsState = await dispatchAndComplete<CredentialStoreSuccess>(
      const CredentialStoreEvent.loadCredentialStore(),
    );
    return credentialsState.data;
  }

  /// Stores [credentials] in the credential store.
  Future<void> storeCredentials(CredentialStoreData credentials) async {
    await dispatchAndComplete(
      CredentialStoreEvent.storeCredentials(credentials),
    );
  }

  /// Clears [keys] from the credential store, or all keys if unspecified.
  Future<void> clearCredentials([Iterable<String> keys = const []]) async {
    await dispatchAndComplete(CredentialStoreEvent.clearCredentials(keys));
  }

  /// Loads the user's current session.
  Future<CognitoAuthSession> loadSession() async {
    final sessionState = await dispatchAndComplete<FetchAuthSessionSuccess>(
      const FetchAuthSessionEvent.fetch(),
    );
    return sessionState.session;
  }

  /// Configures the Hosted UI state machine.
  Future<void> configureHostedUI() async {
    await dispatchAndComplete(const HostedUiEvent.configure());
  }

  /// Signs out using the Hosted UI state machine.
  Future<HostedUiState> signOutHostedUI() async {
    return await dispatch(const HostedUiEvent.signOut()).completed
        as HostedUiState;
  }

  /// Gets the current user pool tokens.
  ///
  /// Throws [SignedOutException] if tokens are not present or
  /// [InvalidStateException] if the user is currently federated to an identity
  /// pool.
  ///
  /// Throws [AuthException] for all other exceptions encountered fetching the
  /// user pool tokens.
  Future<CognitoUserPoolTokens> getUserPoolTokens() async {
    final credentialState = await loadCredentials();
    if (credentialState.signInDetails is CognitoSignInDetailsFederated) {
      throw const InvalidStateException.federatedToIdentityPool();
    }
    final authSession = await loadSession();
    return authSession.userPoolTokensResult.value;
  }
}
