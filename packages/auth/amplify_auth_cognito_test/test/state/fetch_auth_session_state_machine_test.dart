// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_core/amplify_core.dart';
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
    late AmplifyConfig config;
    late CognitoAuthSession session;

    final newAccessToken = createJwt(
      type: TokenType.id,
      expiration: const Duration(minutes: 5),
    );

    final expiredAccessToken = createJwt(
      type: TokenType.access,
      expiration: Duration.zero,
    );

    final newIdToken = createJwt(
      type: TokenType.id,
      expiration: const Duration(minutes: 5),
    );

    final expiredIdToken = createJwt(
      type: TokenType.id,
      expiration: Duration.zero,
    );

    const newAccessKeyId = 'newAccessKeyId';
    const newSecretAccessKey = 'newSecretAccessKey';

    Future<void> configureAmplify(AmplifyConfig config) async {
      stateMachine.dispatch(AuthEvent.configure(config));
      await stateMachine.stream.whereType<AuthConfigured>().first;
    }

    Future<CognitoAuthSession> fetchAuthSession({
      bool forceRefresh = false,
      required bool willRefresh,
    }) async {
      stateMachine.dispatch(
        FetchAuthSessionEvent.fetch(
          CognitoSessionOptions(forceRefresh: forceRefresh),
        ),
      );
      final sm = stateMachine.getOrCreate(
        FetchAuthSessionStateMachine.type,
      );
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
      return state.session;
    }

    setUp(() {
      secureStorage = MockSecureStorage();
      stateMachine = CognitoAuthStateMachine()
        ..addInstance(secureStorage)
        ..addInstance(mockConfig)
        ..addInstance(authConfig);
    });

    group('User Pool + Identity Pool', () {
      setUp(() {
        config = mockConfig;
      });
      group('credentials & tokens valid', () {
        setUp(() {
          seedStorage(
            secureStorage,
            identityPoolKeys: identityPoolKeys,
            userPoolKeys: userPoolKeys,
          );
        });

        group('fetch', () {
          late CognitoAuthSession session;
          setUp(() async {
            await configureAmplify(config);
            session = await fetchAuthSession(willRefresh: false);
          });

          test('should return isSignedIn=true', () {
            expect(session.isSignedIn, isTrue);
          });

          test('should return existing user sub', () {
            expect(session.userSub, userSub);
          });

          test('should return existing user pool tokens', () {
            expect(session.userPoolTokens!.accessToken, accessToken);
            expect(session.userPoolTokens!.idToken, idToken);
            expect(session.userPoolTokens!.refreshToken, refreshToken);
          });

          test('should return existing credentials', () {
            expect(session.credentials!.accessKeyId, accessKeyId);
            expect(session.credentials!.secretAccessKey, secretAccessKey);
          });

          test('should return existing identityId', () {
            expect(session.identityId, identityId);
          });
        });
      });

      group('expired credentials', () {
        setUp(() {
          seedStorage(
            secureStorage,
            identityPoolKeys: identityPoolKeys,
            userPoolKeys: userPoolKeys,
          );
          secureStorage.write(
            key: identityPoolKeys[CognitoIdentityPoolKey.expiration],
            value: DateTime.now().toIso8601String(),
          );
        });

        group('fetch', () {
          group('success', () {
            setUp(() async {
              await configureAmplify(config);
              stateMachine.addInstance<CognitoIdentityClient>(
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
              );
              session = await fetchAuthSession(willRefresh: true);
            });

            test('should return isSignedIn=true', () {
              expect(session.isSignedIn, isTrue);
            });

            test('should return existing user sub', () {
              expect(session.userSub, userSub);
            });

            test('should return existing user pool tokens', () {
              expect(session.userPoolTokens!.accessToken, accessToken);
              expect(session.userPoolTokens!.idToken, idToken);
              expect(session.userPoolTokens!.refreshToken, refreshToken);
            });

            test('should return new credentials', () {
              final credentials = session.credentials!;
              expect(credentials.accessKeyId, newAccessKeyId);
              expect(credentials.secretAccessKey, newSecretAccessKey);
            });

            test('should return existing identityId', () {
              expect(session.identityId, identityId);
            });
          });
          group('error', () {
            setUp(() async {
              await configureAmplify(config);
              stateMachine.addInstance<CognitoIdentityClient>(
                MockCognitoIdentityClient(
                  getCredentialsForIdentity: expectAsync0(
                    () async => throw _NetworkException(),
                  ),
                ),
              );
              session = await fetchAuthSession(willRefresh: true);
            });

            test('should return isSignedIn=true', () {
              expect(session.isSignedIn, isTrue);
            });

            test('should return existing user sub', () {
              expect(session.userSub, userSub);
            });

            test('should return existing user pool tokens', () {
              expect(session.userPoolTokens!.accessToken, accessToken);
              expect(session.userPoolTokens!.idToken, idToken);
              expect(session.userPoolTokens!.refreshToken, refreshToken);
            });

            test('should throw when accessing credentials', () {
              expect(
                () => session.credentials,
                throwsA(isA<_NetworkException>()),
              );
            });

            test('should return existing identityId', () {
              expect(session.identityId, identityId);
            });
          });
        });
      });

      group('expired ID Token', () {
        setUp(() {
          seedStorage(
            secureStorage,
            identityPoolKeys: identityPoolKeys,
            userPoolKeys: userPoolKeys,
          );
          secureStorage.write(
            key: userPoolKeys[CognitoUserPoolKey.idToken],
            value: expiredIdToken.raw,
          );
        });

        group('fetch', () {
          group('success', () {
            setUp(() async {
              await configureAmplify(config);
              stateMachine.addInstance<CognitoIdentityProviderClient>(
                MockCognitoIdentityProviderClient(
                  initiateAuth: expectAsync0(
                    () async => InitiateAuthResponse(
                      authenticationResult: AuthenticationResultType(
                        accessToken: accessToken.raw,
                        refreshToken: refreshToken,
                        idToken: newIdToken.raw,
                      ),
                    ),
                  ),
                ),
              );
              session = await fetchAuthSession(willRefresh: true);
            });

            test('should return isSignedIn=true', () {
              expect(session.isSignedIn, isTrue);
            });

            test('should return existing user sub', () {
              expect(session.userSub, userSub);
            });

            test('should return new user pool tokens', () {
              expect(session.userPoolTokens!.accessToken, accessToken);
              expect(session.userPoolTokens!.idToken, newIdToken);
              expect(session.userPoolTokens!.refreshToken, refreshToken);
            });

            test('should return existing credentials', () {
              expect(session.credentials!.accessKeyId, accessKeyId);
              expect(session.credentials!.secretAccessKey, secretAccessKey);
            });

            test('should return existing identityId', () {
              expect(session.identityId, identityId);
            });
          });
          group('error', () {
            setUp(() async {
              await configureAmplify(config);
              stateMachine.addInstance<CognitoIdentityProviderClient>(
                MockCognitoIdentityProviderClient(
                  initiateAuth: expectAsync0(
                    () async => throw _NetworkException(),
                  ),
                ),
              );
              session = await fetchAuthSession(willRefresh: true);
            });

            test('should return isSignedIn=true', () {
              expect(session.isSignedIn, isTrue);
            });

            test('should return existing user sub', () {
              expect(session.userSub, userSub);
            });

            test('should throw when accessing user pool tokens', () {
              expect(
                () => session.userPoolTokens,
                throwsA(isA<_NetworkException>()),
              );
            });

            test('should return existing credentials', () {
              expect(session.credentials!.accessKeyId, accessKeyId);
              expect(session.credentials!.secretAccessKey, secretAccessKey);
            });

            test('should return existing identityId', () {
              expect(session.identityId, identityId);
            });
          });
        });
      });

      group('expired Access Token', () {
        setUp(() {
          seedStorage(
            secureStorage,
            identityPoolKeys: identityPoolKeys,
            userPoolKeys: userPoolKeys,
          );
          secureStorage.write(
            key: userPoolKeys[CognitoUserPoolKey.accessToken],
            value: expiredAccessToken.raw,
          );
        });

        group('fetch', () {
          group('success', () {
            setUp(() async {
              await configureAmplify(config);
              stateMachine.addInstance<CognitoIdentityProviderClient>(
                MockCognitoIdentityProviderClient(
                  initiateAuth: expectAsync0(
                    () async => InitiateAuthResponse(
                      authenticationResult: AuthenticationResultType(
                        accessToken: newAccessToken.raw,
                        refreshToken: refreshToken,
                        idToken: idToken.raw,
                      ),
                    ),
                  ),
                ),
              );
              session = await fetchAuthSession(willRefresh: true);
            });

            test('should return isSignedIn=true', () {
              expect(session.isSignedIn, isTrue);
            });

            test('should return existing user sub', () {
              expect(session.userSub, userSub);
            });

            test('should return new user pool tokens', () {
              expect(session.userPoolTokens!.accessToken, newAccessToken);
              expect(session.userPoolTokens!.idToken, idToken);
              expect(session.userPoolTokens!.refreshToken, refreshToken);
            });

            test('should return existing credentials', () {
              expect(session.credentials!.accessKeyId, accessKeyId);
              expect(session.credentials!.secretAccessKey, secretAccessKey);
            });

            test('should return existing identityId', () {
              expect(session.identityId, identityId);
            });
          });
          group('error', () {
            setUp(() async {
              await configureAmplify(config);
              stateMachine.addInstance<CognitoIdentityProviderClient>(
                MockCognitoIdentityProviderClient(
                  initiateAuth: expectAsync0(
                    () async => throw _NetworkException(),
                  ),
                ),
              );
              session = await fetchAuthSession(willRefresh: true);
            });

            test('should return isSignedIn=true', () {
              expect(session.isSignedIn, isTrue);
            });

            test('should return existing user sub', () {
              expect(session.userSub, userSub);
            });

            test('should throw when accessing user pool tokens', () {
              expect(
                () => session.userPoolTokens,
                throwsA(isA<_NetworkException>()),
              );
            });

            test('should return existing credentials', () {
              expect(session.credentials!.accessKeyId, accessKeyId);
              expect(session.credentials!.secretAccessKey, secretAccessKey);
            });

            test('should return existing identityId', () {
              expect(session.identityId, identityId);
            });
          });
        });
      });

      group('force refresh', () {
        setUp(() {
          seedStorage(
            secureStorage,
            identityPoolKeys: identityPoolKeys,
            userPoolKeys: userPoolKeys,
          );
        });
        group('success', () {
          setUp(() async {
            await configureAmplify(config);
            stateMachine
              ..addInstance<CognitoIdentityProviderClient>(
                MockCognitoIdentityProviderClient(
                  initiateAuth: expectAsync0(
                    () async => InitiateAuthResponse(
                      authenticationResult: AuthenticationResultType(
                        accessToken: newAccessToken.raw,
                        refreshToken: refreshToken,
                        idToken: newIdToken.raw,
                      ),
                    ),
                  ),
                ),
              )
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
              );
            session = await fetchAuthSession(
              willRefresh: true,
              forceRefresh: true,
            );
          });

          test('should return isSignedIn=true', () {
            expect(session.isSignedIn, isTrue);
          });

          test('should return existing user sub', () {
            expect(session.userSub, userSub);
          });

          test('should return new user pool tokens', () {
            expect(session.userPoolTokens!.accessToken, newAccessToken);
            expect(session.userPoolTokens!.idToken, newIdToken);
            expect(session.userPoolTokens!.refreshToken, refreshToken);
          });

          test('should return new credentials', () {
            final credentials = session.credentials!;
            expect(credentials.accessKeyId, newAccessKeyId);
            expect(credentials.secretAccessKey, newSecretAccessKey);
          });

          test('should return existing identityId', () {
            expect(session.identityId, identityId);
          });
        });

        group('error', () {
          setUp(() async {
            await configureAmplify(config);
            stateMachine
              ..addInstance<CognitoIdentityProviderClient>(
                MockCognitoIdentityProviderClient(
                  initiateAuth: expectAsync0(
                    () async => throw _NetworkException(),
                  ),
                ),
              )
              ..addInstance<CognitoIdentityClient>(
                MockCognitoIdentityClient(
                  getCredentialsForIdentity: expectAsync0(
                    () async => throw _NetworkException(),
                  ),
                ),
              );
            session = await fetchAuthSession(
              willRefresh: true,
              forceRefresh: true,
            );
          });

          test('should return isSignedIn=true', () {
            expect(session.isSignedIn, isTrue);
          });

          test('should return existing user sub', () {
            expect(session.userSub, userSub);
          });

          test('should throw when accessing user pool tokens', () {
            expect(
              () => session.userPoolTokens,
              throwsA(isA<_NetworkException>()),
            );
          });

          test('should throw when accessing credentials', () {
            expect(
              () => session.credentials,
              throwsA(isA<_NetworkException>()),
            );
          });

          test('should return existing identityId', () {
            expect(session.identityId, identityId);
          });
        });
      });

      group('no user pool tokens (not signed in)', () {
        group('fetch', () {
          setUp(() async {
            await configureAmplify(config);
            session = await fetchAuthSession(willRefresh: false);
          });

          test('should return isSignedIn=false', () {
            expect(session.isSignedIn, isFalse);
          });

          test('should return null user sub', () {
            expect(session.userSub, isNull);
          });

          test('should return null user pool tokens', () {
            expect(session.userPoolTokens, isNull);
          });

          test('should return null credentials', () {
            expect(session.credentials, isNull);
          });

          test('should return null identityId', () {
            expect(session.identityId, isNull);
          });
        });
      });
    });
    group('User Pool Only Config', () {
      setUp(() {
        config = userPoolOnlyConfig;
      });
      group('tokens valid', () {
        setUp(() {
          seedStorage(secureStorage, userPoolKeys: userPoolKeys);
        });

        group('fetch', () {
          setUp(() async {
            await configureAmplify(config);
            session = await fetchAuthSession(willRefresh: false);
          });

          test('should return isSignedIn=true', () {
            expect(session.isSignedIn, isTrue);
          });

          test('should return existing user sub', () {
            expect(session.userSub, userSub);
          });

          test('should return existing user pool tokens', () {
            expect(session.userPoolTokens!.accessToken, accessToken);
            expect(session.userPoolTokens!.idToken, idToken);
            expect(session.userPoolTokens!.refreshToken, refreshToken);
          });

          test('should throw when accessing credentials', () {
            expect(
              () => session.credentials,
              throwsA(isA<InvalidAccountTypeException>()),
            );
          });

          test('should throw when accessing identityId', () {
            expect(
              () => session.credentials,
              throwsA(isA<InvalidAccountTypeException>()),
            );
          });
        });
      });

      group('expired ID Token', () {
        setUp(() {
          seedStorage(secureStorage, userPoolKeys: userPoolKeys);
          secureStorage.write(
            key: userPoolKeys[CognitoUserPoolKey.idToken],
            value: expiredIdToken.raw,
          );
        });

        group('fetch', () {
          group('success', () {
            setUp(() async {
              await configureAmplify(config);
              stateMachine.addInstance<CognitoIdentityProviderClient>(
                MockCognitoIdentityProviderClient(
                  initiateAuth: expectAsync0(
                    () async => InitiateAuthResponse(
                      authenticationResult: AuthenticationResultType(
                        accessToken: accessToken.raw,
                        refreshToken: refreshToken,
                        idToken: newIdToken.raw,
                      ),
                    ),
                  ),
                ),
              );
              session = await fetchAuthSession(willRefresh: true);
            });

            test('should return isSignedIn=true', () {
              expect(session.isSignedIn, isTrue);
            });

            test('should return existing user sub', () {
              expect(session.userSub, userSub);
            });

            test('should return new user pool tokens', () {
              expect(session.userPoolTokens!.accessToken, accessToken);
              expect(session.userPoolTokens!.idToken, newIdToken);
              expect(session.userPoolTokens!.refreshToken, refreshToken);
            });

            test('should throw when accessing credentials', () {
              expect(
                () => session.credentials,
                throwsA(isA<InvalidAccountTypeException>()),
              );
            });

            test('should throw when identityId', () {
              expect(
                () => session.identityId,
                throwsA(isA<InvalidAccountTypeException>()),
              );
            });
          });
          group('error', () {
            setUp(() async {
              await configureAmplify(config);
              stateMachine.addInstance<CognitoIdentityProviderClient>(
                MockCognitoIdentityProviderClient(
                  initiateAuth: expectAsync0(
                    () async => throw _NetworkException(),
                  ),
                ),
              );
              session = await fetchAuthSession(willRefresh: true);
            });
            test('should return isSignedIn=true', () {
              expect(session.isSignedIn, isTrue);
            });

            test('should return existing user sub', () {
              expect(session.userSub, userSub);
            });

            test('should throw when accessing user pool tokens', () {
              expect(
                () => session.userPoolTokens,
                throwsA(isA<_NetworkException>()),
              );
            });

            test('should throw when accessing credentials', () {
              expect(
                () => session.credentials,
                throwsA(isA<InvalidAccountTypeException>()),
              );
            });

            test('should throw when identityId', () {
              expect(
                () => session.identityId,
                throwsA(isA<InvalidAccountTypeException>()),
              );
            });
          });
        });
      });

      group('expired Access Token', () {
        setUp(() {
          seedStorage(secureStorage, userPoolKeys: userPoolKeys);
          secureStorage.write(
            key: userPoolKeys[CognitoUserPoolKey.accessToken],
            value: expiredAccessToken.raw,
          );
        });

        group('fetch', () {
          group('success', () {
            setUp(() async {
              await configureAmplify(config);
              stateMachine.addInstance<CognitoIdentityProviderClient>(
                MockCognitoIdentityProviderClient(
                  initiateAuth: expectAsync0(
                    () async => InitiateAuthResponse(
                      authenticationResult: AuthenticationResultType(
                        accessToken: newAccessToken.raw,
                        refreshToken: refreshToken,
                        idToken: idToken.raw,
                      ),
                    ),
                  ),
                ),
              );
              session = await fetchAuthSession(willRefresh: true);
            });

            test('should return isSignedIn=true', () {
              expect(session.isSignedIn, isTrue);
            });

            test('should return existing user sub', () {
              expect(session.userSub, userSub);
            });

            test('should return new user pool tokens', () {
              expect(session.userPoolTokens!.accessToken, newAccessToken);
              expect(session.userPoolTokens!.idToken, idToken);
              expect(session.userPoolTokens!.refreshToken, refreshToken);
            });

            test('should throw when accessing credentials', () {
              expect(
                () => session.credentials,
                throwsA(isA<InvalidAccountTypeException>()),
              );
            });

            test('should throw when identityId', () {
              expect(
                () => session.identityId,
                throwsA(isA<InvalidAccountTypeException>()),
              );
            });
          });
          group('error', () {
            setUp(() async {
              await configureAmplify(config);
              stateMachine.addInstance<CognitoIdentityProviderClient>(
                MockCognitoIdentityProviderClient(
                  initiateAuth: expectAsync0(
                    () async => throw _NetworkException(),
                  ),
                ),
              );
              session = await fetchAuthSession(willRefresh: true);
            });
            test('should return isSignedIn=true', () {
              expect(session.isSignedIn, isTrue);
            });

            test('should return existing user sub', () {
              expect(session.userSub, userSub);
            });

            test('should throw when accessing user pool tokens', () {
              expect(
                () => session.userPoolTokens,
                throwsA(isA<_NetworkException>()),
              );
            });

            test('should throw when accessing credentials', () {
              expect(
                () => session.credentials,
                throwsA(isA<InvalidAccountTypeException>()),
              );
            });

            test('should throw when accessing identityId', () {
              expect(
                () => session.identityId,
                throwsA(isA<InvalidAccountTypeException>()),
              );
            });
          });
        });
      });

      group('force refresh', () {
        setUp(() {
          seedStorage(
            secureStorage,
            identityPoolKeys: identityPoolKeys,
            userPoolKeys: userPoolKeys,
          );
        });
        group('success', () {
          setUp(() async {
            await configureAmplify(config);
            stateMachine.addInstance<CognitoIdentityProviderClient>(
              MockCognitoIdentityProviderClient(
                initiateAuth: expectAsync0(
                  () async => InitiateAuthResponse(
                    authenticationResult: AuthenticationResultType(
                      accessToken: newAccessToken.raw,
                      refreshToken: refreshToken,
                      idToken: newIdToken.raw,
                    ),
                  ),
                ),
              ),
            );
            session = await fetchAuthSession(
              willRefresh: true,
              forceRefresh: true,
            );
          });

          test('should return isSignedIn=true', () {
            expect(session.isSignedIn, isTrue);
          });

          test('should return existing user sub', () {
            expect(session.userSub, userSub);
          });
          test('should return new user pool tokens', () {
            expect(session.userPoolTokens!.accessToken, newAccessToken);
            expect(session.userPoolTokens!.idToken, newIdToken);
            expect(session.userPoolTokens!.refreshToken, refreshToken);
          });

          test('should throw when accessing credentials', () {
            expect(
              () => session.credentials,
              throwsA(isA<InvalidAccountTypeException>()),
            );
          });

          test('should throw when accessing identityId', () {
            expect(
              () => session.identityId,
              throwsA(isA<InvalidAccountTypeException>()),
            );
          });
        });

        group('error', () {
          setUp(() async {
            await configureAmplify(config);
            stateMachine.addInstance<CognitoIdentityProviderClient>(
              MockCognitoIdentityProviderClient(
                initiateAuth: expectAsync0(
                  () async => throw _NetworkException(),
                ),
              ),
            );
            session = await fetchAuthSession(
              willRefresh: true,
              forceRefresh: true,
            );
          });

          test('should return isSignedIn=true', () {
            expect(session.isSignedIn, isTrue);
          });

          test('should return existing user sub', () {
            expect(session.userSub, userSub);
          });

          test('should throw when accessing user pool tokens', () {
            expect(
              () => session.userPoolTokens,
              throwsA(isA<_NetworkException>()),
            );
          });

          test('should throw when accessing credentials', () {
            expect(
              () => session.credentials,
              throwsA(isA<InvalidAccountTypeException>()),
            );
          });

          test('should throw when accessing identityId', () {
            expect(
              () => session.identityId,
              throwsA(isA<InvalidAccountTypeException>()),
            );
          });
        });
      });

      group('no user pool tokens (not signed in)', () {
        group('fetch', () {
          setUp(() async {
            await configureAmplify(config);
            session = await fetchAuthSession(willRefresh: false);
          });

          test('should return isSignedIn=false', () {
            expect(session.isSignedIn, isFalse);
          });

          test('should return null user sub', () {
            expect(session.userSub, isNull);
          });

          test('should return null user pool tokens', () {
            expect(session.userPoolTokens, isNull);
          });
          test('should throw when accessing credentials', () {
            expect(
              () => session.credentials,
              throwsA(isA<InvalidAccountTypeException>()),
            );
          });

          test('should throw when accessing identityId', () {
            expect(
              () => session.identityId,
              throwsA(isA<InvalidAccountTypeException>()),
            );
          });
        });
      });
    });
  });
}

/// A mock exception when attempting to fetch new credentials.
class _NetworkException implements Exception {}
