// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: invalid_use_of_protected_member, close_sinks

import 'dart:async';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart'
    hide InternalErrorException;
import 'package:amplify_auth_cognito_dart/src/state/cognito_state_machine.dart';
import 'package:amplify_auth_cognito_test/common/mock_config.dart';
import 'package:amplify_auth_cognito_test/common/mock_secure_storage.dart';
import 'package:amplify_auth_cognito_test/common/mock_webauthn.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:test/test.dart';

void main() {
  late AmplifyAuthCognitoDart plugin;
  late CognitoAuthStateMachine stateMachine;
  late MockSecureStorage secureStorage;

  late StreamController<AuthHubEvent> hubEventsController;

  final testAuthRepo = AmplifyAuthProviderRepository();

  group('AmplifyAuthCognitoDart', () {
    setUp(() async {
      secureStorage = MockSecureStorage();
      SecureStorageInterface storageFactory(scope) => secureStorage;

      stateMachine = CognitoAuthStateMachine()..addInstance(secureStorage);

      plugin = AmplifyAuthCognitoDart(secureStorageFactory: storageFactory)
        ..stateMachine = stateMachine;

      hubEventsController = StreamController();
      Amplify.Hub.listen(HubChannel.Auth, hubEventsController.add);
    });

    tearDown(() async {
      Amplify.Hub.close();
      await Amplify.reset();
    });

    group('isPasskeySupported', () {
      test(
        'returns true when platform bridge available and supported',
        () async {
          // Arrange: inject mock platform that reports supported
          final mockPlatform = MockWebAuthnCredentialPlatform(
            isPasskeySupported: () async => true,
          );
          stateMachine.addInstance<WebAuthnCredentialPlatform>(mockPlatform);

          await plugin.configure(
            config: mockConfig,
            authProviderRepo: testAuthRepo,
          );

          // Act
          final result = await plugin.isPasskeySupported();

          // Assert
          expect(result, isTrue);
        },
      );

      test('returns false when platform bridge unavailable', () async {
        // Arrange: don't inject platform (null)
        await plugin.configure(
          config: mockConfig,
          authProviderRepo: testAuthRepo,
        );

        // Act
        final result = await plugin.isPasskeySupported();

        // Assert
        expect(result, isFalse);
      });

      test('returns false when platform reports not supported', () async {
        // Arrange: inject mock platform that reports not supported
        final mockPlatform = MockWebAuthnCredentialPlatform(
          isPasskeySupported: () async => false,
        );
        stateMachine.addInstance<WebAuthnCredentialPlatform>(mockPlatform);

        await plugin.configure(
          config: mockConfig,
          authProviderRepo: testAuthRepo,
        );

        // Act
        final result = await plugin.isPasskeySupported();

        // Assert
        expect(result, isFalse);
      });
    });
  });
}
