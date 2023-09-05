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
  const keys = HostedUiKeys(hostedUiConfig);

  AWSLogger().logLevel = LogLevel.verbose;

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

      setUp(() {
        secureStorage
          ..write(key: keys[HostedUiKey.state], value: state)
          ..write(
            key: keys[HostedUiKey.codeVerifier],
            value: codeVerifier,
          );
      });

      tearDown(() {
        for (final key in keys) {
          secureStorage.delete(key: key);
        }
      });

      test('missing state throws', () async {
        final parameters = await server.authorize(
          await platform.getSignInUri(
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
          await platform.getSignInUri(
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

      test('succeeds', () async {
        final parameters = await server.authorize(
          await platform.getSignInUri(
            redirectUri: Uri.parse(redirectUri),
          ),
        );

        expect(
          platform.exchange(parameters),
          completes,
        );
      });
    });

    group('signIn', () {
      late AmplifyAuthCognitoDart plugin;

      setUp(() async {
        dependencyManager.addInstance<HostedUiPlatform>(
          CancelingHostedUiPlatform(
            cancelSignIn: expectAsync0(() async {}),
          ),
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
          plugin.signInWithWebUI(
            provider: AuthProvider.cognito,
          ),
          throwsA(isA<UserCancelledException>()),
        );
        final hostedUiMachine =
            plugin.stateMachine.expect(HostedUiStateMachine.type);
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
  });
}

final class CancelingHostedUiPlatform extends Fake implements HostedUiPlatform {
  CancelingHostedUiPlatform({
    required Future<void> Function() cancelSignIn,
  }) : _cancelSignIn = cancelSignIn;

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
