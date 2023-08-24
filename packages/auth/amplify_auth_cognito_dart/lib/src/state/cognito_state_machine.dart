// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/auth_plugin_credentials_provider.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/device_metadata_repository.dart';
import 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/hosted_ui_platform.dart';
import 'package:amplify_auth_cognito_dart/src/model/session/cognito_sign_in_details.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

/// Default state machine builders for [CognitoAuthStateMachine].
@visibleForTesting
final stateMachineBuilders = <StateMachineToken,
    StateMachineBuilder<AuthEvent, AuthState, CognitoAuthStateMachine>>{
  ConfigurationStateMachine.type: ConfigurationStateMachine.new,
  CredentialStoreStateMachine.type: CredentialStoreStateMachine.new,
  FetchAuthSessionStateMachine.type: FetchAuthSessionStateMachine.new,
  HostedUiStateMachine.type: HostedUiStateMachine.new,
  SignInStateMachine.type: SignInStateMachine.new,
  SignOutStateMachine.type: SignOutStateMachine.new,
  SignUpStateMachine.type: SignUpStateMachine.new,
  TotpSetupStateMachine.type: TotpSetupStateMachine.new,
};

/// Default defaultDependencies for [CognitoAuthStateMachine].
@visibleForTesting
final defaultDependencies = <Token, DependencyBuilder>{
  const Token<HostedUiPlatform>(): HostedUiPlatform.new,
  const Token<http.Client>(): (_) => http.Client(),
  const Token<AuthPluginCredentialsProvider>():
      AuthPluginCredentialsProviderImpl.new,
  const Token<DeviceMetadataRepository>():
      DeviceMetadataRepository.fromDependencies,
  const Token<ASFDeviceInfoCollector>(): (_) => ASFDeviceInfoCollector(),
  const Token<ASFContextDataProvider>(): ASFContextDataProvider.new,
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
          dependencyManager ?? AmplifyDependencyManager(),
        ) {
    defaultDependencies.forEach((token, builder) {
      addBuilder(builder, token);
    });
  }

  @override
  StateMachineToken mapEventToMachine(AuthEvent event) {
    return switch (event) {
      ConfigurationEvent _ => ConfigurationStateMachine.type,
      CredentialStoreEvent _ => CredentialStoreStateMachine.type,
      FetchAuthSessionEvent _ => FetchAuthSessionStateMachine.type,
      HostedUiEvent _ => HostedUiStateMachine.type,
      SignInEvent _ => SignInStateMachine.type,
      SignOutEvent _ => SignOutStateMachine.type,
      SignUpEvent _ => SignUpStateMachine.type,
      TotpSetupEvent _ => TotpSetupStateMachine.type,
    } as StateMachineToken;
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

  @override
  String get runtimeTypeName => 'CognitoAuthStateMachine';
}
