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

import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/credential_store_keys.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/legacy_secure_storage_factory.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';

import 'mock_config.dart';

class MockSecureStorage implements SecureStorageInterface {
  final Map<String, String> _storage = {};

  @override
  void delete({required String key}) => _storage.remove(key);

  @override
  String? read({required String key}) => _storage[key];

  @override
  void write({required String key, required String value}) =>
      _storage[key] = value;
}

class MockLegacySecureStorageFactory implements LegacySecureStorageFactory {
  const MockLegacySecureStorageFactory(this.storage);

  final SecureStorageInterface storage;

  @override
  SecureStorageInterface getIdentityPoolStorage(
    String bundleId,
    String identityPoolId,
  ) {
    return storage;
  }

  @override
  SecureStorageInterface getUserPoolStorage(String bundleId) {
    return storage;
  }
}

void seedStorage(
  SecureStorageInterface secureStorage, {
  CognitoUserPoolKeys? userPoolKeys,
  CognitoIdentityPoolKeys? identityPoolKeys,
  HostedUiKeys? hostedUiKeys,
  CredentialStoreVersion? version,
}) {
  if (userPoolKeys != null) {
    secureStorage
      ..write(
        key: userPoolKeys[CognitoUserPoolKey.accessToken],
        value: accessToken.raw,
      )
      ..write(
        key: userPoolKeys[CognitoUserPoolKey.refreshToken],
        value: refreshToken,
      )
      ..write(
        key: userPoolKeys[CognitoUserPoolKey.idToken],
        value: idToken.raw,
      )
      ..write(
        key: userPoolKeys[CognitoUserPoolKey.userSub],
        value: userSub,
      );
  }
  if (identityPoolKeys != null) {
    secureStorage
      ..write(
        key: identityPoolKeys[CognitoIdentityPoolKey.accessKeyId],
        value: accessKeyId,
      )
      ..write(
        key: identityPoolKeys[CognitoIdentityPoolKey.secretAccessKey],
        value: secretAccessKey,
      )
      ..write(
        key: identityPoolKeys[CognitoIdentityPoolKey.sessionToken],
        value: sessionToken,
      )
      ..write(
        key: identityPoolKeys[CognitoIdentityPoolKey.expiration],
        value: expiration.toIso8601String(),
      )
      ..write(
        key: identityPoolKeys[CognitoIdentityPoolKey.identityId],
        value: identityId,
      );
  }
  if (hostedUiKeys != null) {
    secureStorage
      ..write(
        key: hostedUiKeys[HostedUiKey.accessToken],
        value: accessToken.raw,
      )
      ..write(
        key: hostedUiKeys[HostedUiKey.refreshToken],
        value: refreshToken,
      )
      ..write(
        key: hostedUiKeys[HostedUiKey.idToken],
        value: idToken.raw,
      );
  }
  if (version != null) {
    secureStorage.write(
      key: CredentialStoreKey.version.name,
      value: version.name,
    );
  }
}

Future<CredentialStoreVersion> getVersion(
  SecureStorageInterface secureStorage,
) async {
  final version = await secureStorage.read(
    key: CredentialStoreKey.version.name,
  );
  return CredentialStoreVersion.values.byName(
    version ?? CredentialStoreVersion.none.name,
  );
}

void seedLegacyStorage(
  SecureStorageInterface secureStorage, {
  LegacyCognitoUserPoolKeys? userPoolKeys,
  LegacyCognitoIdentityPoolKeys? identityPoolKeys,
  LegacyCognitoUserKeys? cognitoUserKeys,
  HostedUiKeys? hostedUiKeys,
}) {
  if (cognitoUserKeys != null && userPoolKeys != null) {
    secureStorage
      ..write(
        key: legacyCognitoUserKeys[LegacyCognitoKey.currentUser],
        value: legacyUserSub,
      )
      ..write(
        key: userPoolKeys[LegacyCognitoUserPoolKey.accessToken],
        value: accessToken.raw,
      )
      ..write(
        key: userPoolKeys[LegacyCognitoUserPoolKey.refreshToken],
        value: refreshToken,
      )
      ..write(
        key: userPoolKeys[LegacyCognitoUserPoolKey.idToken],
        value: idToken.raw,
      );
  }
  if (identityPoolKeys != null) {
    secureStorage
      ..write(
        key: identityPoolKeys[LegacyCognitoIdentityPoolKey.accessKey],
        value: accessKeyId,
      )
      ..write(
        key: identityPoolKeys[LegacyCognitoIdentityPoolKey.secretKey],
        value: secretAccessKey,
      )
      ..write(
        key: identityPoolKeys[LegacyCognitoIdentityPoolKey.sessionKey],
        value: sessionToken,
      )
      ..write(
        key: identityPoolKeys[LegacyCognitoIdentityPoolKey.expiration],
        value: (expiration.millisecondsSinceEpoch / 1000).toString(),
      )
      ..write(
        key: identityPoolKeys[LegacyCognitoIdentityPoolKey.identityId],
        value: identityId,
      );
  }
}

Future<bool> legacyStorageIsEmpty(
  SecureStorageInterface secureStorage, {
  LegacyCognitoUserPoolKeys? userPoolKeys,
  LegacyCognitoIdentityPoolKeys? identityPoolKeys,
  LegacyCognitoUserKeys? cognitoUserKeys,
  HostedUiKeys? hostedUiKeys,
}) async {
  if (cognitoUserKeys != null && userPoolKeys != null) {
    final currentUser = await secureStorage.read(
      key: legacyCognitoUserKeys[LegacyCognitoKey.currentUser],
    );
    final accessToken = await secureStorage.read(
      key: userPoolKeys[LegacyCognitoUserPoolKey.accessToken],
    );
    final refreshToken = await secureStorage.read(
      key: userPoolKeys[LegacyCognitoUserPoolKey.refreshToken],
    );
    final idToken = await secureStorage.read(
      key: userPoolKeys[LegacyCognitoUserPoolKey.idToken],
    );
    if ((currentUser ?? accessToken ?? refreshToken ?? idToken) != null) {
      return false;
    }
  }
  if (identityPoolKeys != null) {
    final accessKey = await secureStorage.read(
      key: identityPoolKeys[LegacyCognitoIdentityPoolKey.accessKey],
    );
    final secretKey = await secureStorage.read(
      key: identityPoolKeys[LegacyCognitoIdentityPoolKey.secretKey],
    );
    final sessionKey = await secureStorage.read(
      key: identityPoolKeys[LegacyCognitoIdentityPoolKey.sessionKey],
    );
    final expiration = await secureStorage.read(
      key: identityPoolKeys[LegacyCognitoIdentityPoolKey.expiration],
    );
    final identityId = await secureStorage.read(
      key: identityPoolKeys[LegacyCognitoIdentityPoolKey.identityId],
    );
    if ((accessKey ?? secretKey ?? sessionKey ?? expiration ?? identityId) !=
        null) {
      return false;
    }
  }
  return true;
}
