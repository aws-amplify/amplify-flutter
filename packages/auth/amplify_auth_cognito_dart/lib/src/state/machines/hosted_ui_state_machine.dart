// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';
import 'dart:convert';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/model/auth_user_ext.dart';
import 'package:amplify_auth_cognito_dart/src/state/machines/generated/hosted_ui_state_machine_base.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';

/// {@template amplify_auth_cognito.hosted_ui_state_machine}
/// Manages the Hosted UI lifecycle and OIDC flow.
/// {@endtemplate}
class HostedUiStateMachine extends HostedUiStateMachineBase {
  /// {@macro amplify_auth_cognito.hosted_ui_state_machine}
  HostedUiStateMachine(super.manager);

  /// The [HostedUiStateMachine] type.
  static const type =
      StateMachineToken<HostedUiEvent, HostedUiState, HostedUiStateMachine>();

  @override
  String get runtimeTypeName => 'HostedUiStateMachine';

  CognitoOAuthConfig get _config => expect();
  HostedUiKeys get _keys => HostedUiKeys(_config);
  SecureStorageInterface get _secureStorage => getOrCreate();

  /// The platform-specific behavior.
  late final HostedUiPlatform _platform = getOrCreate(HostedUiPlatform.token);

  @override
  Future<void> onConfigure(HostedUiConfigure event) async {
    final result = await getOrCreate(CredentialStoreStateMachine.type)
        .getCredentialsResult();
    final userPoolTokens = result.data.userPoolTokens;
    if (userPoolTokens != null &&
        userPoolTokens.signInMethod == CognitoSignInMethod.hostedUi) {
      emit(HostedUiState.signedIn(result.data.authUser));
      return;
    }

    final state = await _secureStorage.read(key: _keys[HostedUiKey.state]);
    final codeVerifier = await _secureStorage.read(
      key: _keys[HostedUiKey.codeVerifier],
    );
    if (state != null && codeVerifier != null) {
      dispatch(
        HostedUiEvent.foundState(
          state: state,
          codeVerifier: codeVerifier,
        ),
      );
      return;
    }

    emit(const HostedUiState.signedOut());
  }

  @override
  Future<void> onFoundState(HostedUiFoundState event) async {
    try {
      await _platform.onFoundState(
        state: event.state,
        codeVerifier: event.codeVerifier,
      );
    } on SignedOutException {
      emit(const HostedUiState.signedOut());
    }
  }

  Future<void> _handleSignIn(HostedUiSignIn event) async {
    try {
      _secureStorage.write(
        key: _keys[HostedUiKey.options],
        value: jsonEncode(event.options),
      );
      final provider = event.provider;
      if (provider != null) {
        _secureStorage.write(
          key: _keys[HostedUiKey.provider],
          value: jsonEncode(provider),
        );
      } else {
        _secureStorage.delete(key: _keys[HostedUiKey.provider]);
      }
      await _platform.signIn(
        options: event.options,
        provider: provider,
      );
    } on Exception catch (e) {
      dispatch(HostedUiEvent.failed(e));
    }
  }

  @override
  Future<void> onSignIn(HostedUiSignIn event) async {
    unawaited(_handleSignIn(event));
  }

  @override
  Future<void> onCancelSignIn(HostedUiCancelSignIn event) async {
    await _platform.cancelSignIn();
    await dispatch(
      CredentialStoreEvent.clearCredentials(_keys),
    );
    dispatch(
      const HostedUiEvent.failed(
        UserCancelledException('The user cancelled the sign-in flow'),
      ),
    );
  }

  @override
  Future<void> onExchange(HostedUiExchange event) async {
    try {
      final tokens = await _platform.exchange(event.parameters);
      dispatch(HostedUiEvent.succeeded(tokens));
    } on Exception catch (e) {
      dispatch(HostedUiEvent.failed(e));
    }
  }

  @override
  Future<void> onSignOut(HostedUiSignOut event) async {
    try {
      final optionsJson = await _secureStorage.read(
        key: _keys[HostedUiKey.options],
      );
      var options = const CognitoSignOutWithWebUIOptions();
      var isPreferPrivateSession = false;
      if (optionsJson != null) {
        final optionsMap = jsonDecode(optionsJson) as Map<String, Object?>;
        options = CognitoSignOutWithWebUIOptions.fromJson(optionsMap);
        isPreferPrivateSession =
            optionsMap['isPreferPrivateSession'] as bool? ?? false;
      }
      await _platform.signOut(
        options: options,
        isPreferPrivateSession: isPreferPrivateSession,
      );
      emit(const HostedUiState.signedOut());
    } on Exception catch (e) {
      dispatch(HostedUiEvent.failed(e));
    }
  }

  @override
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
    dispatch(
      CredentialStoreEvent.storeCredentials(
        CredentialStoreData(
          userPoolTokens: event.tokens,
          signInDetails: signInDetails,
        ),
      ),
    );

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
  Future<void> onFailed(HostedUiFailed event) async {}

  @override
  Future<void> close() async {
    await _platform.close();
    return super.close();
  }
}
