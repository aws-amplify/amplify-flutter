// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_auth_cognito/src/credentials/legacy_ios_cognito_keys.dart';
import 'package:amplify_auth_cognito/src/credentials/secure_storage_extension.dart';
import 'package:amplify_auth_cognito/src/native_auth_plugin.g.dart'
    as auth_cognito;
import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
// ignore: implementation_imports
import 'package:amplify_auth_cognito_dart/src/credentials/legacy_credential_provider.dart';
// ignore: implementation_imports
import 'package:amplify_auth_cognito_dart/src/state/cognito_state_machine.dart';
// ignore: implementation_imports, invalid_use_of_internal_member
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
// ignore: implementation_imports
import 'package:amplify_core/src/config/amplify_outputs/auth/auth_outputs.dart';
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
  Future<CredentialStoreData?> fetchLegacyCredentials(
    AuthOutputs authOutputs,
  ) async {
    CognitoUserPoolTokens? userPoolTokens;
    final userPoolClientId = authOutputs.userPoolClientId;
    if (userPoolClientId != null) {
      final userPoolStorage = await _getUserPoolStorage();
      final cognitoUserKeys = LegacyCognitoUserKeys(userPoolClientId);
      final currentUserId = await userPoolStorage.read(
        key: cognitoUserKeys[LegacyCognitoKey.currentUser],
      );
      if (currentUserId != null) {
        final userPoolKeys = LegacyCognitoUserPoolKeys(
          currentUserId,
          userPoolClientId,
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
          final signInMethod = authOutputs.oauth != null
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
    final identityPoolId = authOutputs.identityPoolId;
    if (identityPoolId != null) {
      final identityPoolStorage = await _getIdentityPoolStorage(identityPoolId);
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
  Future<void> deleteLegacyCredentials(AuthOutputs authOutputs) async {
    final userPoolClientId = authOutputs.userPoolClientId;
    if (userPoolClientId != null) {
      final userPoolStorage = await _getUserPoolStorage();
      final cognitoUserKeys = LegacyCognitoUserKeys(userPoolClientId);
      final currentUser = await userPoolStorage.read(
        key: cognitoUserKeys[LegacyCognitoKey.currentUser],
      );
      if (currentUser != null) {
        final userPoolKeys = LegacyCognitoUserPoolKeys(
          currentUser,
          userPoolClientId,
        );
        await userPoolStorage.deleteMany([
          userPoolKeys[LegacyCognitoUserPoolKey.accessToken],
          userPoolKeys[LegacyCognitoUserPoolKey.refreshToken],
          userPoolKeys[LegacyCognitoUserPoolKey.idToken],
          cognitoUserKeys[LegacyCognitoKey.currentUser],
        ]);
      }
    }

    if (authOutputs.identityPoolId != null) {
      final identityPoolStorage = await _getIdentityPoolStorage(
        authOutputs.identityPoolId!,
      );
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

  @override
  Future<LegacyDeviceDetails?> fetchLegacyDeviceSecrets(
    String username,
    AuthOutputs authOutputs,
  ) async {
    final userPoolClientId = authOutputs.userPoolClientId;
    if (userPoolClientId == null) return null;
    final userPoolStorage = await _getUserPoolStorage();
    final cognitoUserKeys = LegacyCognitoUserKeys(userPoolClientId);
    final currentUserId = await userPoolStorage.read(
      key: cognitoUserKeys[LegacyCognitoKey.currentUser],
    );
    final userPoolId = authOutputs.userPoolId;
    if (currentUserId == null || userPoolId == null) return null;
    final keys = LegacyDeviceSecretKeys(currentUserId, userPoolId);
    final deviceKey = await userPoolStorage.read(
      key: keys[LegacyDeviceSecretKey.id],
    );
    final devicePassword = await userPoolStorage.read(
      key: keys[LegacyDeviceSecretKey.secret],
    );
    final deviceGroupKey = await userPoolStorage.read(
      key: keys[LegacyDeviceSecretKey.group],
    );

    final asfKeys = LegacyAsfDeviceKeys(currentUserId, userPoolId);
    final asfDeviceId = await userPoolStorage.read(
      key: asfKeys[LegacyAsfDeviceKey.id],
    );

    return LegacyDeviceDetails(
      deviceKey: deviceKey,
      deviceGroupKey: deviceGroupKey,
      devicePassword: devicePassword,
      asfDeviceId: asfDeviceId,
    );
  }

  @override
  Future<void> deleteLegacyDeviceSecrets(
    String username,
    AuthOutputs authOutputs,
  ) async {
    final userPoolClientId = authOutputs.userPoolClientId;
    if (userPoolClientId == null) return;
    final userPoolStorage = await _getUserPoolStorage();
    final cognitoUserKeys = LegacyCognitoUserKeys(userPoolClientId);
    final currentUserId = await userPoolStorage.read(
      key: cognitoUserKeys[LegacyCognitoKey.currentUser],
    );
    final userPoolId = authOutputs.userPoolId;
    if (currentUserId == null || userPoolId == null) return;
    final keys = LegacyDeviceSecretKeys(currentUserId, userPoolId);
    final asfKeys = LegacyAsfDeviceKeys(currentUserId, userPoolId);
    await userPoolStorage.deleteMany([
      keys[LegacyDeviceSecretKey.id],
      keys[LegacyDeviceSecretKey.secret],
      keys[LegacyDeviceSecretKey.group],
      asfKeys[LegacyAsfDeviceKey.id],
    ]);
  }

  final _bundleIdMemoizer = AsyncMemoizer<String>();

  /// Gets the bundle ID.
  FutureOr<String> _getBundleId() {
    return _bundleIdMemoizer.runOnce(() {
      final bridge = _stateMachine.expect<auth_cognito.NativeAuthBridge>();
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
    return _secureStorageInstances[namespace] ??=
        // ignore: invalid_use_of_internal_member
        AmplifySecureStorageDart(
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
