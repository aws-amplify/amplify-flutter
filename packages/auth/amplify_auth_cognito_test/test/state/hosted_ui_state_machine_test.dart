// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/hosted_ui_platform.dart';
import 'package:amplify_auth_cognito_dart/src/model/hosted_ui/oauth_parameters.dart';
import 'package:amplify_auth_cognito_dart/src/state/cognito_state_machine.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_auth_cognito_test/common/mock_config.dart';
import 'package:amplify_auth_cognito_test/common/mock_dispatcher.dart';
import 'package:amplify_auth_cognito_test/common/mock_hosted_ui.dart';
import 'package:amplify_auth_cognito_test/common/mock_oauth_server.dart';
import 'package:amplify_auth_cognito_test/common/mock_secure_storage.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:http/http.dart' as http;
import 'package:stream_transform/stream_transform.dart';
import 'package:test/test.dart';

late Completer<Uri> _launchUrl;

class MockHostedUiPlatform extends HostedUiPlatform {
  MockHostedUiPlatform(super.dependencyManager) : super.protected();

  @override
  Future<void> signIn({
    required CognitoSignInWithWebUIPluginOptions options,
    AuthProvider? provider,
  }) async {
    final signInUrl = await getSignInUri(provider: provider);
    _launchUrl.complete(signInUrl);
  }

  @override
  Future<void> signOut({
    required CognitoSignInWithWebUIPluginOptions options,
  }) async {}

  @override
  Uri get signInRedirectUri => config.signInRedirectUris.first;

  @override
  Uri get signOutRedirectUri => config.signOutRedirectUris.first;
}

class FailingHostedUiPlatform extends HostedUiPlatform {
  FailingHostedUiPlatform(super.dependencyManager) : super.protected();

  @override
  Future<void> signIn({
    required CognitoSignInWithWebUIPluginOptions options,
    AuthProvider? provider,
  }) async {
    throw Exception();
  }

  @override
  Future<void> signOut({
    required CognitoSignInWithWebUIPluginOptions options,
  }) {
    throw Exception();
  }

  @override
  Uri get signInRedirectUri => config.signInRedirectUris.first;

