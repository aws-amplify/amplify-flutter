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
import 'package:test/fake.dart';
import 'package:test/test.dart';

final throwsInvalidStateException = throwsA(isA<InvalidStateException>());

void main() {
  late MockOAuthServer server;
  late SecureStorageInterface secureStorage;
  late HostedUiPlatform platform;
  late DependencyManager dependencyManager;
  final keys = HostedUiKeys(mockConfig.auth!.userPoolClientId!);

  AWSLogger().logLevel = LogLevel.verbose;

  group('HostedUiPlatform', () {
    setUp(() {
      server = MockOAuthServer();
      secureStorage = MockSecureStorage();
      dependencyManager = DependencyManager()
        ..addInstance(mockConfig.auth!)
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

      setUp(() {
        secureStorage
          ..write(key: keys[HostedUiKey.state], value: state)
          ..write(key: keys[HostedUiKey.codeVerifier], value: codeVerifier);
      });

      tearDown(() {
        for (final key in keys) {
          secureStorage.delete(key: key);
        }
      });

      test('missing state throws', () async {
        final parameters = await server.authorize(
          await platform.getSignInUri(
            redirectUri: Uri.parse(
              mockConfig.auth!.oauth!.redirectSignInUri.first,
            ),
          ),
        );

        expect(
          () => platform.exchange(
            OAuthParameters((b) => b..code = parameters.code),
          ),
          throwsInvalidStateException,
        );
      });

      test('mismatched state throws', () async {
        final parameters = await server.authorize(
          await platform.getSignInUri(
            redirectUri: Uri.parse(
              mockConfig.auth!.oauth!.redirectSignInUri.first,
            ),
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

      test('succeeds', () async {
        final parameters = await server.authorize(
          await platform.getSignInUri(
            redirectUri: Uri.parse(
              mockConfig.auth!.oauth!.redirectSignInUri.first,
            ),
          ),
        );

        expect(platform.exchange(parameters), completes);
      });

      // https://github.com/aws-amplify/amplify-flutter/issues/7077
      test('user_cancelled_authorize throws UserCancelledException', () {
        expect(
          platform.exchange(
            OAuthParameters(
              (b) => b
                ..state = state
                ..error = OAuthErrorCode.userCancelledAuthorize
                ..errorDescription =
                    'Error response from Identity Provider; '
                    'error=user_cancelled_authorize',
            ),
          ),
          throwsA(isA<UserCancelledException>()),
        );
      });

      test('unrecognized error codes throw UnknownException', () {
        expect(
          platform.exchange(
            OAuthParameters(
              (b) => b
                ..state = state
                ..error = OAuthErrorCode.unknown
                ..errorDescription = 'some_provider_specific_error',
            ),
          ),
          throwsA(
            isA<UnknownException>().having(
              (e) => e.message,
              'message',
              contains('some_provider_specific_error'),
            ),
          ),
        );
      });
    });

    group('signIn', () {
      late AmplifyAuthCognitoDart plugin;

      setUp(() async {
        dependencyManager.addInstance<HostedUiPlatform>(
          CancelingHostedUiPlatform(cancelSignIn: expectAsync0(() async {})),
        );
        plugin = AmplifyAuthCognitoDart()
          ..stateMachine = CognitoAuthStateMachine(
            dependencyManager: dependencyManager,
          );
        await plugin.stateMachine.acceptAndComplete(
          ConfigurationEvent.configure(mockConfig),
        );
      });

      tearDown(() => plugin.close());

      test('can cancel flow', () async {
        final expectation = expectLater(
          plugin.signInWithWebUI(provider: AuthProvider.cognito),
          throwsA(isA<UserCancelledException>()),
        );
        final hostedUiMachine = plugin.stateMachine.expect(
          HostedUiStateMachine.type,
        );
        expect(
          hostedUiMachine.stream,
          emitsInOrder([
            isA<HostedUiSigningIn>(),
            isA<HostedUiFailure>().having(
              (s) => s.exception,
              'exception',
              isA<UserCancelledException>(),
            ),
            emitsDone,
          ]),
        );
        await expectation;
        // Ensure queue is flushed and done event is emitted after
        // signInWithWebUI completes.
        await hostedUiMachine.close();
      });
    });

    // The identity provider can redirect back with an error code instead of an
    // authorization code, e.g. when the user cancels at the provider's consent
    // screen. The error must be delivered to the caller of `signInWithWebUI`
    // and must not be re-raised as an uncaught async error.
    //
    // https://github.com/aws-amplify/amplify-flutter/issues/7077
    group('cancelled at the identity provider', () {
      const cancelUri =
          'myapp://callback'
          '?error_description=Error+response+from+Identity+Provider;'
          '+error=user_cancelled_authorize'
          '&state=STATE'
          '&error=user_cancelled_authorize';

      late AmplifyAuthCognitoDart plugin;

      setUp(() async {
        final secureStorage = MockSecureStorage();
        SecureStorageInterface storageFactory(scope) => secureStorage;
        final stateMachine = CognitoAuthStateMachine()
          ..addInstance<SecureStorageInterface>(secureStorage)
          ..addInstance<http.Client>(server.httpClient);
        stateMachine.addBuilder<HostedUiPlatform>(
          createHostedUiFactory(
            // Mimics the native platform returning the error parameters of
            // the redirect URI.
            signIn: (platform, options, provider) async {
              stateMachine
                  .dispatch(
                    HostedUiEvent.exchange(
                      OAuthParameters.fromUri(Uri.parse(cancelUri))!,
                    ),
                  )
                  .ignore();
            },
            signOut: (platform, options) async {},
          ),
        );
        plugin = AmplifyAuthCognitoDart(secureStorageFactory: storageFactory)
          ..stateMachine = stateMachine;
        // `configure` installs the plugin's listener on the state machine,
        // which is where unresolved errors would otherwise become uncaught.
        await plugin.configure(
          config: mockConfig,
          authProviderRepo: AmplifyAuthProviderRepository(),
        );
      });

      tearDown(() => plugin.close());

      test('throws UserCancelledException without an uncaught async '
          'error', () async {
        final uncaughtErrors = <Object>[];
        final testCompleted = Completer<void>();

        unawaited(
          runZonedGuarded(
            () async {
              await expectLater(
                plugin.signInWithWebUI(provider: AuthProvider.apple),
                throwsA(isA<UserCancelledException>()),
              );
              // Allow any uncaught error to propagate to the zone handler.
              await Future<void>.delayed(Duration.zero);
              testCompleted.complete();
            },
            (error, stackTrace) {
              uncaughtErrors.add(error);
              if (!testCompleted.isCompleted) testCompleted.complete();
            },
          ),
        );

        await testCompleted.future;
        expect(uncaughtErrors, isEmpty);
      });
    });
  });
}

final class CancelingHostedUiPlatform extends Fake implements HostedUiPlatform {
  CancelingHostedUiPlatform({required Future<void> Function() cancelSignIn})
    : _cancelSignIn = cancelSignIn;

  final Future<void> Function() _cancelSignIn;

  @override
  Future<void> signIn({
    required CognitoSignInWithWebUIPluginOptions options,
    AuthProvider? provider,
  }) async {
    throw const UserCancelledException('Cancelled');
  }

  @override
  Future<void> cancelSignIn() => _cancelSignIn();

  @override
  void close() {}
}
