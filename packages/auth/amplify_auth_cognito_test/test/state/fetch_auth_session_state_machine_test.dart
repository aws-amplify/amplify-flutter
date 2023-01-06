// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/model/auth_configuration.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:test/test.dart';

import '../common/jwt.dart';
import '../common/mock_clients.dart';
import '../common/mock_config.dart';
import '../common/mock_secure_storage.dart';

void main() {
  group('FetchAuthSessionStateMachine', () {
    late CognitoAuthStateMachine stateMachine;
    late SecureStorageInterface secureStorage;

    setUp(() {
      secureStorage = MockSecureStorage();
      stateMachine = CognitoAuthStateMachine()
        ..addInstance(secureStorage)
        ..addInstance(mockConfig)
        ..addInstance(authConfig);
    });

    group('fetch', () {
      test('(isSignedIn=false)', () async {
        stateMachine
          ..dispatch(const CredentialStoreEvent.migrateLegacyCredentialStore())
          ..dispatch(const FetchAuthSessionEvent.fetch());

        final sm = stateMachine.getOrCreate(FetchAuthSessionStateMachine.type);
        await expectLater(
          sm.stream.startWith(sm.currentState),
          emitsInOrder(<Matcher>[
            isA<FetchAuthSessionIdle>(),
            isA<FetchAuthSessionFetching>(),
            isA<FetchAuthSessionSuccess>(),
          ]),
        );

        final state = sm.currentState as FetchAuthSessionSuccess;
        final session = state.session;
        expect(session.isSignedIn, isFalse);
      });

      test('(isSignedIn=true, getAwsCredentials=false)', () async {
        seedStorage(
          secureStorage,
          userPoolKeys: userPoolKeys,
        );
        stateMachine
          ..dispatch(const CredentialStoreEvent.migrateLegacyCredentialStore())
          ..dispatch(
            const FetchAuthSessionEvent.fetch(
              CognitoSessionOptions(getAWSCredentials: false),
            ),
          );

        final sm = stateMachine.getOrCreate(FetchAuthSessionStateMachine.type);
        await expectLater(
          sm.stream.startWith(sm.currentState),
          emitsInOrder(<Matcher>[
            isA<FetchAuthSessionIdle>(),
            isA<FetchAuthSessionFetching>(),
            isA<FetchAuthSessionSuccess>(),
          ]),
        );

        final state = sm.currentState as FetchAuthSessionSuccess;
        final session = state.session;
        expect(session.isSignedIn, isTrue);
        expect(session.identityId, isNull);
        expect(session.credentials, isNull);

        expect(sm.getLatestResult(), completion(state));
      });

      test('(isSignedIn=true, getAwsCredentials=true)', () async {
        seedStorage(
          secureStorage,
          userPoolKeys: userPoolKeys,
        );
        stateMachine.dispatch(AuthEvent.configure(mockConfig));
        await stateMachine.stream.whereType<AuthConfigured>().first;

        stateMachine
          ..addInstance<CognitoIdentityClient>(
            MockCognitoIdentityClient(
              getId: () async => GetIdResponse(identityId: identityId),
              getCredentialsForIdentity: () async =>
                  GetCredentialsForIdentityResponse(
                credentials: Credentials(
                  accessKeyId: accessKeyId,
                  secretKey: secretAccessKey,
                ),
              ),
            ),
          )
          ..dispatch(
            const FetchAuthSessionEvent.fetch(
              CognitoSessionOptions(getAWSCredentials: true),
            ),
          );

        final sm = stateMachine.getOrCreate(FetchAuthSessionStateMachine.type);
        await expectLater(
          sm.stream.startWith(sm.currentState),
          emitsInOrder(<Matcher>[
            isA<FetchAuthSessionIdle>(),
            isA<FetchAuthSessionFetching>(),
            isA<FetchAuthSessionRefreshing>(),
            isA<FetchAuthSessionSuccess>(),
          ]),
        );

        final state = sm.currentState as FetchAuthSessionSuccess;
        final session = state.session;
        expect(session.isSignedIn, isTrue);
        expect(session.identityId, identityId);
        expect(session.credentials, isNotNull);
        expect(session.credentials!.accessKeyId, accessKeyId);
        expect(session.credentials!.secretAccessKey, secretAccessKey);
        expect(session.credentials!.sessionToken, isNull);
        expect(session.credentials!.expiration, isNull);

        expect(sm.getLatestResult(), completion(state));
      });

      group('user pool-only', () {
        setUp(() {
          stateMachine
            ..addInstance(userPoolOnlyConfig)
            ..addInstance(
              AuthConfiguration.fromConfig(
                userPoolOnlyConfig.auth!.awsPlugin!,
              ),
            )
            ..dispatch(
              const CredentialStoreEvent.migrateLegacyCredentialStore(),
            );
        });

        test('succeeds for user pool only requests', () {
          stateMachine.dispatch(
            const FetchAuthSessionEvent.fetch(),
          );

          expect(
            stateMachine
                .expect(FetchAuthSessionStateMachine.type)
                .getLatestResult(),
            completes,
          );
        });

        test('throws when aws creds are requested', () {
          stateMachine.dispatch(
            const FetchAuthSessionEvent.fetch(
              CognitoSessionOptions(getAWSCredentials: true),
            ),
          );

          expect(
            stateMachine
                .expect(FetchAuthSessionStateMachine.type)
                .getLatestResult(),
            throwsA(isA<InvalidAccountTypeException>()),
          );
        });
      });

      group('refresh', () {
        test('AWS creds (success)', () async {
          seedStorage(
            secureStorage,
            identityPoolKeys: identityPoolKeys,
          );
          secureStorage.write(
            key: identityPoolKeys[CognitoIdentityPoolKey.expiration],
            value: DateTime.now().toIso8601String(),
          );
          stateMachine.dispatch(AuthEvent.configure(mockConfig));
          await stateMachine.stream.whereType<AuthConfigured>().first;

          const newAccessKeyId = 'newAccessKeyId';
          const newSecretAccessKey = 'newSecretAccessKey';
          stateMachine
            ..addInstance<CognitoIdentityClient>(
              MockCognitoIdentityClient(
                getCredentialsForIdentity: expectAsync0(
                  () async => GetCredentialsForIdentityResponse(
                    credentials: Credentials(
                      accessKeyId: newAccessKeyId,
                      secretKey: newSecretAccessKey,
                    ),
                  ),
                ),
              ),
            )
            ..dispatch(
              const FetchAuthSessionEvent.fetch(
                CognitoSessionOptions(getAWSCredentials: true),
              ),
            );

          final sm =
              stateMachine.getOrCreate(FetchAuthSessionStateMachine.type);
          await expectLater(
            sm.stream.startWith(sm.currentState),
            emitsInOrder(<Matcher>[
              isA<FetchAuthSessionIdle>(),
              isA<FetchAuthSessionFetching>(),
              isA<FetchAuthSessionRefreshing>(),
              isA<FetchAuthSessionSuccess>(),
            ]),
          );

          final state = sm.currentState as FetchAuthSessionSuccess;
          expect(
            state.session.identityId,
            identityId,
            reason: 'Should retain identity ID',
          );
          expect(
            state.session.credentials?.accessKeyId,
            newAccessKeyId,
          );
          expect(
            state.session.credentials?.secretAccessKey,
            newSecretAccessKey,
          );
          expect(state.session.credentials?.sessionToken, isNull);
          expect(state.session.credentials?.expiration, isNull);
        });

        test('AWS creds (failure)', () async {
          seedStorage(
            secureStorage,
            identityPoolKeys: identityPoolKeys,
          );
          secureStorage.write(
            key: identityPoolKeys[CognitoIdentityPoolKey.expiration],
            value: DateTime.now().toIso8601String(),
          );
          stateMachine.dispatch(AuthEvent.configure(mockConfig));
          await stateMachine.stream.whereType<AuthConfigured>().first;

          stateMachine
            ..addInstance<CognitoIdentityClient>(
              MockCognitoIdentityClient(
                getCredentialsForIdentity: expectAsync0(
                  () async => throw _FetchAuthSessionException(),
                ),
              ),
            )
            ..dispatch(
              const FetchAuthSessionEvent.fetch(
                CognitoSessionOptions(getAWSCredentials: true),
              ),
            );

          final sm =
              stateMachine.getOrCreate(FetchAuthSessionStateMachine.type);
          await expectLater(
            sm.stream.startWith(sm.currentState),
            emitsInOrder(<Matcher>[
              isA<FetchAuthSessionIdle>(),
              isA<FetchAuthSessionFetching>(),
              isA<FetchAuthSessionRefreshing>(),
              isA<FetchAuthSessionFailure>(),
            ]),
          );

          final state = sm.currentState as FetchAuthSessionFailure;
          expect(state.exception, isA<_FetchAuthSessionException>());
          expect(
            sm.getLatestResult(),
            throwsA(isA<_FetchAuthSessionException>()),
          );
        });

        group('User Pool tokens (success)', () {
          Future<void> runTest({bool willRefresh = true}) async {
            stateMachine.dispatch(AuthEvent.configure(mockConfig));
            await stateMachine.stream.whereType<AuthConfigured>().first;

            stateMachine
              ..addInstance<CognitoIdentityProviderClient>(
                MockCognitoIdentityProviderClient(
                  initiateAuth: expectAsync0(
                    count: willRefresh ? 1 : 0,
                    () async => InitiateAuthResponse(
                      authenticationResult: AuthenticationResultType(
                        accessToken: accessToken.raw,
                        refreshToken: refreshToken,
                        idToken: idToken.raw,
                      ),
                    ),
                  ),
                ),
              )
              ..dispatch(
                const FetchAuthSessionEvent.fetch(
                  CognitoSessionOptions(getAWSCredentials: false),
                ),
              );

            final sm =
                stateMachine.getOrCreate(FetchAuthSessionStateMachine.type);
            await expectLater(
              sm.stream.startWith(sm.currentState),
              emitsInOrder(<Matcher>[
                isA<FetchAuthSessionIdle>(),
                isA<FetchAuthSessionFetching>(),
                if (willRefresh) isA<FetchAuthSessionRefreshing>(),
                isA<FetchAuthSessionSuccess>(),
              ]),
            );

            final state = sm.currentState as FetchAuthSessionSuccess;
            expect(state.session.isSignedIn, isTrue);
            expect(state.session.userSub, userSub);
            expect(state.session.userPoolTokens, isNotNull);
            expect(state.session.userPoolTokens?.accessToken, accessToken);
            expect(state.session.userPoolTokens?.refreshToken, refreshToken);
            expect(state.session.userPoolTokens?.idToken, idToken);
          }

          test('access token expires', () async {
            seedStorage(
              secureStorage,
              userPoolKeys: userPoolKeys,
            );
            secureStorage.write(
              key: userPoolKeys[CognitoUserPoolKey.accessToken],
              value: createJwt(
                type: TokenType.access,
                expiration: Duration.zero,
              ).raw,
            );
            await runTest();
          });

          test('id token expires', () async {
            seedStorage(
              secureStorage,
              userPoolKeys: userPoolKeys,
            );
            secureStorage.write(
              key: userPoolKeys[CognitoUserPoolKey.idToken],
              value: createJwt(
                type: TokenType.id,
                expiration: Duration.zero,
              ).raw,
            );
            await runTest();
          });

          test('neither token expires', () async {
            seedStorage(
              secureStorage,
              userPoolKeys: userPoolKeys,
            );
            await runTest(willRefresh: false);
          });
        });

        test('User Pool tokens (failure)', () async {
          seedStorage(
            secureStorage,
            userPoolKeys: userPoolKeys,
          );
          secureStorage.write(
            key: userPoolKeys[CognitoUserPoolKey.accessToken],
            value: createJwt(
              type: TokenType.access,
              expiration: Duration.zero,
            ).raw,
          );
          stateMachine.dispatch(AuthEvent.configure(mockConfig));
          await stateMachine.stream.whereType<AuthConfigured>().first;

          stateMachine
            ..addInstance<CognitoIdentityProviderClient>(
              MockCognitoIdentityProviderClient(
                initiateAuth: expectAsync0(
                  () async => throw _FetchAuthSessionException(),
                ),
              ),
            )
            ..dispatch(
              const FetchAuthSessionEvent.fetch(
                CognitoSessionOptions(getAWSCredentials: false),
              ),
            );

          final sm =
              stateMachine.getOrCreate(FetchAuthSessionStateMachine.type);
          await expectLater(
            sm.stream.startWith(sm.currentState),
            emitsInOrder(<Matcher>[
              isA<FetchAuthSessionIdle>(),
              isA<FetchAuthSessionFetching>(),
              isA<FetchAuthSessionRefreshing>(),
              isA<FetchAuthSessionFailure>(),
            ]),
          );

          final state = sm.currentState as FetchAuthSessionFailure;
          expect(state.exception, isA<_FetchAuthSessionException>());
          expect(
            sm.getLatestResult(),
            throwsA(isA<_FetchAuthSessionException>()),
          );
        });

        test('force refresh user pool tokens', () async {
          seedStorage(
            secureStorage,
            userPoolKeys: userPoolKeys,
          );
          // Create an unexpired access token which we want to refresh.
          final originalToken = createJwt(
            type: TokenType.access,
            expiration: const Duration(minutes: 3),
          );
          secureStorage.write(
            key: userPoolKeys[CognitoUserPoolKey.accessToken],
            value: originalToken.raw,
          );
          stateMachine.dispatch(AuthEvent.configure(userPoolOnlyConfig));
          await stateMachine.stream.whereType<AuthConfigured>().first;

          stateMachine
            ..addInstance<CognitoIdentityProviderClient>(
              MockCognitoIdentityProviderClient(
                initiateAuth: expectAsync0(
                  () async => InitiateAuthResponse(
                    authenticationResult: AuthenticationResultType(
                      accessToken: createJwt(
                        type: TokenType.access,
                        expiration: const Duration(minutes: 5),
                      ).raw,
                    ),
                  ),
                ),
              ),
            )
            ..dispatch(
              const FetchAuthSessionEvent.fetch(
                CognitoSessionOptions(
                  getAWSCredentials: false,
                  forceRefresh: true,
                ),
              ),
            );

          final sm =
              stateMachine.getOrCreate(FetchAuthSessionStateMachine.type);
          await expectLater(
            sm.stream.startWith(sm.currentState),
            emitsInOrder(<Matcher>[
              isA<FetchAuthSessionIdle>(),
              isA<FetchAuthSessionFetching>(),
              isA<FetchAuthSessionRefreshing>(),
              isA<FetchAuthSessionSuccess>(),
            ]),
          );

          final state = sm.currentState as FetchAuthSessionSuccess;
          expect(state.session.isSignedIn, isTrue);
          expect(state.session.userSub, userSub);
          expect(state.session.userPoolTokens, isNotNull);

          final newToken = state.session.userPoolTokens!.accessToken;
          expect(newToken, isNot(originalToken));
          expect(
            newToken.claims.expiration!.millisecondsSinceEpoch,
            greaterThan(
              originalToken.claims.expiration!.millisecondsSinceEpoch,
            ),
          );
        });

        test('force refresh AWS creds', () async {
          seedStorage(
            secureStorage,
            identityPoolKeys: identityPoolKeys,
          );
          // Create unexpired AWS credentials which we want to refresh.
          final originalExpiration =
              DateTime.now().add(const Duration(minutes: 3));
          final newExpiration = DateTime.now().add(const Duration(minutes: 5));
          secureStorage.write(
            key: identityPoolKeys[CognitoIdentityPoolKey.expiration],
            value: originalExpiration.toIso8601String(),
          );
          stateMachine.dispatch(AuthEvent.configure(mockConfig));
          await stateMachine.stream.whereType<AuthConfigured>().first;

          const newAccessKeyId = 'newAccessKeyId';
          const newSecretAccessKey = 'newSecretAccessKey';
          stateMachine
            ..addInstance<CognitoIdentityClient>(
              MockCognitoIdentityClient(
                getCredentialsForIdentity: expectAsync0(
                  () async => GetCredentialsForIdentityResponse(
                    credentials: Credentials(
                      accessKeyId: newAccessKeyId,
                      secretKey: newSecretAccessKey,
                      expiration: newExpiration,
                    ),
                  ),
                ),
              ),
            )
            ..dispatch(
              const FetchAuthSessionEvent.fetch(
                CognitoSessionOptions(
                  getAWSCredentials: true,
                  forceRefresh: true,
                ),
              ),
            );

          final sm =
              stateMachine.getOrCreate(FetchAuthSessionStateMachine.type);
          await expectLater(
            sm.stream.startWith(sm.currentState),
            emitsInOrder(<Matcher>[
              isA<FetchAuthSessionIdle>(),
              isA<FetchAuthSessionFetching>(),
              isA<FetchAuthSessionRefreshing>(),
              isA<FetchAuthSessionSuccess>(),
            ]),
          );

          final state = sm.currentState as FetchAuthSessionSuccess;
          expect(
            state.session.identityId,
            identityId,
            reason: 'Should retain identity ID',
          );
          expect(
            state.session.credentials?.accessKeyId,
            newAccessKeyId,
          );
          expect(
            state.session.credentials?.secretAccessKey,
            newSecretAccessKey,
          );
          expect(state.session.credentials?.expiration, newExpiration);
        });

        test('force refresh all creds', () async {
          seedStorage(
            secureStorage,
            identityPoolKeys: identityPoolKeys,
            userPoolKeys: userPoolKeys,
          );
          // Create an unexpired access token which we want to refresh.
          final originalToken = createJwt(
            type: TokenType.access,
            expiration: const Duration(minutes: 3),
          );
          secureStorage.write(
            key: userPoolKeys[CognitoUserPoolKey.accessToken],
            value: originalToken.raw,
          );
          // Create unexpired AWS credentials which we don't want to refresh.
          final originalExpiration =
              DateTime.now().add(const Duration(minutes: 3));
          secureStorage.write(
            key: identityPoolKeys[CognitoIdentityPoolKey.expiration],
            value: originalExpiration.toIso8601String(),
          );
          stateMachine.dispatch(AuthEvent.configure(mockConfig));
          await stateMachine.stream.whereType<AuthConfigured>().first;

          stateMachine
            ..addInstance<CognitoIdentityProviderClient>(
              MockCognitoIdentityProviderClient(
                initiateAuth: expectAsync0(
                  () async => InitiateAuthResponse(
                    authenticationResult: AuthenticationResultType(
                      accessToken: createJwt(
                        type: TokenType.access,
                        expiration: const Duration(minutes: 5),
                      ).raw,
                    ),
                  ),
                ),
              ),
            )
            ..dispatch(
              const FetchAuthSessionEvent.fetch(
                CognitoSessionOptions(
                  getAWSCredentials: false,
                  forceRefresh: true,
                ),
              ),
            );

          final sm =
              stateMachine.getOrCreate(FetchAuthSessionStateMachine.type);
          await expectLater(
            sm.stream.startWith(sm.currentState),
            emitsInOrder(<Matcher>[
              isA<FetchAuthSessionIdle>(),
              isA<FetchAuthSessionFetching>(),
              isA<FetchAuthSessionRefreshing>(),
              isA<FetchAuthSessionSuccess>(),
            ]),
          );

          final state = sm.currentState as FetchAuthSessionSuccess;
          expect(state.session.isSignedIn, isTrue);
          expect(state.session.userSub, userSub);
          expect(state.session.userPoolTokens, isNotNull);

          final newToken = state.session.userPoolTokens!.accessToken;
          expect(newToken, isNot(originalToken));
          expect(
            newToken.claims.expiration!.millisecondsSinceEpoch,
            greaterThan(
              originalToken.claims.expiration!.millisecondsSinceEpoch,
            ),
          );

          expect(state.session.credentials, isNotNull);
          expect(state.session.credentials!.expiration, originalExpiration);
        });
      });

      test('fails', () async {
        seedStorage(
          secureStorage,
          userPoolKeys: userPoolKeys,
        );
        stateMachine.dispatch(AuthEvent.configure(mockConfig));
        await stateMachine.stream.whereType<AuthConfigured>().first;

        stateMachine
          ..addInstance<CognitoIdentityClient>(
            MockCognitoIdentityClient(
              getId: () async => throw _FetchAuthSessionException(),
              getCredentialsForIdentity: () async =>
                  throw _FetchAuthSessionException(),
            ),
          )
          ..dispatch(
            const FetchAuthSessionEvent.fetch(
              CognitoSessionOptions(getAWSCredentials: true),
            ),
          );

        final sm = stateMachine.getOrCreate(FetchAuthSessionStateMachine.type);
        await expectLater(
          sm.stream.startWith(sm.currentState),
          emitsInOrder(<Matcher>[
            isA<FetchAuthSessionIdle>(),
            isA<FetchAuthSessionFetching>(),
            isA<FetchAuthSessionRefreshing>(),
            isA<FetchAuthSessionFailure>(),
          ]),
        );

        final state = sm.currentState as FetchAuthSessionFailure;
        expect(state.exception, isA<_FetchAuthSessionException>());
        expect(
          sm.getLatestResult(),
          throwsA(isA<_FetchAuthSessionException>()),
        );
      });
    });
  });
}

class _FetchAuthSessionException implements Exception {}
