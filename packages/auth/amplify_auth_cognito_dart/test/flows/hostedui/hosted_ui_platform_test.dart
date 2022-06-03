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

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:http/http.dart' as http;
import 'package:test/test.dart';

import '../../common/mock_config.dart';
import '../../common/mock_dispatcher.dart';
import '../../common/mock_oauth_server.dart';
import '../../common/mock_secure_storage.dart';

final throwsInvalidStateException = throwsA(isA<InvalidStateException>());

void main() {
  late MockOAuthServer server;
  late SecureStorageInterface secureStorage;
  late HostedUiPlatform platform;
  late DependencyManager dependencyManager;
  const keys = HostedUiKeys(hostedUiConfig);

  group('HostedUiPlatform', () {
    setUp(() {
      server = MockOAuthServer();
      secureStorage = MockSecureStorage();
      dependencyManager = DependencyManager()
        ..addInstance(hostedUiConfig)
        ..addInstance<SecureStorageInterface>(secureStorage)
        ..addInstance<http.Client>(server.httpClient)
        ..addInstance<Dispatcher>(const DispatchListener());

      platform = HostedUiPlatform(dependencyManager);
    });

    tearDown(() {
      server.reset();
    });

    group('exchange', () {
      const state = 'state';
      const codeVerifier = 'codeVerifier';
      const nonce = 'nonce';

      setUp(() {
        secureStorage
          ..write(key: keys[HostedUiKey.state], value: state)
          ..write(
            key: keys[HostedUiKey.codeVerifier],
            value: codeVerifier,
          )
          ..write(key: keys[HostedUiKey.nonce], value: nonce);
      });

      tearDown(() {
        for (final key in keys) {
          secureStorage.delete(key: key);
        }
      });

      test('missing state throws', () async {
        final parameters = await server.authorize(platform.getSignInUri());

        expect(
          () => platform.exchange(
            OAuthParameters(
              (b) => b..code = parameters.code,
            ),
          ),
          throwsInvalidStateException,
        );
      });

      test('mismatched state throws', () async {
        final parameters = await server.authorize(platform.getSignInUri());

        expect(
          platform.exchange(
            OAuthParameters(
              (b) => b
                ..code = parameters.code
                ..state = '12345',
            ),
          ),
          throwsInvalidStateException,
        );
      });

      test('missing nonce throws', () async {
        server = MockOAuthServer(
          tokenHandler: MockOAuthServer.createTokenHandler(
            includeNonce: false,
          ),
        );
        dependencyManager.addInstance<http.Client>(server.httpClient);
        platform = HostedUiPlatform(dependencyManager);
        final parameters = await server.authorize(platform.getSignInUri());

        expect(
          platform.exchange(parameters),
          throwsInvalidStateException,
        );
      });

      test('succeeds with nonce', () async {
        final parameters = await server.authorize(platform.getSignInUri());

        expect(
          platform.exchange(parameters),
          completes,
        );
      });
    });
  });
}
