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

import 'package:amplify_auth_cognito/src/credentials/legacy_credential_store_data_extension.dart';
import 'package:amplify_auth_cognito/src/native_auth_plugin.dart';
import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
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
