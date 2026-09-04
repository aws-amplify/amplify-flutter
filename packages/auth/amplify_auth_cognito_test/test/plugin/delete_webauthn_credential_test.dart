// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: invalid_use_of_protected_member, close_sinks

import 'dart:async';
import 'dart:convert';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart'
    hide InternalErrorException;
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/state/cognito_state_machine.dart';
import 'package:amplify_auth_cognito_test/common/matchers.dart';
import 'package:amplify_auth_cognito_test/common/mock_config.dart';
import 'package:amplify_auth_cognito_test/common/mock_secure_storage.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:aws_common/src/http/mock.dart';
import 'package:test/test.dart';

void main() {
  final userPoolKeys = CognitoUserPoolKeys(mockConfig.auth!.userPoolClientId!);
  final identityPoolKeys = CognitoIdentityPoolKeys(
    mockConfig.auth!.identityPoolId!,
  );

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

    group('deleteWebAuthnCredential', () {
      test('throws when signed out', () async {
        // Arrange: configure plugin but don't seed storage
        await plugin.configure(
          config: mockConfig,
          authProviderRepo: testAuthRepo,
        );

        // Act & Assert
        expect(
          () => plugin.deleteWebAuthnCredential('test-cred-id'),
          throwsSignedOutException,
        );
      });

      test('deletes credential successfully', () async {
        // Arrange: seed storage for authenticated state
        seedStorage(
          secureStorage,
          userPoolKeys: userPoolKeys,
          identityPoolKeys: identityPoolKeys,
        );

        // Mock HTTP client for DeleteWebAuthnCredential
        final mockHttpClient = MockAWSHttpClient((request, isCancelled) async {
          final bodyMap =
              json.decode(utf8.decode(request.bodyBytes))
                  as Map<String, dynamic>;
          expect(bodyMap['CredentialId'], 'test-cred-id');

          return AWSHttpResponse(statusCode: 200, body: utf8.encode('{}'));
        });
        stateMachine.addInstance<AWSHttpClient>(mockHttpClient);

        await plugin.configure(
          config: mockConfig,
          authProviderRepo: testAuthRepo,
        );

        // Act & Assert: should complete without exception
        await plugin.deleteWebAuthnCredential('test-cred-id');
      });

      test('throws when credential not found', () async {
        // Arrange: seed storage for authenticated state
        seedStorage(
          secureStorage,
          userPoolKeys: userPoolKeys,
          identityPoolKeys: identityPoolKeys,
        );

        // Mock HTTP client returning 404 ResourceNotFoundException
        final mockHttpClient = MockAWSHttpClient((request, isCancelled) async {
          final errorBody = {
            '__type': 'ResourceNotFoundException',
            'message': 'Credential not found',
          };
          return AWSHttpResponse(
            statusCode: 404,
            body: utf8.encode(json.encode(errorBody)),
          );
        });
        stateMachine.addInstance<AWSHttpClient>(mockHttpClient);

        await plugin.configure(
          config: mockConfig,
          authProviderRepo: testAuthRepo,
        );

        // Act & Assert: should throw exception
        expect(
          () => plugin.deleteWebAuthnCredential('nonexistent-cred-id'),
          throwsA(isA<ResourceNotFoundException>()),
        );
      });
    });
  });
}
