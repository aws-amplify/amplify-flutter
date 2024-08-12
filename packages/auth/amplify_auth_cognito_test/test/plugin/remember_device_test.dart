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

enum DeviceState { untracked, tracked, remembered }

void main() {
  AmplifyLogger().logLevel = LogLevel.verbose;

  final userPoolKeys = CognitoUserPoolKeys(mockConfig.auth!.userPoolClientId!);
  final identityPoolKeys =
      CognitoIdentityPoolKeys(mockConfig.auth!.identityPoolId!);
  final testAuthRepo = AmplifyAuthProviderRepository();
  final mockUpdateDeviceStatusResponse = UpdateDeviceStatusResponse();

  late DeviceMetadataRepository repo;
  late AmplifyAuthCognitoDart plugin;
  late CognitoAuthStateMachine stateMachine;
  late MockSecureStorage secureStorage;

  Future<DeviceState> getDeviceState() async {
    final secrets = await repo.get(username);
    if (secrets == null) {
      return DeviceState.untracked;
    }
    return secrets.deviceStatus == DeviceRememberedStatusType.remembered
        ? DeviceState.remembered
        : DeviceState.tracked;
  }

  group('rememberDevice', () {
    setUp(() async {
      secureStorage = MockSecureStorage();
      seedStorage(
        secureStorage,
        userPoolKeys: userPoolKeys,
        identityPoolKeys: identityPoolKeys,
        deviceKeys:
            CognitoDeviceKeys(mockConfig.auth!.userPoolClientId!, username),
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
        updateDeviceStatus: () async => mockUpdateDeviceStatusResponse,
      );
      stateMachine.addInstance<CognitoIdentityProviderClient>(mockIdp);
      repo = stateMachine.getOrCreate<DeviceMetadataRepository>();
    });

    tearDown(() async {
      await plugin.close();
    });

    test('rememberDevice changes the device state from tracked to remembered',
        () async {
      expect(await getDeviceState(), DeviceState.tracked);
      await plugin.rememberDevice();
      expect(await getDeviceState(), DeviceState.remembered);
    });

    test(
        'rememberDevice throws a DeviceNotTrackedException when device is forgotten',
        () async {
      await plugin.forgetDevice();
      await expectLater(
        plugin.rememberDevice,
        throwsA(isA<DeviceNotTrackedException>()),
      );
    });
  });
}
