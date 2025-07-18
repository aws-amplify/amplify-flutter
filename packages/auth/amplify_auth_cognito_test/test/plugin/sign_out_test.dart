// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart'
    hide InternalErrorException;
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/flows/hosted_ui/hosted_ui_platform.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:amplify_auth_cognito_dart/src/state/cognito_state_machine.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_auth_cognito_test/common/jwt.dart';
import 'package:amplify_auth_cognito_test/common/mock_clients.dart';
import 'package:amplify_auth_cognito_test/common/mock_config.dart';
import 'package:amplify_auth_cognito_test/common/mock_hosted_ui.dart';
import 'package:amplify_auth_cognito_test/common/mock_secure_storage.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:test/test.dart';

final throwsSignedOutException = throwsA(isA<SignedOutException>());

// Follows signOut test cases:
// https://github.com/aws-amplify/amplify-android/tree/main/aws-auth-cognito/src/test/resources/feature-test/testsuites/signOut
void main() {
  final userPoolKeys = CognitoUserPoolKeys(mockConfig.auth!.userPoolClientId!);
  final identityPoolKeys = CognitoIdentityPoolKeys(
    mockConfig.auth!.identityPoolId!,
  );
  final hostedUiKeys = HostedUiKeys(mockConfig.auth!.userPoolClientId!);

  late AmplifyAuthCognitoDart plugin;
  late CognitoAuthStateMachine stateMachine;
  late MockSecureStorage secureStorage;

  late StreamController<AuthHubEvent> hubEventsController;
  late Stream<AuthHubEvent> hubEvents;

  final testAuthRepo = AmplifyAuthProviderRepository();

  final emitsSignOutEvent = emitsThrough(
    isA<AuthHubEvent>().having(
      (event) => event.type,
      'type',
      AuthHubEventType.signedOut,
    ),
  );

  group('AmplifyAuthCognitoDart', () {
    setUp(() async {
      secureStorage = MockSecureStorage();
      SecureStorageInterface storageFactory(scope) => secureStorage;
      stateMachine = CognitoAuthStateMachine()
        ..addBuilder<HostedUiPlatform>(
          createHostedUiFactory(
            signIn:
                (
                  HostedUiPlatform platform,
                  CognitoSignInWithWebUIPluginOptions options,
                  AuthProvider? provider,
                ) async {},
            signOut:
                (
                  HostedUiPlatform platform,
                  CognitoSignInWithWebUIPluginOptions options,
                ) async {},
          ),
        );

      plugin = AmplifyAuthCognitoDart(secureStorageFactory: storageFactory)
        ..stateMachine = stateMachine;

      hubEventsController = StreamController();
      hubEvents = hubEventsController.stream;
      Amplify.Hub.listen(HubChannel.Auth, hubEventsController.add);
    });

    tearDown(() {
      hubEventsController.close();
      Amplify.Hub.close();
    });

    group('signOut', () {
      test('completes when already signed out', () async {
        await plugin.configure(
          config: mockConfig,
          authProviderRepo: testAuthRepo,
        );
        expect(plugin.signOut(), completion(isA<CognitoCompleteSignOut>()));
        expect(hubEvents, emitsSignOutEvent);
      });

      test('does not clear AWS creds when already signed out', () async {
        seedStorage(secureStorage, identityPoolKeys: identityPoolKeys);
        await plugin.configure(
          config: mockConfig,
          authProviderRepo: testAuthRepo,
        );
        await expectLater(
          plugin.signOut(),
          completion(isA<CognitoCompleteSignOut>()),
        );
        expect(hubEvents, emitsSignOutEvent);

        final credentials = await stateMachine.loadCredentials();
        expect(
          credentials,
          isA<CredentialStoreData>()
              .having((result) => result.userPoolTokens, 'tokens', isNull)
              .having((result) => result.awsCredentials, 'awsCreds', isNotNull),
        );
      });

      test('clears credential store when signed in & HTTP succeeds', () async {
        seedStorage(
          secureStorage,
          userPoolKeys: userPoolKeys,
          identityPoolKeys: identityPoolKeys,
        );
        await plugin.configure(
          config: mockConfig,
          authProviderRepo: testAuthRepo,
        );

        final mockIdp = MockCognitoIdentityProviderClient(
          globalSignOut: () async => GlobalSignOutResponse(),
          revokeToken: () async => RevokeTokenResponse(),
        );
        stateMachine.addInstance<CognitoIdentityProviderClient>(mockIdp);

        await expectLater(plugin.stateMachine.getUserPoolTokens(), completes);
        await expectLater(
          plugin.signOut(),
          completion(isA<CognitoCompleteSignOut>()),
        );
        expect(
          plugin.stateMachine.getUserPoolTokens(),
          throwsSignedOutException,
        );
        expect(hubEvents, emitsSignOutEvent);
      });

      test(
        'clears credential store when signed in & global sign out fails',
        () async {
          seedStorage(
            secureStorage,
            userPoolKeys: userPoolKeys,
            identityPoolKeys: identityPoolKeys,
          );
          await plugin.configure(
            config: mockConfig,
            authProviderRepo: testAuthRepo,
          );

          final mockIdp = MockCognitoIdentityProviderClient(
            globalSignOut: expectAsync0(
              () async => throw InternalErrorException(),
            ),
            revokeToken: () async => RevokeTokenResponse(),
          );
          stateMachine.addInstance<CognitoIdentityProviderClient>(mockIdp);

          await expectLater(plugin.stateMachine.getUserPoolTokens(), completes);
          await expectLater(
            plugin.signOut(options: const SignOutOptions(globalSignOut: true)),
            completion(
              isA<CognitoPartialSignOut>()
                  .having(
                    (res) => res.signedOutLocally,
                    'signedOutLocally',
                    isTrue,
                  )
                  .having(
                    (res) => res.globalSignOutException,
                    'globalSignOutException',
                    isA<GlobalSignOutException>(),
                  )
                  .having(
                    (res) => res.revokeTokenException,
                    'revokeTokenException',
                    isA<RevokeTokenException>().having(
                      (e) => e.underlyingException.toString(),
                      'underlyingException',
                      contains('not attempted'),
                    ),
                  ),
            ),
          );
          expect(
            plugin.stateMachine.getUserPoolTokens(),
            throwsSignedOutException,
          );
          expect(hubEvents, emitsSignOutEvent);
        },
      );

      test(
        'clears credential store when signed in & revoke token fails',
        () async {
          seedStorage(
            secureStorage,
            userPoolKeys: userPoolKeys,
            identityPoolKeys: identityPoolKeys,
          );
          await plugin.configure(
            config: mockConfig,
            authProviderRepo: testAuthRepo,
          );

          final mockIdp = MockCognitoIdentityProviderClient(
            globalSignOut: () async => GlobalSignOutResponse(),
            revokeToken: expectAsync0(
              () async => throw InternalErrorException(),
            ),
          );
          stateMachine.addInstance<CognitoIdentityProviderClient>(mockIdp);

          await expectLater(plugin.stateMachine.getUserPoolTokens(), completes);
          await expectLater(
            plugin.signOut(options: const SignOutOptions(globalSignOut: true)),
            completion(
              isA<CognitoPartialSignOut>()
                  .having(
                    (res) => res.signedOutLocally,
                    'signedOutLocally',
                    isTrue,
                  )
                  .having(
                    (res) => res.globalSignOutException,
                    'globalSignOutException',
                    isNull,
                  )
                  .having(
                    (res) => res.revokeTokenException,
                    'revokeTokenException',
                    isA<RevokeTokenException>().having(
                      (e) => e.refreshToken,
                      'refreshToken',
                      refreshToken,
                    ),
                  ),
            ),
          );
          expect(
            plugin.stateMachine.getUserPoolTokens(),
            throwsSignedOutException,
          );
          expect(hubEvents, emitsSignOutEvent);
        },
      );
      test(
        'clears credential store when signed in & token is invalid',
        () async {
          seedStorage(
            secureStorage,
            userPoolKeys: userPoolKeys,
            identityPoolKeys: identityPoolKeys,
          );
          final expiredIdToken = createJwt(
            type: TokenType.id,
            expiration: Duration.zero,
          );
          // Write an expired ID token to the secure storage
          secureStorage.write(
            key: userPoolKeys[CognitoUserPoolKey.idToken],
            value: expiredIdToken.raw,
          );
          await plugin.configure(
            config: mockConfig,
            authProviderRepo: testAuthRepo,
          );

          final mockIdp = MockCognitoIdentityProviderClient(
            initiateAuth: (p0) async =>
                throw InternalErrorException(message: 'Invalid token'),
          );
          stateMachine.addInstance<CognitoIdentityProviderClient>(mockIdp);

          await expectLater(
            plugin.signOut(),
            completion(
              isA<CognitoPartialSignOut>()
                  .having(
                    (res) => res.signedOutLocally,
                    'signedOutLocally',
                    isTrue,
                  )
                  .having(
                    (res) => res.invalidTokenException,
                    'invalidTokenException',
                    isA<InvalidTokenException>(),
                  ),
            ),
          );
          expect(
            plugin.stateMachine.getUserPoolTokens(),
            throwsSignedOutException,
          );
          expect(hubEvents, emitsSignOutEvent);
        },
      );

      test('can sign out in user pool-only mode', () async {
        seedStorage(secureStorage, userPoolKeys: userPoolKeys);
        await plugin.configure(
          config: mockConfigUserPoolOnly,
          authProviderRepo: testAuthRepo,
        );

        final mockIdp = MockCognitoIdentityProviderClient(
          globalSignOut: () async => GlobalSignOutResponse(),
          revokeToken: () async => RevokeTokenResponse(),
        );
        stateMachine.addInstance<CognitoIdentityProviderClient>(mockIdp);

        expect(plugin.signOut(), completion(isA<CognitoCompleteSignOut>()));
      });

      group('hosted UI', () {
        test(
          'clears credential store when signed in & HTTP succeeds',
          () async {
            seedStorage(
              secureStorage,
              identityPoolKeys: identityPoolKeys,
              hostedUiKeys: hostedUiKeys,
            );
            await plugin.configure(
              config: mockConfig,
              authProviderRepo: testAuthRepo,
            );

            final mockIdp = MockCognitoIdentityProviderClient(
              globalSignOut: () async => GlobalSignOutResponse(),
              revokeToken: () async => RevokeTokenResponse(),
            );
            stateMachine.addInstance<CognitoIdentityProviderClient>(mockIdp);

            await expectLater(
              plugin.stateMachine.getUserPoolTokens(),
              completes,
            );
            await expectLater(
              plugin.signOut(),
              completion(isA<CognitoCompleteSignOut>()),
            );
            expect(
              plugin.stateMachine.getUserPoolTokens(),
              throwsSignedOutException,
            );
            expect(hubEvents, emitsSignOutEvent);
          },
        );

        test(
          'clears credential store when signed in & global sign out fails',
          () async {
            seedStorage(
              secureStorage,
              identityPoolKeys: identityPoolKeys,
              hostedUiKeys: hostedUiKeys,
            );
            await plugin.configure(
              config: mockConfig,
              authProviderRepo: testAuthRepo,
            );

            final mockIdp = MockCognitoIdentityProviderClient(
              globalSignOut: expectAsync0(
                () async => throw InternalErrorException(),
              ),
              revokeToken: () async => RevokeTokenResponse(),
            );
            stateMachine.addInstance<CognitoIdentityProviderClient>(mockIdp);

            await expectLater(
              plugin.stateMachine.getUserPoolTokens(),
              completes,
            );
            await expectLater(
              plugin.signOut(
                options: const SignOutOptions(globalSignOut: true),
              ),
              completion(
                isA<CognitoPartialSignOut>().having(
                  (res) => res.globalSignOutException,
                  'globalSignOutException',
                  isA<GlobalSignOutException>(),
                ),
              ),
            );
            expect(
              plugin.stateMachine.getUserPoolTokens(),
              throwsSignedOutException,
            );
            expect(hubEvents, emitsSignOutEvent);
          },
        );

        test(
          'clears credential store when signed in & revoke token fails',
          () async {
            seedStorage(
              secureStorage,
              identityPoolKeys: identityPoolKeys,
              hostedUiKeys: hostedUiKeys,
            );
            await plugin.configure(
              config: mockConfig,
              authProviderRepo: testAuthRepo,
            );

            final mockIdp = MockCognitoIdentityProviderClient(
              globalSignOut: () async => GlobalSignOutResponse(),
              revokeToken: () async => throw InternalErrorException(),
            );
            stateMachine.addInstance<CognitoIdentityProviderClient>(mockIdp);

            await expectLater(
              plugin.stateMachine.getUserPoolTokens(),
              completes,
            );
            await expectLater(
              plugin.signOut(
                options: const SignOutOptions(globalSignOut: true),
              ),
              completion(
                isA<CognitoPartialSignOut>().having(
                  (res) => res.revokeTokenException,
                  'revokeTokenException',
                  isA<RevokeTokenException>(),
                ),
              ),
            );
            expect(
              plugin.stateMachine.getUserPoolTokens(),
              throwsSignedOutException,
            );
            expect(hubEvents, emitsSignOutEvent);
          },
        );

        test('fails with platform exception', () async {
          seedStorage(
            secureStorage,
            identityPoolKeys: identityPoolKeys,
            hostedUiKeys: hostedUiKeys,
          );
          stateMachine.addBuilder<HostedUiPlatform>(
            createHostedUiFactory(
              signIn:
                  (
                    HostedUiPlatform platform,
                    CognitoSignInWithWebUIPluginOptions options,
                    AuthProvider? provider,
                  ) async {},
              signOut:
                  (
                    HostedUiPlatform platform,
                    CognitoSignInWithWebUIPluginOptions options,
                  ) async => throw _HostedUiException(),
            ),
          );
          await plugin.configure(
            config: mockConfig,
            authProviderRepo: testAuthRepo,
          );
          final mockIdp = MockCognitoIdentityProviderClient(
            globalSignOut: () async => GlobalSignOutResponse(),
            revokeToken: () async => RevokeTokenResponse(),
          );
          stateMachine.addInstance<CognitoIdentityProviderClient>(mockIdp);

          await expectLater(plugin.stateMachine.getUserPoolTokens(), completes);
          await expectLater(
            plugin.signOut(),
            completion(
              isA<CognitoPartialSignOut>().having(
                (res) => res.hostedUiException,
                'hostedUiException',
                isA<HostedUiException>().having(
                  (e) => e.underlyingException,
                  'underlyingException',
                  isA<_HostedUiException>(),
                ),
              ),
            ),
          );
          expect(
            plugin.stateMachine.getUserPoolTokens(),
            throwsSignedOutException,
          );
          expect(hubEvents, emitsSignOutEvent);
        });

        test(
          'fails hard for user cancellation',
          () async {
            seedStorage(
              secureStorage,
              identityPoolKeys: identityPoolKeys,
              hostedUiKeys: hostedUiKeys,
            );
            stateMachine.addBuilder<HostedUiPlatform>(
              createHostedUiFactory(
                signIn:
                    (
                      HostedUiPlatform platform,
                      CognitoSignInWithWebUIPluginOptions options,
                      AuthProvider? provider,
                    ) async {},
                signOut:
                    (
                      HostedUiPlatform platform,
                      CognitoSignInWithWebUIPluginOptions options,
                    ) async => throw const UserCancelledException(''),
              ),
            );
            await plugin.configure(
              config: mockConfig,
              authProviderRepo: testAuthRepo,
            );

            await expectLater(
              plugin.stateMachine.getUserPoolTokens(),
              completes,
            );
            await expectLater(
              plugin.signOut(),
              completion(
                isA<CognitoFailedSignOut>().having(
                  (res) => res.exception,
                  'exception',
                  isA<UserCancelledException>(),
                ),
              ),
            );
            expect(
              plugin.stateMachine.getUserPoolTokens(),
              completes,
              reason: 'Credentials were not cleared',
            );
            unawaited(hubEventsController.close());
            expect(hubEvents, neverEmits(emitsSignOutEvent));
          },
          skip: zIsWeb ? 'User cancellation is not possible on Web' : null,
        );
      });
    });
  });
}

class _HostedUiException implements Exception {}
