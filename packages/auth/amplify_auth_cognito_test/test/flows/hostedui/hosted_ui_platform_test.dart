// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
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
        ..addInstance<Dispatcher<AuthEvent, AuthState>>(const MockDispatcher());

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
        final parameters = await server.authorize(
          platform.getSignInUri(
            redirectUri: Uri.parse(redirectUri),
          ),
        );

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
        final parameters = await server.authorize(
          platform.getSignInUri(
            redirectUri: Uri.parse(redirectUri),
          ),
        );

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
        final parameters = await server.authorize(
          platform.getSignInUri(
            redirectUri: Uri.parse(redirectUri),
          ),
        );

        expect(
          platform.exchange(parameters),
          throwsInvalidStateException,
        );
      });

      test('succeeds with nonce', () async {
        final parameters = await server.authorize(
          platform.getSignInUri(
            redirectUri: Uri.parse(redirectUri),
          ),
        );

        expect(
          platform.exchange(parameters),
          completes,
        );
      });
    });
  });
}
