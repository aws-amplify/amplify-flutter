// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/hosted_ui_platform.dart';
import 'package:amplify_auth_cognito_dart/src/model/auth_user_ext.dart';
import 'package:amplify_auth_cognito_dart/src/state/cognito_state_machine.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';

/// {@template amplify_auth_cognito.hosted_ui_state_machine}
/// Manages the Hosted UI lifecycle and OIDC flow.
/// {@endtemplate}
final class HostedUiStateMachine
    extends AuthStateMachine<HostedUiEvent, HostedUiState> {
  /// {@macro amplify_auth_cognito.hosted_ui_state_machine}
  HostedUiStateMachine(CognitoAuthStateMachine manager) : super(manager, type);

  /// The [HostedUiStateMachine] type.
  static const type = StateMachineToken<HostedUiEvent, HostedUiState, AuthEvent,
      AuthState, CognitoAuthStateMachine, HostedUiStateMachine>();

  @override
  HostedUiState get initialState => const HostedUiState.notConfigured();

  @override
  String get runtimeTypeName => 'HostedUiStateMachine';

  CognitoOAuthConfig get _config => expect();
  HostedUiKeys get _keys => HostedUiKeys(_config);
  SecureStorageInterface get _secureStorage => getOrCreate();

  /// The platform-specific behavior.
  late final HostedUiPlatform _platform = getOrCreate();

  /// The configured identity pool.
  CognitoIdentityCredentialsProvider? get _identityPoolConfig => get();

  @override
  Future<void> resolve(HostedUiEvent event) async {
    switch (event) {
      case HostedUiConfigure _:
        emit(const HostedUiState.configuring());
        await onConfigure(event);
      case HostedUiFoundState _:
        await onFoundState(event);
      case HostedUiExchange _:
        emit(const HostedUiState.signingIn());
        await onExchange(event);
      case HostedUiSignIn _:
        emit(const HostedUiState.signingIn());
        await onSignIn(event);
      case HostedUiCancelSignIn _:
        await onCancelSignIn(event);
      case HostedUiSignOut _:
        emit(const HostedUiState.signingOut());
        await onSignOut(event);
      case HostedUiSucceeded _:
        await onSucceeded(event);
    }
  }

  @override
  HostedUiState? resolveError(Object error, StackTrace st) {
    if (error is Exception) {
      return HostedUiFailure(error, st);
    }
    return null;
  }

  /// State machine callback for the [HostedUiConfigure] event.
  Future<void> onConfigure(HostedUiConfigure event) async {
    final result = await manager.loadCredentials();
    if (result.userPoolTokens case CognitoUserPoolTokens(:final signInMethod)
        when signInMethod == CognitoSignInMethod.hostedUi) {
      emit(HostedUiState.signedIn(result.authUser));
      return;
    }

    final state = await _secureStorage.read(key: _keys[HostedUiKey.state]);
    final codeVerifier = await _secureStorage.read(
      key: _keys[HostedUiKey.codeVerifier],
    );
    if (state != null && codeVerifier != null) {
      return resolve(
        HostedUiEvent.foundState(
          state: state,
          codeVerifier: codeVerifier,
        ),
      );
    }

    emit(const HostedUiState.signedOut());
  }

  /// State machine callback for the [HostedUiFoundState] event.
  Future<void> onFoundState(HostedUiFoundState event) async {
    try {
      final parameters = await _platform.onFoundState(
        state: event.state,
        codeVerifier: event.codeVerifier,
      );
      return resolve(
        HostedUiEvent.exchange(parameters),
      );
    } on SignedOutException {
      emit(const HostedUiState.signedOut());
    }
  }

  /// State machine callback for the [HostedUiSignIn] event.
  Future<void> onSignIn(HostedUiSignIn event) async {
    await _secureStorage.write(
      key: _keys[HostedUiKey.options],
      value: jsonEncode(event.options),
    );
    final provider = event.provider;
    if (provider != null) {
      await _secureStorage.write(
        key: _keys[HostedUiKey.provider],
        value: jsonEncode(provider),
      );
    } else {
      await _secureStorage.delete(key: _keys[HostedUiKey.provider]);
    }
    await _platform.signIn(
      options: event.options,
      provider: provider,
    );
  }

  /// State machine callback for the [HostedUiCancelSignIn] event.
  Future<void> onCancelSignIn(HostedUiCancelSignIn event) async {
    await _platform.cancelSignIn();
    await manager.clearCredentials(_keys);
    throw const UserCancelledException('The user cancelled the sign-in flow');
  }

  /// State machine callback for the [HostedUiExchange] event.
  Future<void> onExchange(HostedUiExchange event) async {
    final tokens = await _platform.exchange(event.parameters);
    return resolve(HostedUiEvent.succeeded(tokens));
  }

  /// State machine callback for the [HostedUiSignOut] event.
  Future<void> onSignOut(HostedUiSignOut event) async {
    final optionsJson = await _secureStorage.read(
      key: _keys[HostedUiKey.options],
    );
    var options = const CognitoSignInWithWebUIPluginOptions();
    if (optionsJson != null) {
      final optionsMap = jsonDecode(optionsJson) as Map<String, Object?>;
      options = CognitoSignInWithWebUIPluginOptions.fromJson(optionsMap);
    }
    await _platform.signOut(
      options: options,
    );
    emit(const HostedUiState.signedOut());
  }

  /// State machine callback for the [HostedUiSucceeded] event.
  Future<void> onSucceeded(HostedUiSucceeded event) async {
    final provider = await _secureStorage.read(
      key: _keys[HostedUiKey.provider],
    );
    final signInDetails = CognitoSignInDetails.hostedUi(
      provider: provider == null
          ? null
          : AuthProvider.fromJson(
              jsonDecode(provider) as Map<String, Object?>,
            ),
    );
    await manager.storeCredentials(
      CredentialStoreData(
        userPoolTokens: event.tokens,
        signInDetails: signInDetails,
      ),
    );

    // Clear anonymous credentials, if there were any, and fetch authenticated
    // credentials.
    if (_identityPoolConfig != null) {
      await manager.clearCredentials(
        CognitoIdentityPoolKeys(_identityPoolConfig!),
      );

      await manager.loadSession();
    }

    final idToken = event.tokens.idToken;
    final userId = idToken.userId;
    final username = CognitoIdToken(idToken).username;
    emit(
      HostedUiState.signedIn(
        CognitoAuthUser(
          userId: userId,
          username: username,
          signInDetails: signInDetails,
        ),
      ),
    );
  }

  @override
  Future<void> close() async {
    await _platform.close();
    return super.close();
  }
}
