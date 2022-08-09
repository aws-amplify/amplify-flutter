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
import 'package:amplify_auth_cognito_dart/src/model/cognito_device_secrets.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';

/// {@template amplify_auth_cognito_dart.credentials.device_metadata_repository}
/// Repository for device secrets and metadata, used to isolate the loading
/// {@endtemplate}
class DeviceMetadataRepository {
  /// {@macro amplify_auth_cognito_dart.credentials.device_metadata_repository}
  const DeviceMetadataRepository(
    this._userPoolConfig,
    this._secureStorage,
  );

  /// The token of [DeviceMetadataRepository] for use with a
  /// [DependencyManager].
  static const token = Token<DeviceMetadataRepository>([
    Token<CognitoUserPoolConfig>(),
    Token<SecureStorageInterface>(),
  ]);

  final CognitoUserPoolConfig _userPoolConfig;
  final SecureStorageInterface _secureStorage;

  /// Retrieves the device secrets for [username].
  Future<CognitoDeviceSecrets?> get(String username) async {
    CognitoDeviceSecrets? deviceSecrets;
    final deviceKeys = CognitoDeviceKeys(_userPoolConfig, username);
    final deviceKey = await _secureStorage.read(
      key: deviceKeys[CognitoDeviceKey.deviceKey],
    );
    final deviceGroupKey = await _secureStorage.read(
      key: deviceKeys[CognitoDeviceKey.deviceGroupKey],
    );
    final devicePassword = await _secureStorage.read(
      key: deviceKeys[CognitoDeviceKey.devicePassword],
    );
    if (deviceKey != null && deviceGroupKey != null && devicePassword != null) {
      deviceSecrets = CognitoDeviceSecrets(
        (b) => b
          ..deviceKey = deviceKey
          ..deviceGroupKey = deviceGroupKey
          ..devicePassword = devicePassword,
      );
    }
    return deviceSecrets;
  }

  /// Save the [deviceSecrets] for [username].
  Future<void> put(String username, CognitoDeviceSecrets deviceSecrets) async {
    final deviceKeys = CognitoDeviceKeys(_userPoolConfig, username);
    await _secureStorage.write(
      key: deviceKeys[CognitoDeviceKey.deviceKey],
      value: deviceSecrets.deviceKey,
    );
    await _secureStorage.write(
      key: deviceKeys[CognitoDeviceKey.deviceGroupKey],
      value: deviceSecrets.deviceGroupKey,
    );
    await _secureStorage.write(
      key: deviceKeys[CognitoDeviceKey.devicePassword],
      value: deviceSecrets.devicePassword,
    );
  }

  /// Clears the device secrets for [username].
  Future<void> remove(String username) async {
    final deviceKeys = CognitoDeviceKeys(_userPoolConfig, username);
    for (final key in deviceKeys) {
      await _secureStorage.delete(key: key);
    }
  }
}
