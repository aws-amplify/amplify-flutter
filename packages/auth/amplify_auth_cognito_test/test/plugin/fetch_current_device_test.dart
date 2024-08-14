// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/device_metadata_repository.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:amplify_auth_cognito_test/common/mock_clients.dart';
import 'package:amplify_auth_cognito_test/common/mock_config.dart';
import 'package:amplify_auth_cognito_test/common/mock_secure_storage.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';

void main() {
  AmplifyLogger().logLevel = LogLevel.verbose;

  final userPoolKeys = CognitoUserPoolKeys(userPoolConfig.appClientId);
  final identityPoolKeys =
      CognitoIdentityPoolKeys(mockConfig.auth!.identityPoolId!);
  final testAuthRepo = AmplifyAuthProviderRepository();
  final mockDevice = DeviceType(deviceKey: deviceKey);
  final mockDeviceResponse = GetDeviceResponse(device: mockDevice);

  late DeviceMetadataRepository repo;
  late AmplifyAuthCognitoDart plugin;

  group('fetchCurrentDevice', () {
    setUp(() async {
      final secureStorage = MockSecureStorage();
      seedStorage(
        secureStorage,
        userPoolKeys: userPoolKeys,
        identityPoolKeys: identityPoolKeys,
        deviceKeys: CognitoDeviceKeys(userPoolConfig.appClientId, username),
      );
      plugin = AmplifyAuthCognitoDart(
        secureStorageFactory: (_) => secureStorage,
      );
      await plugin.configure(
        config: mockConfig,
        authProviderRepo: testAuthRepo,
      );
      repo = plugin.stateMachine.getOrCreate<DeviceMetadataRepository>();
    });

    group('should successfully', () {
      setUp(() async {
        final mockIdp = MockCognitoIdentityProviderClient(
          getDevice: () async => mockDeviceResponse,
          forgetDevice: () async {},
        );
        plugin.stateMachine.addInstance<CognitoIdentityProviderClient>(mockIdp);
      });

      test(
          'return the current device where the current device id is equal to the local device id',
          () async {
        final secrets = await repo.get(username);
        final currentDeviceKey = secrets?.deviceKey;
        expect(currentDeviceKey, isNotNull);
        final currentDevice = await plugin.fetchCurrentDevice();
        expect(currentDeviceKey, currentDevice.id);
      });

      test('throw a DeviceNotTrackedException when current device key is null',
          () async {
        await plugin.forgetDevice();
        await expectLater(
          plugin.fetchCurrentDevice,
          throwsA(isA<DeviceNotTrackedException>()),
        );
      });
    });

    group('should throw', () {
      setUp(() async {
        final mockIdp = MockCognitoIdentityProviderClient(
          getDevice: () async => throw AWSHttpException(
            AWSHttpRequest.get(Uri.parse('https://aws.amazon.com/cognito/')),
          ),
        );
        plugin.stateMachine.addInstance<CognitoIdentityProviderClient>(mockIdp);
      });

      test('a NetworkException', () async {
        await expectLater(
          plugin.fetchCurrentDevice,
          throwsA(isA<NetworkException>()),
        );
      });
    });

    tearDown(() async {
      await plugin.close();
    });
  });
}
