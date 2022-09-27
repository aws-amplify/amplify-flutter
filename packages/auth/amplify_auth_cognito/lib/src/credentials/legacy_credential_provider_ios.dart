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

import 'package:amplify_auth_cognito/src/credentials/legacy_ios_cognito_keys.dart';
import 'package:amplify_auth_cognito/src/credentials/secure_storage_extension.dart';
import 'package:amplify_auth_cognito/src/native_auth_plugin.g.dart';
import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:async/async.dart';

/// {@template amplify_auth_cognito.legacy_ios_credential_provider}
/// The implementation of [LegacyCredentialProvider] for migrating
/// credentials from the legacy iOS SDK.
/// {@endtemplate}
class LegacyCredentialProviderIOS implements LegacyCredentialProvider {
  /// {@macro amplify_auth_cognito.legacy_ios_credential_provider}
  LegacyCredentialProviderIOS(CognitoAuthStateMachine stateMachine)
      : _stateMachine = stateMachine;
  final CognitoAuthStateMachine _stateMachine;

  @override
  Future<CredentialStoreData?> fetchLegacyCredentials({
    CognitoUserPoolConfig? userPoolConfig,
    CognitoIdentityCredentialsProvider? identityPoolConfig,
    CognitoOAuthConfig? hostedUiConfig,
  }) async {
    CognitoUserPoolTokens? userPoolTokens;
    if (userPoolConfig != null) {
      final userPoolStorage = await _getUserPoolStorage();
      final cognitoUserKeys = LegacyCognitoUserKeys(userPoolConfig);
      final currentUserId = await userPoolStorage.read(
        key: cognitoUserKeys[LegacyCognitoKey.currentUser],
      );
      if (currentUserId != null) {
        final userPoolKeys = LegacyCognitoUserPoolKeys(
          currentUserId,
          userPoolConfig,
        );
        final accessToken = await userPoolStorage.read(
          key: userPoolKeys[LegacyCognitoUserPoolKey.accessToken],
        );
        final refreshToken = await userPoolStorage.read(
          key: userPoolKeys[LegacyCognitoUserPoolKey.refreshToken],
        );
        final idToken = await userPoolStorage.read(
          key: userPoolKeys[LegacyCognitoUserPoolKey.idToken],
        );
        if (accessToken != null && refreshToken != null && idToken != null) {
          // TODO(Jordan-Nelson): fetch sign in method from keychain on iOS
          final signInMethod = hostedUiConfig != null
              ? CognitoSignInMethod.hostedUi
              : CognitoSignInMethod.default$;
          userPoolTokens = CognitoUserPoolTokens(
            signInMethod: signInMethod,
            accessToken: JsonWebToken.parse(accessToken),
            refreshToken: refreshToken,
            idToken: JsonWebToken.parse(idToken),
          );
        }
      }
    }

    String? identityId;
    AWSCredentials? awsCredentials;
    final identityPoolId = identityPoolConfig?.poolId;
    if (identityPoolId != null) {
      final identityPoolStorage = await _getIdentityPoolStorage(
        identityPoolId,
      );
      const identityPoolKeys = LegacyCognitoIdentityPoolKeys();
      identityId = await identityPoolStorage.read(
        key: identityPoolKeys[LegacyCognitoIdentityPoolKey.identityId],
      );
      final accessKeyId = await identityPoolStorage.read(
        key: identityPoolKeys[LegacyCognitoIdentityPoolKey.accessKey],
      );
      final secretAccessKey = await identityPoolStorage.read(
        key: identityPoolKeys[LegacyCognitoIdentityPoolKey.secretKey],
      );
      final sessionToken = await identityPoolStorage.read(
        key: identityPoolKeys[LegacyCognitoIdentityPoolKey.sessionKey],
      );
      final expirationStr = await identityPoolStorage.read(
        key: identityPoolKeys[LegacyCognitoIdentityPoolKey.expiration],
      );
      if (accessKeyId != null && secretAccessKey != null) {
        DateTime? expiration;
        if (expirationStr != null) {
          final secondsSinceEpoch = double.tryParse(expirationStr)?.toInt();
          if (secondsSinceEpoch != null) {
            expiration = DateTime.fromMillisecondsSinceEpoch(
              secondsSinceEpoch * 1000,
              isUtc: true,
            );
          }
        }
        awsCredentials = AWSCredentials(
          accessKeyId,
          secretAccessKey,
          sessionToken,
          expiration,
        );
      }
    }
    if ((userPoolTokens ?? awsCredentials ?? identityId) != null) {
      return CredentialStoreData(
        userPoolTokens: userPoolTokens,
        awsCredentials: awsCredentials,
        identityId: identityId,
      );
    }
    return null;
  }

