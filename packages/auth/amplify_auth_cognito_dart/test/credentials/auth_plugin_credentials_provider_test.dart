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

import 'dart:async';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/auth_plugin_credentials_provider.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:smithy/smithy.dart';
import 'package:test/fake.dart';
import 'package:test/test.dart';

import '../common/mock_config.dart';
import '../common/mock_secure_storage.dart';

class MockCognitoIdentity extends Fake implements CognitoIdentityClient {
  @override
  Future<GetCredentialsForIdentityResponse> getCredentialsForIdentity(
    GetCredentialsForIdentityInput input, {
    HttpClient? client,
  }) async {
    return GetCredentialsForIdentityResponse(
      credentials: Credentials(
        accessKeyId: accessKeyId,
        secretKey: secretAccessKey,
        sessionToken: sessionToken,
        expiration: expiration,
      ),
      identityId: identityId,
    );
  }

  @override
  Future<GetIdResponse> getId(
    GetIdInput input, {
    HttpClient? client,
  }) async {
    return GetIdResponse(identityId: identityId);
  }
}

void main() {
  group('AuthPluginCredentialsProvider', () {
    late AuthPluginCredentialsProviderImpl provider;
    late CognitoAuthStateMachine stateMachine;

    // Performs the initial fetch so that credentials cache is hydrated.
    Future<void> fetchAuthSession() async {
      await stateMachine.dispatch(
        const FetchAuthSessionEvent.fetch(
          CognitoSessionOptions(getAWSCredentials: true),
        ),
      );
      await Future<void>.delayed(Duration.zero);
    }

    setUp(() async {
      stateMachine = CognitoAuthStateMachine()
        ..addBuilder<SecureStorageInterface>(MockSecureStorage.new)
        ..dispatch(const AuthEvent.configure(mockConfig));
      provider = AuthPluginCredentialsProviderImpl(stateMachine);

      await stateMachine.stream.firstWhere((state) => state is AuthConfigured);

      stateMachine.addInstance<CognitoIdentityClient>(MockCognitoIdentity());
    });

    test('fails with no cached creds', () async {
      expect(provider.retrieve(), throwsA(isA<InvalidStateException>()));
    });

    test('handles single request', () async {
      await fetchAuthSession();
      expect(provider.retrieve(), completion(isA<AWSCredentials>()));
    });

    test('handles concurrent requests', () async {
      await fetchAuthSession();
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
      await fetchAuthSession();
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
