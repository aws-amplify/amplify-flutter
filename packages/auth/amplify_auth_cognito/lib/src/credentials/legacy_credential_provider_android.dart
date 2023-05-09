// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: implementation_imports, invalid_use_of_internal_member

import 'package:amplify_auth_cognito/src/credentials/legacy_credential_store_data_extension.dart';
import 'package:amplify_auth_cognito/src/native_auth_plugin.g.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/legacy_credential_provider.dart';
import 'package:amplify_auth_cognito_dart/src/state/cognito_state_machine.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/src/config/auth/cognito/credentials_provider.dart';
import 'package:amplify_core/src/config/auth/cognito/oauth.dart';
import 'package:amplify_core/src/config/auth/cognito/user_pool.dart';

/// {@template amplify_auth_cognito.legacy_android_credential_provider}
/// The implementation of [LegacyCredentialProvider] for migrating
/// credentials from the legacy Android SDK.
/// {@endtemplate}
class LegacyCredentialProviderAndroid implements LegacyCredentialProvider {
  /// {@macro amplify_auth_cognito.legacy_android_credential_provider}
  LegacyCredentialProviderAndroid(CognitoAuthStateMachine stateMachine)
      : _stateMachine = stateMachine;
  final CognitoAuthStateMachine _stateMachine;

  @override
  Future<CredentialStoreData?> fetchLegacyCredentials({
    CognitoUserPoolConfig? userPoolConfig,
    CognitoIdentityCredentialsProvider? identityPoolConfig,
    CognitoOAuthConfig? hostedUiConfig,
  }) async {
    final bridge = _stateMachine.expect<NativeAuthBridge>();
    final legacyCredentials = await bridge.getLegacyCredentials(
      identityPoolConfig?.poolId,
      userPoolConfig?.appClientId,
    );
    return legacyCredentials.toCredentialStoreData();
  }

  @override
  Future<void> deleteLegacyCredentials({
    CognitoUserPoolConfig? userPoolConfig,
    CognitoIdentityCredentialsProvider? identityPoolConfig,
    CognitoOAuthConfig? hostedUiConfig,
  }) {
    final bridge = _stateMachine.expect<NativeAuthBridge>();
    return bridge.clearLegacyCredentials();
  }
}
