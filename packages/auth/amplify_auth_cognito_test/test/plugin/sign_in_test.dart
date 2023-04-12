// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:amplify_auth_cognito_dart/src/state/cognito_state_machine.dart';
import 'package:amplify_auth_cognito_test/amplify_auth_cognito_test.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:async/async.dart';
import 'package:collection/collection.dart';
import 'package:test/test.dart';

void main() {
  late AmplifyAuthCognitoDart plugin;
  late CognitoAuthStateMachine stateMachine;
  late MockSecureStorage secureStorage;

  final testAuthRepo = AmplifyAuthProviderRepository();

  group('signIn', () {
    setUp(() {
      secureStorage = MockSecureStorage();
      plugin = AmplifyAuthCognitoDart(
        secureStorageFactory: (_) => secureStorage,
      );
      stateMachine = plugin.stateMachine;
    });

    tearDown(Amplify.reset);

    test('calling signIn while authenticated should fail', () async {
      await plugin.configure(
        config: mockConfig,
        authProviderRepo: testAuthRepo,
      );

      final mockIdp = MockCognitoIdentityProviderClient(
        initiateAuth: (_) async => InitiateAuthResponse(
          authenticationResult: AuthenticationResultType(
            accessToken: accessToken.raw,
            refreshToken: refreshToken,
            idToken: idToken.raw,
          ),
        ),
        globalSignOut: () async => GlobalSignOutResponse(),
        revokeToken: () async => RevokeTokenResponse(),
      );
      stateMachine.addInstance<CognitoIdentityProviderClient>(mockIdp);

      await expectLater(
        plugin.signIn(
          username: username,
          password: 'password',
        ),
        completion(
          isA<CognitoSignInResult>().having(
            (res) => res.isSignedIn,
            'isSignedIn',
            isTrue,
          ),
        ),
      );

      await expectLater(
        plugin.signIn(
          username: username,
          password: 'password',
        ),
        throwsA(isA<InvalidStateException>()),
        reason: 'Calling signIn while authenticated should fail',
      );

      await plugin.signOut();

      await expectLater(
        plugin.signIn(
          username: username,
          password: 'password',
        ),
        completion(
          isA<CognitoSignInResult>().having(
            (res) => res.isSignedIn,
            'isSignedIn',
            isTrue,
          ),
        ),
      );
    });

    group('sign-in calls cancel previous ones', () {
      setUp(() async {
        await plugin.configure(
          config: mockConfig,
          authProviderRepo: testAuthRepo,
        );

        final mockIdp = MockCognitoIdentityProviderClient(
          initiateAuth: expectAsync1(
            count: 1,
            (_) async => InitiateAuthResponse(
              authenticationResult: AuthenticationResultType(
                accessToken: accessToken.raw,
                refreshToken: refreshToken,
                idToken: idToken.raw,
              ),
            ),
          ),
        );
        stateMachine.addInstance<CognitoIdentityProviderClient>(mockIdp);
      });

      test('no delay', () async {
        final results = await Future.wait([
          for (var i = 0; i < 10; i++)
            Result.capture(
              plugin.signIn(
                username: username,
                password: password,
              ),
            ),
        ]);
        results.forEachIndexed((index, result) {
          expect(
            result.isValue,
            index == 0 ? isTrue : isFalse,
            reason: 'Only the first member should complete successfully',
          );
        });
      });

      test('with delay', () async {
        final results = await Future.wait([
          for (var i = 0; i < 10; i++)
            Future<void>.delayed(Duration(milliseconds: i * 5)).then(
              (_) => Result.capture(
                plugin.signIn(
                  username: username,
                  password: password,
                ),
              ),
            ),
        ]);
        results.forEachIndexed((index, result) {
          expect(
            result.isValue,
            index == 0 ? isTrue : isFalse,
            reason: 'Only the first member should complete successfully',
          );
        });
      });
    });

    group('sign-in invalidates previous confirmation', () {
      setUp(() async {
        await plugin.configure(
          config: mockConfig,
          authProviderRepo: testAuthRepo,
        );

        final mockIdp = MockCognitoIdentityProviderClient(
          initiateAuth: (_) async => InitiateAuthResponse(
            // A challenge which requires user input
            challengeName: ChallengeNameType.newPasswordRequired,
          ),
          respondToAuthChallenge: (_) async => RespondToAuthChallengeResponse(
            authenticationResult: AuthenticationResultType(
              accessToken: accessToken.raw,
              refreshToken: refreshToken,
              idToken: idToken.raw,
            ),
          ),
        );
        stateMachine.addInstance<CognitoIdentityProviderClient>(mockIdp);
      });

      test('no delay', () async {
        final results = await Future.wait([
          for (var i = 0; i < 10; i++)
            Result.capture(
              plugin.signIn(
                username: username,
                password: password,
              ),
            ),
        ]);
        await expectLater(
          plugin.confirmSignIn(confirmationValue: password),
          completes,
          reason: 'Should confirm the sign in of the last `signIn` call',
        );
        for (final result in results) {
          expect(
            result.isValue,
            isTrue,
            reason: 'Each signIn call should invalidate the previous',
          );
        }
      });

      test('with delay', () async {
        final results = await Future.wait([
          for (var i = 0; i < 10; i++)
            Future<void>.delayed(Duration(milliseconds: i * 5)).then(
              (_) => Result.capture(
                plugin.signIn(
                  username: username,
                  password: password,
                ),
              ),
            ),
        ]);
        await expectLater(
          plugin.confirmSignIn(confirmationValue: password),
          completes,
          reason: 'Should confirm the sign in of the last `signIn` call',
        );
        for (final result in results) {
          expect(
            result.isValue,
            isTrue,
            reason: 'Each signIn call should invalidate the previous',
          );
        }
      });
    });
  });
}