  @override
  Uri get signOutRedirectUri => config.signOutRedirectUris.first;
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
        ..addBuilder<HostedUiPlatform>(MockHostedUiPlatform.new);
    });

    test('getAuthorizationUrl', () async {
      stateMachine
        ..addInstance<Dispatcher<AuthEvent, AuthState>>(
          const MockDispatcher(),
        )
        ..addInstance<CognitoOAuthConfig>(hostedUiConfig);

      final platform = stateMachine.create<HostedUiPlatform>();
      final authorizationUri = await platform.getSignInUri();

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
        stateMachine
            .dispatch(
              ConfigurationEvent.configure(mockConfig),
            )
            .ignore();

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

        stateMachine
            .dispatch(ConfigurationEvent.configure(mockConfig))
            .ignore();

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
        stateMachine
            .dispatch(ConfigurationEvent.configure(mockConfig))
            .ignore();

        final sm = stateMachine.getOrCreate(HostedUiStateMachine.type);
        await expectLater(
          sm.stream,
          emitsInOrder(<Matcher>[
            isA<HostedUiConfiguring>(),
            isA<HostedUiSignedIn>().having(
              (state) => state.user.signInDetails,
              'signInDetails',
              isA<CognitoSignInDetailsHostedUi>(),
            ),
          ]),
        );
      });
    });

    group('onSignIn', () {
      test('no provider', () async {
        stateMachine
            .dispatch(ConfigurationEvent.configure(mockConfig))
            .ignore();

        final sm = stateMachine.getOrCreate(HostedUiStateMachine.type);
        await expectLater(
          sm.stream,
          emitsInOrder(<Matcher>[
            isA<HostedUiConfiguring>(),
            isA<HostedUiSignedOut>(),
          ]),
        );

        stateMachine.dispatch(const HostedUiEvent.signIn()).ignore();
        expect(_launchUrl.future, completes);
      });

      test('w/ provider', () async {
        stateMachine
            .dispatch(ConfigurationEvent.configure(mockConfig))
            .ignore();

        final sm = stateMachine.getOrCreate(HostedUiStateMachine.type);
        await expectLater(
          sm.stream,
          emitsInOrder(<Matcher>[
            isA<HostedUiConfiguring>(),
            isA<HostedUiSignedOut>(),
          ]),
        );

        stateMachine
            .dispatch(
              const HostedUiEvent.signIn(
                provider: AuthProvider.amazon,
              ),
            )
            .ignore();
        expect(_launchUrl.future, completes);
      });

      test('fails', () async {
        stateMachine
          ..addBuilder<HostedUiPlatform>(FailingHostedUiPlatform.new)
          ..dispatch(ConfigurationEvent.configure(mockConfig)).ignore();

        final sm = stateMachine.getOrCreate(HostedUiStateMachine.type);
        await expectLater(
          sm.stream,
          emitsInOrder(<Matcher>[
            isA<HostedUiConfiguring>(),
            isA<HostedUiSignedOut>(),
          ]),
        );

        stateMachine
            .dispatch(
              const HostedUiEvent.signIn(
                provider: AuthProvider.amazon,
              ),
            )
            .ignore();
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
        stateMachine
            .dispatch(ConfigurationEvent.configure(mockConfig))
            .ignore();

        final sm = stateMachine.getOrCreate(HostedUiStateMachine.type);
        await expectLater(
          sm.stream,
          emitsInOrder(<Matcher>[
            isA<HostedUiConfiguring>(),
            isA<HostedUiSignedOut>(),
          ]),
        );

        stateMachine.dispatch(const HostedUiEvent.signIn()).ignore();
        final params = await server.authorize(await _launchUrl.future);
        stateMachine.dispatch(HostedUiEvent.exchange(params)).ignore();

        expect(
          sm.stream,
          emitsInOrder(<Matcher>[
            isA<HostedUiSigningIn>(),
            isA<HostedUiSignedIn>().having(
              (state) => state.user.signInDetails,
              'signInDetails',
              isA<CognitoSignInDetailsHostedUi>(),
            ),
          ]),
        );
        expect(
          stateMachine.stream.whereType<CredentialStoreState>(),
          emitsThrough(
            isA<CredentialStoreSuccess>()
                .having(
                  (state) => state.data.userPoolTokens,
                  'tokens',
                  isNotNull,
                )
                .having(
                  (state) => state.data.userPoolTokens!.signInMethod,
                  'signInMethod',
                  CognitoSignInMethod.hostedUi,
                ),
          ),
        );
      });

      test('w/ provider', () async {
        stateMachine
            .dispatch(ConfigurationEvent.configure(mockConfig))
            .ignore();

        final sm = stateMachine.getOrCreate(HostedUiStateMachine.type);
        await expectLater(
          sm.stream,
          emitsInOrder(<Matcher>[
            isA<HostedUiConfiguring>(),
            isA<HostedUiSignedOut>(),
          ]),
        );

        const provider = AuthProvider.oidc('providerName', 'issuer');
        stateMachine
            .dispatch(
              const HostedUiEvent.signIn(provider: provider),
            )
            .ignore();
        final params = await server.authorize(await _launchUrl.future);
        stateMachine.dispatch(HostedUiEvent.exchange(params)).ignore();

        expect(
          sm.stream,
          emitsInOrder(<Matcher>[
            isA<HostedUiSigningIn>(),
            isA<HostedUiSignedIn>().having(
              (state) => state.user.signInDetails,
              'signInDetails',
              isA<CognitoSignInDetailsHostedUi>().having(
                (details) => details.provider,
                'provider',
                equals(provider),
              ),
            ),
          ]),
        );
        expect(
          stateMachine.stream.whereType<CredentialStoreState>(),
          emitsThrough(
            isA<CredentialStoreSuccess>()
                .having(
                  (state) => state.data.userPoolTokens,
                  'tokens',
                  isNotNull,
                )
                .having(
                  (state) => state.data.userPoolTokens!.signInMethod,
                  'signInMethod',
                  CognitoSignInMethod.hostedUi,
                ),
          ),
        );
      });

      test('fails with remote error', () async {
        stateMachine
            .dispatch(ConfigurationEvent.configure(mockConfig))
            .ignore();

        final sm = stateMachine.getOrCreate(HostedUiStateMachine.type);
        await expectLater(
          sm.stream,
          emitsInOrder(<Matcher>[
            isA<HostedUiConfiguring>(),
            isA<HostedUiSignedOut>(),
          ]),
        );

        stateMachine.dispatch(const HostedUiEvent.signIn()).ignore();
        await server.authorize(await _launchUrl.future);

        final state = await secureStorage.read(key: keys[HostedUiKey.state]);
        stateMachine
            .dispatch(
              HostedUiEvent.exchange(
                OAuthParameters(
                  (b) => b
                    ..error = OAuthErrorCode.invalidRequest
                    ..state = state,
                ),
              ),
            )
            .ignore();

        expect(
          sm.stream,
          emitsInOrder(<Matcher>[
            isA<HostedUiSigningIn>(),
            isA<HostedUiFailure>(),
          ]),
        );
      });

      test('fails with bad code', () async {
        stateMachine
            .dispatch(ConfigurationEvent.configure(mockConfig))
            .ignore();

        final sm = stateMachine.getOrCreate(HostedUiStateMachine.type);
        await expectLater(
          sm.stream,
          emitsInOrder(<Matcher>[
            isA<HostedUiConfiguring>(),
            isA<HostedUiSignedOut>(),
          ]),
        );

        stateMachine.dispatch(const HostedUiEvent.signIn()).ignore();
        await server.authorize(await _launchUrl.future);
        stateMachine
            .dispatch(
              HostedUiEvent.exchange(
                OAuthParameters(
                  (b) => b
                    ..code = 'badCode'
                    ..state = 'badState',
                ),
              ),
            )
            .ignore();

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
        stateMachine
            .dispatch(ConfigurationEvent.configure(mockConfig))
            .ignore();
        await expectLater(
          stateMachine.stream.whereType<HostedUiState>(),
          emitsInOrder(<Matcher>[
            isA<HostedUiConfiguring>(),
            isA<HostedUiSignedIn>(),
          ]),
        );

        stateMachine.dispatch(const HostedUiEvent.signOut()).ignore();
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
        stateMachine
            .dispatch(ConfigurationEvent.configure(mockConfig))
            .ignore();
        await expectLater(
          stateMachine.stream.whereType<HostedUiState>(),
          emitsInOrder(<Matcher>[
            isA<HostedUiConfiguring>(),
            isA<HostedUiSignedIn>(),
          ]),
        );

        stateMachine
          ..dispatch(const HostedUiEvent.signOut()).ignore()
          ..dispatch(const HostedUiEvent.signOut()).ignore();
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
          ..addBuilder<HostedUiPlatform>(FailingHostedUiPlatform.new)
          ..dispatch(ConfigurationEvent.configure(mockConfig)).ignore();
        await expectLater(
          stateMachine.stream.whereType<HostedUiState>(),
          emitsInOrder(<Matcher>[
            isA<HostedUiConfiguring>(),
            isA<HostedUiSignedIn>(),
          ]),
        );

        stateMachine.dispatch(const HostedUiEvent.signOut()).ignore();
        expect(
          stateMachine.stream.whereType<HostedUiState>(),
          emitsInOrder(<Matcher>[
            isA<HostedUiSigningOut>(),
            isA<HostedUiFailure>(),
          ]),
        );
      });

      test('preserves options', () async {
        stateMachine
          ..addBuilder<HostedUiPlatform>(
            createHostedUiFactory(
              signIn: (
                HostedUiPlatform platform,
                CognitoSignInWithWebUIPluginOptions options,
                AuthProvider? provider,
              ) async {
                final signInUrl =
                    await platform.getSignInUri(provider: provider);
                _launchUrl.complete(signInUrl);
              },
              signOut: expectAsync2((
                platform,
                options,
              ) async {
                expect(options.isPreferPrivateSession, isTrue);
              }),
            ),
          )
          ..dispatch(ConfigurationEvent.configure(mockConfig)).ignore();

        await expectLater(
          stateMachine.stream.whereType<HostedUiState>(),
          emitsInOrder(<Matcher>[
            isA<HostedUiConfiguring>(),
            isA<HostedUiSignedOut>(),
          ]),
        );

        stateMachine
            .dispatch(
              const HostedUiEvent.signIn(
                options: CognitoSignInWithWebUIPluginOptions(
                  isPreferPrivateSession: true,
                ),
              ),
            )
            .ignore();
        final params = await server.authorize(await _launchUrl.future);
        stateMachine.dispatch(HostedUiEvent.exchange(params)).ignore();

        await expectLater(
          stateMachine.stream.whereType<HostedUiState>(),
          emitsInOrder(<Matcher>[
            isA<HostedUiSigningIn>(),
            isA<HostedUiSignedIn>(),
          ]),
        );

        stateMachine.dispatch(const HostedUiEvent.signOut()).ignore();
      });
    });
  });
}