  @override
  Future<void> deleteLegacyCredentials({
    CognitoUserPoolConfig? userPoolConfig,
    CognitoIdentityCredentialsProvider? identityPoolConfig,
    CognitoOAuthConfig? hostedUiConfig,
  }) async {
    if (userPoolConfig != null) {
      final userPoolStorage = await _getUserPoolStorage();
      final cognitoUserKeys = LegacyCognitoUserKeys(userPoolConfig);
      final currentUser = await userPoolStorage.read(
        key: cognitoUserKeys[LegacyCognitoKey.currentUser],
      );
      if (currentUser != null) {
        final userPoolKeys = LegacyCognitoUserPoolKeys(
          currentUser,
          userPoolConfig,
        );
        await userPoolStorage.deleteMany([
          userPoolKeys[LegacyCognitoUserPoolKey.accessToken],
          userPoolKeys[LegacyCognitoUserPoolKey.refreshToken],
          userPoolKeys[LegacyCognitoUserPoolKey.idToken],
          cognitoUserKeys[LegacyCognitoKey.currentUser],
        ]);
      }
    }

    final identityPoolId = identityPoolConfig?.poolId;
    if (identityPoolId != null) {
      final identityPoolStorage = await _getIdentityPoolStorage(identityPoolId);
      const identityPoolKeys = LegacyCognitoIdentityPoolKeys();
      await identityPoolStorage.deleteMany([
        identityPoolKeys[LegacyCognitoIdentityPoolKey.identityId],
        identityPoolKeys[LegacyCognitoIdentityPoolKey.accessKey],
        identityPoolKeys[LegacyCognitoIdentityPoolKey.secretKey],
        identityPoolKeys[LegacyCognitoIdentityPoolKey.sessionKey],
        identityPoolKeys[LegacyCognitoIdentityPoolKey.expiration],
      ]);
    }
  }

  final _bundleIdMemoizer = AsyncMemoizer<String>();

  /// Gets the bundle ID.
  FutureOr<String> _getBundleId() {
    return _bundleIdMemoizer.runOnce(() {
      final bridge = _stateMachine.expect<NativeAuthBridge>();
      return bridge.getBundleId();
    });
  }

  /// Cache of secure storage instances.
  final Map<String, SecureStorageInterface> _secureStorageInstances = {};

  /// Creates a legacy secure storage instance given a namespace,
  /// or returns it if it already exists.
  ///
  /// The namespace is used as the "service" on iOS and the key-value
  /// repository name on Android.
  SecureStorageInterface _getSecureStorageInstance(String namespace) {
    return _secureStorageInstances[namespace] ??= AmplifySecureStorageDart(
      config: AmplifySecureStorageConfig.byNamespace(namespace: namespace),
    );
  }

  /// Returns a Secure Storage instance for accessing legacy User Pool
  /// keys from the iOS SDK.
  Future<SecureStorageInterface> _getUserPoolStorage() async {
    final bundleId = await _getBundleId();
    return _getSecureStorageInstance('$bundleId.AWSCognitoIdentityUserPool');
  }

  /// Returns a Secure Storage instance for accessing legacy Identity Pool
  /// keys from the iOS SDK.
  Future<SecureStorageInterface> _getIdentityPoolStorage(
    String identityPoolId,
  ) async {
    final bundleId = await _getBundleId();
    return _getSecureStorageInstance(
      '$bundleId.AWSCognitoCredentialsProvider.$identityPoolId',
    );
  }
}
