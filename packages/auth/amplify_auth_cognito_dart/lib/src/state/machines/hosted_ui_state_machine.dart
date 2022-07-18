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
    if (userPoolTokens != null) {
      emit(HostedUiState.signedIn(userPoolTokens.authUser));
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

  @override
  Future<void> onSignIn(HostedUiSignIn event) async {
    try {
      _secureStorage.write(
        key: _keys[HostedUiKey.options],
        value: jsonEncode(event.options),
      );
      await _platform.signIn(
        options: event.options,
        provider: event.provider,
      );
    } on Exception catch (e) {
      dispatch(HostedUiEvent.failed(e));
    }
  }

  @override
  Future<void> onCancelSignIn(HostedUiCancelSignIn event) async {
    await dispatch(CredentialStoreEvent.clearCredentials(_keys));
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
      final options = optionsJson == null
          ? const CognitoSignOutWithWebUIOptions()
          : CognitoSignOutWithWebUIOptions.fromJson(
              jsonDecode(optionsJson) as Map<String, Object?>,
            );
      // Clear credentials before dispatching to platform since the platform
      // may redirect and only for the intention of clearing cookies. That is,
      // credentials should be cleared regardless of how the platform handles
      // the sign out.
      dispatch(
        CredentialStoreEvent.clearCredentials(_keys),
      );
      await expect(CredentialStoreStateMachine.type).getCredentialsResult();

      await _platform.signOut(options: options);
      emit(const HostedUiState.signedOut());
    } on Exception catch (e) {
      dispatch(HostedUiEvent.failed(e));
    }
  }

  @override
  Future<void> onSucceeded(HostedUiSucceeded event) async {
    dispatch(
      CredentialStoreEvent.storeCredentials(
        CredentialStoreData(
          userPoolTokens: event.tokens,
        ),
      ),
    );
  }

  @override
  Future<void> onFailed(HostedUiFailed event) async {}
}
