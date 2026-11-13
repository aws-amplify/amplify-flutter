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

    group('listWebAuthnCredentials', () {
      test('throws when signed out', () async {
        // Arrange: configure plugin but don't seed storage
        await plugin.configure(
          config: mockConfig,
          authProviderRepo: testAuthRepo,
        );

        // Act & Assert
        expect(
          () => plugin.listWebAuthnCredentials(),
          throwsSignedOutException,
        );
      });

      test('returns credentials with all fields mapped', () async {
        // Arrange: seed storage for authenticated state
        seedStorage(
          secureStorage,
          userPoolKeys: userPoolKeys,
          identityPoolKeys: identityPoolKeys,
        );

        // Mock HTTP client for ListWebAuthnCredentials
        final mockHttpClient = MockAWSHttpClient((request, isCancelled) async {
          final responseBody = {
            'Credentials': [
              {
                'CredentialId': 'cred-1',
                'RelyingPartyId': 'test.example.com',
                'CreatedAt': 1710000000.0,
                'FriendlyCredentialName': 'My Passkey',
                'AuthenticatorAttachment': 'platform',
                'AuthenticatorTransports': ['internal'],
              },
            ],
            'NextToken': null,
          };
          return AWSHttpResponse(
            statusCode: 200,
            body: utf8.encode(json.encode(responseBody)),
          );
        });
        stateMachine.addInstance<AWSHttpClient>(mockHttpClient);

        await plugin.configure(
          config: mockConfig,
          authProviderRepo: testAuthRepo,
        );

        // Act
        final credentials = await plugin.listWebAuthnCredentials();

        // Assert: verify all 6 fields are mapped
        expect(credentials, hasLength(1));
        final credential = credentials.first;
        expect(credential.credentialId, 'cred-1');
        expect(credential.relyingPartyId, 'test.example.com');
        expect(
          credential.createdAt,
          DateTime.fromMillisecondsSinceEpoch(1710000000000, isUtc: true),
        );
        expect(credential.friendlyName, 'My Passkey');
        expect(credential.authenticatorAttachment, 'platform');
        expect(credential.authenticatorTransports, ['internal']);
      });

      test('handles pagination across multiple pages', () async {
        // Arrange: seed storage for authenticated state
        seedStorage(
          secureStorage,
          userPoolKeys: userPoolKeys,
          identityPoolKeys: identityPoolKeys,
        );

        var callCount = 0;
        // Mock HTTP client with pagination
        final mockHttpClient = MockAWSHttpClient((request, isCancelled) async {
          final bodyMap =
              json.decode(utf8.decode(request.bodyBytes))
                  as Map<String, dynamic>;
          callCount++;

          if (callCount == 1) {
            // First page with NextToken
            final responseBody = {
              'Credentials': [
                {
                  'CredentialId': 'cred-1',
                  'RelyingPartyId': 'test.example.com',
                  'CreatedAt': 1710000000.0,
                },
              ],
              'NextToken': 'token-for-page-2',
            };
            return AWSHttpResponse(
              statusCode: 200,
              body: utf8.encode(json.encode(responseBody)),
            );
          } else {
            // Second page without NextToken
            expect(bodyMap['NextToken'], 'token-for-page-2');
            final responseBody = {
              'Credentials': [
                {
                  'CredentialId': 'cred-2',
                  'RelyingPartyId': 'test.example.com',
                  'CreatedAt': 1710000100.0,
                },
              ],
              'NextToken': null,
            };
            return AWSHttpResponse(
              statusCode: 200,
              body: utf8.encode(json.encode(responseBody)),
            );
          }
        });
        stateMachine.addInstance<AWSHttpClient>(mockHttpClient);

        await plugin.configure(
          config: mockConfig,
          authProviderRepo: testAuthRepo,
        );

        // Act
        final credentials = await plugin.listWebAuthnCredentials();

        // Assert: should have fetched both pages
        expect(credentials, hasLength(2));
        expect(credentials[0].credentialId, 'cred-1');
        expect(credentials[1].credentialId, 'cred-2');
        expect(callCount, 2);
      });

      test('returns empty list when no credentials', () async {
        // Arrange: seed storage for authenticated state
        seedStorage(
          secureStorage,
          userPoolKeys: userPoolKeys,
          identityPoolKeys: identityPoolKeys,
        );

        // Mock HTTP client returning empty credentials
        final mockHttpClient = MockAWSHttpClient((request, isCancelled) async {
          final responseBody = {'Credentials': <dynamic>[], 'NextToken': null};
          return AWSHttpResponse(
            statusCode: 200,
            body: utf8.encode(json.encode(responseBody)),
          );
        });
        stateMachine.addInstance<AWSHttpClient>(mockHttpClient);

        await plugin.configure(
          config: mockConfig,
          authProviderRepo: testAuthRepo,
        );

        // Act
        final credentials = await plugin.listWebAuthnCredentials();

        // Assert
        expect(credentials, isEmpty);
      });
    });
  });
}
