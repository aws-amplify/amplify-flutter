// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/model/cognito_device_secrets.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:amplify_core/amplify_core.dart';
// ignore: implementation_imports
import 'package:amplify_core/src/config/amplify_outputs/auth/auth_outputs.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';

/// {@template amplify_auth_cognito_dart.credentials.device_metadata_repository}
/// Repository for device secrets and metadata, used to isolate the loading
/// {@endtemplate}
class DeviceMetadataRepository {
  /// {@macro amplify_auth_cognito_dart.credentials.device_metadata_repository}
  const DeviceMetadataRepository(
    this._authOutputs,
    this._secureStorage,
  );

  /// {@macro amplify_auth_cognito_dart.credentials.device_metadata_repository}
  factory DeviceMetadataRepository.fromDependencies(
    DependencyManager dependencies,
  ) {
    final authOutputs = dependencies.expect<AuthOutputs>();
    if (authOutputs.userPoolClientId == null) {
      throw const InvalidAccountTypeException.noUserPool();
    }
    return DeviceMetadataRepository(
      authOutputs,
      dependencies.getOrCreate(),
    );
  }

  final AuthOutputs _authOutputs;
  final SecureStorageInterface _secureStorage;

  /// Retrieves the device secrets for [username].
  Future<CognitoDeviceSecrets?> get(String username) async {
    CognitoDeviceSecrets? deviceSecrets;
    final deviceKeys =
        CognitoDeviceKeys(_authOutputs.userPoolClientId!, username);
    final deviceKey = await _secureStorage.read(
      key: deviceKeys[CognitoDeviceKey.deviceKey],
    );
    final deviceGroupKey = await _secureStorage.read(
      key: deviceKeys[CognitoDeviceKey.deviceGroupKey],
    );
    final devicePassword = await _secureStorage.read(
      key: deviceKeys[CognitoDeviceKey.devicePassword],
    );
    final deviceStatus = await _secureStorage.read(
      key: deviceKeys[CognitoDeviceKey.deviceStatus],
    );
    if (deviceKey != null && deviceGroupKey != null && devicePassword != null) {
      deviceSecrets = CognitoDeviceSecrets(
        (b) => b
          ..deviceKey = deviceKey
          ..deviceGroupKey = deviceGroupKey
          ..devicePassword = devicePassword
          ..deviceStatus = deviceStatus == null
              ? null
              : DeviceRememberedStatusType.values.byValue(deviceStatus),
      );
    }
    return deviceSecrets;
  }

  /// Save the [deviceSecrets] for [username].
  Future<void> put(String username, CognitoDeviceSecrets deviceSecrets) async {
    final deviceKeys =
        CognitoDeviceKeys(_authOutputs.userPoolClientId!, username);
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
    await _secureStorage.write(
      key: deviceKeys[CognitoDeviceKey.deviceStatus],
      value: deviceSecrets.deviceStatus.value,
    );
  }

  /// Clears the device secrets for [username].
  Future<void> remove(String username) async {
    final deviceKeys =
        CognitoDeviceKeys(_authOutputs.userPoolClientId!, username);
    for (final key in deviceKeys) {
      await _secureStorage.delete(key: key);
    }
  }
}
