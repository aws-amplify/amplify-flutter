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
import 'package:amplify_auth_cognito_test/common/mock_webauthn.dart';
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

    group('associateWebAuthnCredential', () {
      test('throws when signed out', () async {
        // Arrange: configure plugin but don't seed storage (no authenticated user)
        await plugin.configure(
          config: mockConfig,
          authProviderRepo: testAuthRepo,
        );

        // Act & Assert
        expect(
          () => plugin.associateWebAuthnCredential(),
          throwsSignedOutException,
        );
      });

      test('orchestrates start -> platform ceremony -> complete', () async {
        // Arrange: seed storage for authenticated state
        seedStorage(
          secureStorage,
          userPoolKeys: userPoolKeys,
          identityPoolKeys: identityPoolKeys,
        );

        // Mock HTTP client for Cognito WebAuthn API calls
        final mockHttpClient = MockAWSHttpClient((request, isCancelled) async {
          final target = request.headers['X-Amz-Target'];
          json.decode(utf8.decode(request.bodyBytes)) as Map<String, dynamic>;

          if (target ==
              'AWSCognitoIdentityProviderService.StartWebAuthnRegistration') {
            // Return StartWebAuthnRegistration response with creation options
            final responseBody = {
              'CredentialCreationOptions': {
                'challenge': 'Y2hhbGxlbmdl',
                'rp': {'id': 'test.example.com', 'name': 'Test'},
                'user': {
                  'id': 'dXNlcjE',
                  'name': 'testuser',
                  'displayName': 'Test User',
                },
                'pubKeyCredParams': [
                  {'type': 'public-key', 'alg': -7},
                ],
                'timeout': 60000,
                'attestation': 'none',
              },
            };
            return AWSHttpResponse(
              statusCode: 200,
              body: utf8.encode(json.encode(responseBody)),
            );
          } else if (target ==
              'AWSCognitoIdentityProviderService.CompleteWebAuthnRegistration') {
            // Return success (empty body)
            return AWSHttpResponse(statusCode: 200, body: utf8.encode('{}'));
          }
          throw UnimplementedError('Unexpected target: $target');
        });

        stateMachine.addInstance<AWSHttpClient>(mockHttpClient);

        // Mock platform that returns a credential
        final mockPlatform = MockWebAuthnCredentialPlatform(
          createCredential: (optionsJson) async {
            // Return a valid PasskeyCreateResult JSON
            return json.encode({
              'id': 'Y3JlZGVudGlhbElk',
              'rawId': 'Y3JlZGVudGlhbElk',
              'type': 'public-key',
              'response': {
                'clientDataJSON': 'Y2xpZW50RGF0YQ',
                'attestationObject': 'YXR0ZXN0YXRpb25PYmplY3Q',
              },
              'clientExtensionResults': <String, dynamic>{},
            });
          },
        );
        stateMachine.addInstance<WebAuthnCredentialPlatform>(mockPlatform);

        await plugin.configure(
          config: mockConfig,
          authProviderRepo: testAuthRepo,
        );

        // Act & Assert: should complete without exception
        await plugin.associateWebAuthnCredential();
      });

      test('propagates PasskeyCancelledException from platform', () async {
        // Arrange: seed storage for authenticated state
        seedStorage(
          secureStorage,
          userPoolKeys: userPoolKeys,
          identityPoolKeys: identityPoolKeys,
        );

        // Mock HTTP client for StartWebAuthnRegistration
        final mockHttpClient = MockAWSHttpClient((request, isCancelled) async {
          final responseBody = {
            'CredentialCreationOptions': {
              'challenge': 'Y2hhbGxlbmdl',
              'rp': {'id': 'test.example.com', 'name': 'Test'},
              'user': {
                'id': 'dXNlcjE',
                'name': 'testuser',
                'displayName': 'Test User',
              },
              'pubKeyCredParams': [
                {'type': 'public-key', 'alg': -7},
              ],
              'timeout': 60000,
              'attestation': 'none',
            },
          };
          return AWSHttpResponse(
            statusCode: 200,
            body: utf8.encode(json.encode(responseBody)),
          );
        });
        stateMachine.addInstance<AWSHttpClient>(mockHttpClient);

        // Mock platform that throws cancelled exception
        final mockPlatform = MockWebAuthnCredentialPlatform(
          createCredential: (_) async =>
              throw const PasskeyCancelledException('User cancelled'),
        );
        stateMachine.addInstance<WebAuthnCredentialPlatform>(mockPlatform);

        await plugin.configure(
          config: mockConfig,
          authProviderRepo: testAuthRepo,
        );

        // Act & Assert: exception should propagate
        expect(
          () => plugin.associateWebAuthnCredential(),
          throwsA(isA<PasskeyCancelledException>()),
        );
      });

      test('propagates platform not supported error', () async {
        // Arrange: seed storage for authenticated state
        seedStorage(
          secureStorage,
          userPoolKeys: userPoolKeys,
          identityPoolKeys: identityPoolKeys,
        );

        // Mock HTTP client for StartWebAuthnRegistration
        final mockHttpClient = MockAWSHttpClient((request, isCancelled) async {
          final responseBody = {
            'CredentialCreationOptions': {
              'challenge': 'Y2hhbGxlbmdl',
              'rp': {'id': 'test.example.com', 'name': 'Test'},
              'user': {
                'id': 'dXNlcjE',
                'name': 'testuser',
                'displayName': 'Test User',
              },
              'pubKeyCredParams': [
                {'type': 'public-key', 'alg': -7},
              ],
              'timeout': 60000,
              'attestation': 'none',
            },
          };
          return AWSHttpResponse(
            statusCode: 200,
            body: utf8.encode(json.encode(responseBody)),
          );
        });
        stateMachine.addInstance<AWSHttpClient>(mockHttpClient);

        // Don't inject platform (null)
        await plugin.configure(
          config: mockConfig,
          authProviderRepo: testAuthRepo,
        );

        // Act & Assert: should throw PasskeyNotSupportedException
        expect(
          () => plugin.associateWebAuthnCredential(),
          throwsA(isA<PasskeyNotSupportedException>()),
        );
      });
    });
  });
}
