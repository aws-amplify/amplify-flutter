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

void seedStorage(
  SecureStorageInterface secureStorage, {
  CognitoUserPoolKeys? userPoolKeys,
  CognitoDeviceKeys? deviceKeys,
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
      );
  }
  if (deviceKeys != null) {
    secureStorage
      ..write(
        key: deviceKeys[CognitoDeviceKey.deviceKey],
        value: deviceKey,
      )
      ..write(
        key: deviceKeys[CognitoDeviceKey.deviceGroupKey],
        value: deviceGroupKey,
      )
      ..write(
        key: deviceKeys[CognitoDeviceKey.devicePassword],
        value: devicePassword,
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
