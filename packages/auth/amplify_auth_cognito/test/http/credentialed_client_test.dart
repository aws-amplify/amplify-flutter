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

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito/src/credentials/credentials.dart';
import 'package:amplify_auth_cognito/src/http/credentialed_client.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_secure_storage/amplify_secure_storage.dart';
import 'package:http/http.dart';
import 'package:test/test.dart';

import '../common/jwt.dart';
import '../common/mock_config.dart';
import '../common/mock_oauth_server.dart';
import '../common/mock_secure_storage.dart';

class MockAmplifyAuthCognitoDart extends AmplifyAuthCognito {
  MockAmplifyAuthCognitoDart(SecureStorageInterface secureStorage)
      : super(credentialStorage: secureStorage);

  @override
  Future<SignOutResult> signOut({SignOutRequest? request}) async {
    return const SignOutResult();
  }
}

void main() {
  const keys = HostedUiKeys(hostedUiConfig);

  group('CredentialedClient', () {
    late MockOAuthServer server;
    late SecureStorageInterface secureStorage;
    late AmplifyAuthCognito plugin;

    setUp(() async {
      server = MockOAuthServer();
      secureStorage = MockSecureStorage();
      plugin = MockAmplifyAuthCognitoDart(secureStorage);
      await Amplify.Auth.addPlugin(plugin);
    });

    tearDown(() async {
      await Amplify.reset();
    });

    test('refreshes expired tokens', () async {});

    test('throws on refresh failure', () async {
      final accessToken = createJwt(expiration: Duration.zero);
      final idToken = createJwt(expiration: Duration.zero);
      secureStorage
        ..write(
          key: keys[HostedUiKey.accessToken],
          value: accessToken.encode(),
        )
        ..write(
          key: keys[HostedUiKey.refreshToken],
          value: refreshToken,
        )
        ..write(
          key: keys[HostedUiKey.idToken],
          value: idToken.encode(),
        );

      final client = server.copyWith(
        tokenHandler: (_) async {
          return Response(
            '''
              {
                "error": "invalid_grant",
                "error_description": "The given grant is invalid"
              }
              ''',
            400,
            headers: {'content-type': 'application/json'},
          );
        },
      ).httpClient;

      final credentials = Credentials(
        hostedUiConfig,
        accessToken,
        refreshToken,
        idToken,
        secureStorage: secureStorage,
        httpClient: client,
      );

      final credentialedClient = CredentialedClient(
        credentials: credentials,
        clientId: testAppClientId,
        httpClient: client,
      );

      await expectLater(
        credentialedClient.get(
          Uri.parse('https://restricted.example.com'),
        ),
        throwsA(isA<NotAuthorizedException>()),
      );
      // TODO(dnys1): Verify with state machine
    });
  });
}
