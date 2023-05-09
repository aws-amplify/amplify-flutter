// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_auth_cognito_dart/src/credentials/auth_plugin_credentials_provider.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity.dart';
import 'package:amplify_auth_cognito_dart/src/state/cognito_state_machine.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_auth_cognito_test/common/mock_clients.dart';
import 'package:amplify_auth_cognito_test/common/mock_config.dart';
import 'package:amplify_auth_cognito_test/common/mock_secure_storage.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:test/test.dart';

void main() {
  group('AuthPluginCredentialsProvider', () {
    late AuthPluginCredentialsProviderImpl provider;
    late CognitoAuthStateMachine stateMachine;

    setUp(() async {
      stateMachine = CognitoAuthStateMachine()
        ..addBuilder<SecureStorageInterface>((_) => MockSecureStorage())
        ..dispatch(ConfigurationEvent.configure(mockConfig)).ignore();
      provider = AuthPluginCredentialsProviderImpl(stateMachine);

      await stateMachine.stream.firstWhere((state) => state is Configured);

      stateMachine.addInstance<CognitoIdentityClient>(
        MockCognitoIdentityClient(
          getCredentialsForIdentity: () async =>
              GetCredentialsForIdentityResponse(
            credentials: Credentials(
              accessKeyId: accessKeyId,
              secretKey: secretAccessKey,
              sessionToken: sessionToken,
              expiration: expiration,
            ),
            identityId: identityId,
          ),
          getId: () async => GetIdResponse(identityId: identityId),
        ),
      );
    });

    test('handles single request', () async {
      expect(provider.retrieve(), completion(isA<AWSCredentials>()));
    });

    test('handles concurrent requests', () async {
      final allCreds = await Future.wait<AWSCredentials>(
        [
          for (var i = 0; i < 10; i++) provider.retrieve(),
        ],
        eagerError: false,
      );

      final expectedCreds = AWSCredentials(
        accessKeyId,
        secretAccessKey,
        sessionToken,
        expiration,
      );
      for (final creds in allCreds) {
        expect(creds, expectedCreds);
      }
    });

    test('fails when fetching from within state machine', () async {
      expect(
        runZoned(
          () => provider.retrieve(),
          zoneValues: {zInFetch: true},
        ),
        throwsA(isA<Exception>()),
      );
    });
  });
}
