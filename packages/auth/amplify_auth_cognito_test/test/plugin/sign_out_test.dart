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

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart'
    hide InternalErrorException;
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:amplify_auth_cognito_dart/src/state/machines/credential_store_state_machine.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:test/test.dart';

import '../common/mock_clients.dart';
import '../common/mock_config.dart';
import '../common/mock_hosted_ui.dart';
import '../common/mock_secure_storage.dart';

final throwsSignedOutException = throwsA(isA<SignedOutException>());

// Follows signOut test cases:
// https://github.com/aws-amplify/amplify-android/tree/main/aws-auth-cognito/src/test/resources/feature-test/testsuites/signOut
void main() {
  final userPoolKeys = CognitoUserPoolKeys(userPoolConfig);
  final identityPoolKeys = CognitoIdentityPoolKeys(identityPoolConfig);
  const hostedUiKeys = HostedUiKeys(hostedUiConfig);

  late AmplifyAuthCognitoDart plugin;
  late CognitoAuthStateMachine stateMachine;
  late SecureStorageInterface secureStorage;

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
      stateMachine = CognitoAuthStateMachine()
        ..addInstance(secureStorage)
        ..addBuilder(
          createHostedUiFactory(
            signIn: (
              HostedUiPlatform platform,
              CognitoSignInWithWebUIOptions options,
              AuthProvider? provider,
            ) async {},
            signOut: (
              HostedUiPlatform platform,
              CognitoSignOutWithWebUIOptions options,
            ) async {},
          ),
          HostedUiPlatform.token,
        );

      plugin = AmplifyAuthCognitoDart(credentialStorage: secureStorage)
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

        final result = await stateMachine
            .getOrCreate(CredentialStoreStateMachine.type)
            .getCredentialsResult();
        expect(
          result,
          isA<CredentialStoreSuccess>()
              .having((result) => result.data.userPoolTokens, 'tokens', isNull)
              .having(
                (result) => result.data.awsCredentials,
                'awsCreds',
                isNotNull,
              ),
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

        await expectLater(plugin.getCredentials(), completes);
        await expectLater(
          plugin.signOut(),
          completion(isA<CognitoCompleteSignOut>()),
        );
        expect(plugin.getCredentials(), throwsSignedOutException);
        expect(hubEvents, emitsSignOutEvent);
      });

      test('clears credential store when signed in & global sign out fails',
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
          globalSignOut:
              expectAsync0(() async => throw InternalErrorException()),
          revokeToken: () async => RevokeTokenResponse(),
        );
        stateMachine.addInstance<CognitoIdentityProviderClient>(mockIdp);

        await expectLater(plugin.getCredentials(), completes);
        await expectLater(
          plugin.signOut(
            request: const SignOutRequest(
              options: SignOutOptions(globalSignOut: true),
            ),
          ),
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
        expect(plugin.getCredentials(), throwsSignedOutException);
        expect(hubEvents, emitsSignOutEvent);
      });

      test('clears credential store when signed in & revoke token fails',
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
          revokeToken: expectAsync0(() async => throw InternalErrorException()),
        );
        stateMachine.addInstance<CognitoIdentityProviderClient>(mockIdp);

        await expectLater(plugin.getCredentials(), completes);
        await expectLater(
          plugin.signOut(
            request: const SignOutRequest(
              options: SignOutOptions(globalSignOut: true),
            ),
          ),
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
        expect(plugin.getCredentials(), throwsSignedOutException);
        expect(hubEvents, emitsSignOutEvent);
      });

      test('can sign out in user pool-only mode', () async {
        seedStorage(secureStorage, userPoolKeys: userPoolKeys);
        await plugin.configure(
          config: userPoolOnlyConfig,
          authProviderRepo: testAuthRepo,
        );
        expect(plugin.signOut(), completion(isA<CognitoCompleteSignOut>()));
      });

      group('hosted UI', () {
        test('clears credential store when signed in & HTTP succeeds',
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

          await expectLater(plugin.getCredentials(), completes);
          await expectLater(
            plugin.signOut(),
            completion(isA<CognitoCompleteSignOut>()),
          );
          expect(plugin.getCredentials(), throwsSignedOutException);
          expect(hubEvents, emitsSignOutEvent);
        });

        test('clears credential store when signed in & global sign out fails',
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
            globalSignOut:
                expectAsync0(() async => throw InternalErrorException()),
            revokeToken: () async => RevokeTokenResponse(),
          );
          stateMachine.addInstance<CognitoIdentityProviderClient>(mockIdp);

          await expectLater(plugin.getCredentials(), completes);
          await expectLater(
            plugin.signOut(
              request: const SignOutRequest(
                options: SignOutOptions(globalSignOut: true),
              ),
            ),
            completion(
              isA<CognitoPartialSignOut>().having(
                (res) => res.globalSignOutException,
                'globalSignOutException',
                isA<GlobalSignOutException>(),
              ),
            ),
          );
          expect(plugin.getCredentials(), throwsSignedOutException);
          expect(hubEvents, emitsSignOutEvent);
        });

        test('clears credential store when signed in & revoke token fails',
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

          await expectLater(plugin.getCredentials(), completes);
          await expectLater(
            plugin.signOut(
              request: const SignOutRequest(
                options: SignOutOptions(globalSignOut: true),
              ),
            ),
            completion(
              isA<CognitoPartialSignOut>().having(
                (res) => res.revokeTokenException,
                'revokeTokenException',
                isA<RevokeTokenException>(),
              ),
            ),
          );
          expect(plugin.getCredentials(), throwsSignedOutException);
          expect(hubEvents, emitsSignOutEvent);
        });

        test('fails with platform exception', () async {
          seedStorage(
            secureStorage,
            identityPoolKeys: identityPoolKeys,
            hostedUiKeys: hostedUiKeys,
          );
          stateMachine.addBuilder(
            createHostedUiFactory(
              signIn: (
                HostedUiPlatform platform,
                CognitoSignInWithWebUIOptions options,
                AuthProvider? provider,
              ) async {},
              signOut: (
                HostedUiPlatform platform,
                CognitoSignOutWithWebUIOptions options,
              ) async =>
                  throw _HostedUiException(),
            ),
            HostedUiPlatform.token,
          );
          await plugin.configure(
            config: mockConfig,
            authProviderRepo: testAuthRepo,
          );

          await expectLater(plugin.getCredentials(), completes);
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
          expect(plugin.getCredentials(), throwsSignedOutException);
          expect(hubEvents, emitsSignOutEvent);
        });

        test('fails hard for user cancellation', () async {
          seedStorage(
            secureStorage,
            identityPoolKeys: identityPoolKeys,
            hostedUiKeys: hostedUiKeys,
          );
          stateMachine.addBuilder(
            createHostedUiFactory(
              signIn: (
                HostedUiPlatform platform,
                CognitoSignInWithWebUIOptions options,
                AuthProvider? provider,
              ) async {},
              signOut: (
                HostedUiPlatform platform,
                CognitoSignOutWithWebUIOptions options,
              ) async =>
                  throw const UserCancelledException(''),
            ),
            HostedUiPlatform.token,
          );
          await plugin.configure(
            config: mockConfig,
            authProviderRepo: testAuthRepo,
          );

          await expectLater(plugin.getCredentials(), completes);
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
            plugin.getCredentials(),
            completes,
            reason: 'Credentials were not cleared',
          );
          unawaited(hubEventsController.close());
          expect(hubEvents, neverEmits(emitsSignOutEvent));
        });
      });
    });
  });
}

class _HostedUiException implements Exception {}
