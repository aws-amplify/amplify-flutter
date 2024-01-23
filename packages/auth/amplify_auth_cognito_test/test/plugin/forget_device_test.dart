// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/device_metadata_repository.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:amplify_auth_cognito_dart/src/state/cognito_state_machine.dart';
import 'package:amplify_auth_cognito_test/common/mock_clients.dart';
import 'package:amplify_auth_cognito_test/common/mock_config.dart';
import 'package:amplify_auth_cognito_test/common/mock_secure_storage.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';

void main() {
  AmplifyLogger().logLevel = LogLevel.verbose;

  final userPoolKeys = CognitoUserPoolKeys(userPoolConfig);
  final identityPoolKeys = CognitoIdentityPoolKeys(identityPoolConfig);
  final testAuthRepo = AmplifyAuthProviderRepository();

  late DeviceMetadataRepository repo;
  late AmplifyAuthCognitoDart plugin;
  late CognitoAuthStateMachine stateMachine;
  late MockSecureStorage secureStorage;

  group('forgetDevice', () {
    setUp(() async {
      secureStorage = MockSecureStorage();
      seedStorage(
        secureStorage,
        userPoolKeys: userPoolKeys,
        identityPoolKeys: identityPoolKeys,
        deviceKeys: CognitoDeviceKeys(userPoolConfig, username),
      );
      plugin = AmplifyAuthCognitoDart(
        secureStorageFactory: (_) => secureStorage,
      );
      stateMachine = plugin.stateMachine;
      await plugin.configure(
        config: mockConfig,
        authProviderRepo: testAuthRepo,
      );
      final mockIdp = MockCognitoIdentityProviderClient(
        forgetDevice: () async {},
      );
      stateMachine.addInstance<CognitoIdentityProviderClient>(mockIdp);
      repo = stateMachine.getOrCreate<DeviceMetadataRepository>();
    });

    test('should remove the local device when called with no device ID',
        () async {
      expect(await repo.get(username), isNotNull);
      await plugin.forgetDevice();
      expect(await repo.get(username), isNull);
    });

    test(
        'should remove the local device when the device ID matches the local device ID',
        () async {
      expect(await repo.get(username), isNotNull);
      await plugin.forgetDevice(const CognitoDevice(id: deviceKey));
      expect(await repo.get(username), isNull);
    });

    test(
        'should not remove the local device when the device ID does not match the local device ID',
        () async {
      expect(await repo.get(username), isNotNull);
      await plugin.forgetDevice(const CognitoDevice(id: 'other-device-id'));
      expect(await repo.get(username), isNotNull);
    });

    tearDown(() async {
      await plugin.close();
    });
  });
}
