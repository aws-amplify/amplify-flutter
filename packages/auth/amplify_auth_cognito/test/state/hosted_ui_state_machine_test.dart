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

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage/amplify_secure_storage.dart';
import 'package:http/http.dart' as http;
import 'package:stream_transform/stream_transform.dart';
import 'package:test/test.dart';

import '../common/mock_config.dart';
import '../common/mock_dispatcher.dart';
import '../common/mock_oauth_server.dart';
import '../common/mock_secure_storage.dart';

late Completer<String> _launchUrl;

class MockHostedUiPlatform extends HostedUiPlatform {
  MockHostedUiPlatform(super.dependencyManager) : super.protected();

  @override
  Future<void> signIn({
    required CognitoSignInWithWebUIOptions options,
    AuthProvider? provider,
  }) async {
    final signInUrl = getSignInUri(provider: provider).toString();
    _launchUrl.complete(signInUrl);
  }

  @override
  Future<void> signOut() async {}
}

class FailingHostedUiPlatform extends HostedUiPlatform {
  FailingHostedUiPlatform(super.dependencyManager) : super.protected();

  @override
  Future<void> signIn({
    required CognitoSignInWithWebUIOptions options,
    AuthProvider? provider,
  }) async {
    throw Exception();
  }

  @override
  Future<void> signOut() {
    throw Exception();
  }
}

void main() {
  const keys = HostedUiKeys(hostedUiConfig);

  group('HostedUiStateMachine', () {
    late MockOAuthServer server;
    late CognitoAuthStateMachine stateMachine;
    late SecureStorageInterface secureStorage;

    setUp(() async {
      _launchUrl = Completer();

      server = MockOAuthServer();
      secureStorage = MockSecureStorage();
      stateMachine = CognitoAuthStateMachine()
        ..addInstance<http.Client>(server.httpClient)
        ..addInstance(secureStorage)
        ..addBuilder(MockHostedUiPlatform.new, HostedUiPlatform.token);
    });

    test('getAuthorizationUrl', () async {
      stateMachine
        ..addInstance<Dispatcher>(const DispatchListener())
        ..addInstance<CognitoOAuthConfig>(hostedUiConfig);

      final platform = stateMachine.create(HostedUiPlatform.token);
      final authorizationUri = platform.getSignInUri();

      expect(authorizationUri.pathSegments.last, 'authorize');

      expect(authorizationUri.queryParameters['state'], isNotNull);
      expect(authorizationUri.queryParameters['state'], isNotEmpty);

      expect(authorizationUri.queryParameters['redirect_uri'], isNotNull);
      expect(authorizationUri.queryParameters['redirect_uri'], isNotEmpty);

      expect(authorizationUri.queryParameters['scope'], isNotNull);
      expect(authorizationUri.queryParameters['scope'], scopes.join(' '));

      expect(authorizationUri.queryParameters['response_type'], 'code');
      expect(authorizationUri.queryParameters['client_id'], testAppClientId);

      expect(authorizationUri.queryParameters['code_challenge'], isNotNull);
      expect(authorizationUri.queryParameters['code_challenge'], isNotEmpty);

      expect(
        authorizationUri.queryParameters['code_challenge_method'],
        'S256',
      );
    });

    group('onFoundState', () {
      test('nothing in storage', () {
        stateMachine.dispatch(const AuthEvent.configure(mockConfig));

        final sm = stateMachine.getOrCreate(HostedUiStateMachine.type);
        expect(
          sm.stream,
          emitsThrough(isA<HostedUiSignedOut>()),
        );
      });

      test('clears old state', () async {
        const state = 'state';
        const codeVerifier = 'codeVerifier';
        secureStorage
          ..write(key: keys[HostedUiKey.state], value: state)
          ..write(
            key: keys[HostedUiKey.codeVerifier],
            value: codeVerifier,
          );

        stateMachine.dispatch(const AuthEvent.configure(mockConfig));

        final sm = stateMachine.getOrCreate(HostedUiStateMachine.type);
        await expectLater(
          sm.stream,
          emitsInOrder(<Matcher>[
            isA<HostedUiConfiguring>(),
            isA<HostedUiSignedOut>(),
          ]),
        );

        expect(secureStorage.read(key: keys[HostedUiKey.state]), isNull);
        expect(secureStorage.read(key: keys[HostedUiKey.codeVerifier]), isNull);
      });
    });

    group('onConfigure', () {
      test('logged in', () async {
        seedStorage(secureStorage, hostedUiKeys: keys);
        stateMachine.dispatch(const AuthEvent.configure(mockConfig));

        final sm = stateMachine.getOrCreate(HostedUiStateMachine.type);
        await expectLater(
          sm.stream,
          emitsInOrder(<Matcher>[
            isA<HostedUiConfiguring>(),
            isA<HostedUiSignedIn>(),
          ]),
        );
      });
    });

    group('onSignIn', () {
      test('no provider', () async {
        stateMachine.dispatch(const AuthEvent.configure(mockConfig));

        final sm = stateMachine.getOrCreate(HostedUiStateMachine.type);
        await expectLater(
          sm.stream,
          emitsInOrder(<Matcher>[
            isA<HostedUiConfiguring>(),
            isA<HostedUiSignedOut>(),
          ]),
        );

        stateMachine.dispatch(const HostedUiEvent.signIn());
        expect(_launchUrl.future, completes);
      });

      test('w/ provider', () async {
        stateMachine.dispatch(const AuthEvent.configure(mockConfig));

        final sm = stateMachine.getOrCreate(HostedUiStateMachine.type);
        await expectLater(
          sm.stream,
          emitsInOrder(<Matcher>[
            isA<HostedUiConfiguring>(),
            isA<HostedUiSignedOut>(),
          ]),
        );

        stateMachine.dispatch(
          const HostedUiEvent.signIn(
            provider: AuthProvider.amazon,
          ),
        );
        expect(_launchUrl.future, completes);
      });

      test('fails', () async {
        stateMachine
          ..addBuilder(
            FailingHostedUiPlatform.new,
            HostedUiPlatform.token,
          )
          ..dispatch(const AuthEvent.configure(mockConfig));

        final sm = stateMachine.getOrCreate(HostedUiStateMachine.type);
        await expectLater(
          sm.stream,
          emitsInOrder(<Matcher>[
            isA<HostedUiConfiguring>(),
            isA<HostedUiSignedOut>(),
          ]),
        );

        stateMachine.dispatch(
          const HostedUiEvent.signIn(
            provider: AuthProvider.amazon,
          ),
        );
        expect(
          sm.stream,
          emitsInOrder(<Matcher>[
            isA<HostedUiSigningIn>(),
            isA<HostedUiFailure>(),
          ]),
        );
      });
    });

    group('onExchange', () {
      test('no provider', () async {
        stateMachine.dispatch(const AuthEvent.configure(mockConfig));

        final sm = stateMachine.getOrCreate(HostedUiStateMachine.type);
        await expectLater(
          sm.stream,
          emitsInOrder(<Matcher>[
            isA<HostedUiConfiguring>(),
            isA<HostedUiSignedOut>(),
          ]),
        );

        stateMachine.dispatch(const HostedUiEvent.signIn());
        final params =
            await server.authorize(Uri.parse(await _launchUrl.future));
        stateMachine.dispatch(HostedUiEvent.exchange(params));

        expect(
          sm.stream,
          emitsInOrder(<Matcher>[
            isA<HostedUiSigningIn>(),
            isA<HostedUiSignedIn>(),
          ]),
        );
        expect(
          stateMachine.stream.whereType<CredentialStoreState>(),
          emitsThrough(
            isA<CredentialStoreSuccess>()
                .having((state) => state.userPoolTokens, 'tokens', isNotNull)
                .having(
                  (state) => state.userPoolTokens!.signInMethod,
                  'signInMethod',
                  CognitoSignInMethod.hostedUi,
                ),
          ),
        );
      });

      test('fails with remote error', () async {
        stateMachine.dispatch(const AuthEvent.configure(mockConfig));

        final sm = stateMachine.getOrCreate(HostedUiStateMachine.type);
        await expectLater(
          sm.stream,
          emitsInOrder(<Matcher>[
            isA<HostedUiConfiguring>(),
            isA<HostedUiSignedOut>(),
          ]),
        );

        stateMachine.dispatch(const HostedUiEvent.signIn());
        await server.authorize(Uri.parse(await _launchUrl.future));

        final state = await secureStorage.read(key: keys[HostedUiKey.state]);
        stateMachine.dispatch(
          HostedUiEvent.exchange(
            OAuthParameters(
              (b) => b
                ..error = OAuthErrorCode.invalidRequest
                ..state = state,
            ),
          ),
        );

        expect(
          sm.stream,
          emitsInOrder(<Matcher>[
            isA<HostedUiSigningIn>(),
            isA<HostedUiFailure>(),
          ]),
        );
      });

      test('fails with bad code', () async {
        stateMachine.dispatch(const AuthEvent.configure(mockConfig));

        final sm = stateMachine.getOrCreate(HostedUiStateMachine.type);
        await expectLater(
          sm.stream,
          emitsInOrder(<Matcher>[
            isA<HostedUiConfiguring>(),
            isA<HostedUiSignedOut>(),
          ]),
        );

        stateMachine.dispatch(const HostedUiEvent.signIn());
        await server.authorize(Uri.parse(await _launchUrl.future));
        stateMachine.dispatch(
          HostedUiEvent.exchange(
            OAuthParameters(
              (b) => b
                ..code = 'badCode'
                ..state = 'badState',
            ),
          ),
        );

        expect(
          sm.stream,
          emitsInOrder(<Matcher>[
            isA<HostedUiSigningIn>(),
            isA<HostedUiFailure>(),
          ]),
        );
      });
    });

    group('onSignOut', () {
      test('succeeds', () async {
        seedStorage(secureStorage, hostedUiKeys: keys);
        stateMachine.dispatch(const AuthEvent.configure(mockConfig));
        await expectLater(
          stateMachine.stream.whereType<HostedUiState>(),
          emitsInOrder(<Matcher>[
            isA<HostedUiConfiguring>(),
            isA<HostedUiSignedIn>(),
          ]),
        );

        stateMachine.dispatch(const HostedUiEvent.signOut());
        expect(
          stateMachine.stream.whereType<HostedUiState>(),
          emitsInOrder(<Matcher>[
            isA<HostedUiSigningOut>(),
            isA<HostedUiSignedOut>(),
          ]),
        );
      });

      test('multiple events are ignored', () async {
        seedStorage(secureStorage, hostedUiKeys: keys);
        stateMachine.dispatch(const AuthEvent.configure(mockConfig));
        await expectLater(
          stateMachine.stream.whereType<HostedUiState>(),
          emitsInOrder(<Matcher>[
            isA<HostedUiConfiguring>(),
            isA<HostedUiSignedIn>(),
          ]),
        );

        stateMachine
          ..dispatch(const HostedUiEvent.signOut())
          ..dispatch(const HostedUiEvent.signOut());
        expect(
          stateMachine.stream.whereType<HostedUiState>(),
          emitsInOrder(<Matcher>[
            isA<HostedUiSigningOut>(),
            isA<HostedUiSignedOut>(),
          ]),
        );
      });

      test('fails', () async {
        seedStorage(secureStorage, hostedUiKeys: keys);
        stateMachine
          ..addBuilder(
            FailingHostedUiPlatform.new,
            HostedUiPlatform.token,
          )
          ..dispatch(const AuthEvent.configure(mockConfig));
        await expectLater(
          stateMachine.stream.whereType<HostedUiState>(),
          emitsInOrder(<Matcher>[
            isA<HostedUiConfiguring>(),
            isA<HostedUiSignedIn>(),
          ]),
        );

        stateMachine.dispatch(const HostedUiEvent.signOut());
        expect(
          stateMachine.stream.whereType<HostedUiState>(),
          emitsInOrder(<Matcher>[
            isA<HostedUiSigningOut>(),
            isA<HostedUiFailure>(),
          ]),
        );
      });
    });
  });
}

// ignore_for_file: close_sinks
