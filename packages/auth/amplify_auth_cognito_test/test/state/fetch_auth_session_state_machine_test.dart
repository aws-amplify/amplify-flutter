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
      await stateMachine.dispatch(ConfigurationEvent.configure(config));
      await stateMachine.stream.whereType<Configured>().first;
    }

    Future<CognitoAuthSession> fetchAuthSession({
      bool forceRefresh = false,
      required bool willRefresh,
    }) async {
      stateMachine.internalDispatch(
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
            expect(session.userSubResult.value, userSub);
          });

          test('should return existing user pool tokens', () {
            final userPoolTokens = session.userPoolTokensResult.value;
            expect(userPoolTokens.accessToken, accessToken);
            expect(userPoolTokens.idToken, idToken);
            expect(userPoolTokens.refreshToken, refreshToken);
          });

          test('should return existing credentials', () {
            final credentials = session.credentialsResult.value;
            expect(credentials.accessKeyId, accessKeyId);
            expect(credentials.secretAccessKey, secretAccessKey);
          });

          test('should return existing identityId', () {
            expect(session.identityIdResult.value, identityId);
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
              expect(session.userSubResult.value, userSub);
            });

            test('should return existing user pool tokens', () {
              final userPoolTokens = session.userPoolTokensResult.value;
              expect(userPoolTokens.accessToken, accessToken);
              expect(userPoolTokens.idToken, idToken);
              expect(userPoolTokens.refreshToken, refreshToken);
            });

            test('should return new credentials', () {
              final credentials = session.credentialsResult.value;
              expect(credentials.accessKeyId, newAccessKeyId);
              expect(credentials.secretAccessKey, newSecretAccessKey);
            });

            test('should return existing identityId', () {
              expect(session.identityIdResult.value, identityId);
            });
          });

          group('network error', () {
            setUp(() async {
              await configureAmplify(config);
              stateMachine.addInstance<CognitoIdentityClient>(
                MockCognitoIdentityClient(
                  getCredentialsForIdentity: expectAsync0(
                    () async => throw AWSHttpException(
                      AWSHttpRequest.get(Uri()),
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
              expect(session.userSubResult.value, userSub);
            });

            test('should return existing user pool tokens', () {
              final userPoolTokens = session.userPoolTokensResult.value;
              expect(userPoolTokens.accessToken, accessToken);
              expect(userPoolTokens.idToken, idToken);
              expect(userPoolTokens.refreshToken, refreshToken);
            });

            test(
              'should throw a NetworkException when accessing credentials',
              () {
                expect(
                  () => session.credentialsResult.value,
                  throwsA(isA<NetworkException>()),
                );
              },
            );

            test(
              'should throw a NetworkException when accessing identityId',
              () {
                expect(
                  () => session.identityIdResult.value,
                  throwsA(isA<NetworkException>()),
                );
              },
            );
          });

          group('unknown error', () {
            setUp(() async {
              await configureAmplify(config);
              stateMachine.addInstance<CognitoIdentityClient>(
                MockCognitoIdentityClient(
                  getCredentialsForIdentity: expectAsync0(
                    () async => throw _ServiceException(),
                  ),
                ),
              );
              session = await fetchAuthSession(willRefresh: true);
            });

            test('should return isSignedIn=true', () {
              expect(session.isSignedIn, isTrue);
            });

            test('should return existing user sub', () {
              expect(session.userSubResult.value, userSub);
            });

            test('should return existing user pool tokens', () {
              final userPoolTokens = session.userPoolTokensResult.value;
              expect(userPoolTokens.accessToken, accessToken);
              expect(userPoolTokens.idToken, idToken);
              expect(userPoolTokens.refreshToken, refreshToken);
            });

            test('should throw when accessing credentials', () {
              expect(
                () => session.credentialsResult.value,
                throwsA(isA<UnknownException>()),
              );
            });

            test('should throw when accessing identityId', () {
              expect(
                () => session.identityIdResult.value,
                throwsA(isA<UnknownException>()),
              );
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
                        accessToken: newAccessToken.raw,
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
              expect(session.userSubResult.value, userSub);
            });

            test('should return new user pool tokens', () {
              final userPoolTokens = session.userPoolTokensResult.value;
              expect(userPoolTokens.accessToken, newAccessToken);
              expect(userPoolTokens.idToken, newIdToken);
              expect(userPoolTokens.refreshToken, refreshToken);
            });

            test('should return existing credentials', () {
              final credentials = session.credentialsResult.value;
              expect(credentials.accessKeyId, accessKeyId);
              expect(credentials.secretAccessKey, secretAccessKey);
            });

            test('should return existing identityId', () {
              expect(session.identityIdResult.value, identityId);
            });
          });

          group('network error', () {
            setUp(() async {
              await configureAmplify(config);
              stateMachine.addInstance<CognitoIdentityProviderClient>(
                MockCognitoIdentityProviderClient(
                  initiateAuth: expectAsync0(
                    () async => throw AWSHttpException(
                      AWSHttpRequest.get(Uri()),
                    ),
                  ),
                ),
              );
              session = await fetchAuthSession(willRefresh: true);
            });

            test('should return isSignedIn=true', () {
              expect(session.isSignedIn, isTrue);
            });

            test('should throw when accessing user sub', () {
              expect(
                () => session.userSubResult.value,
                throwsA(isA<NetworkException>()),
              );
            });

            test('should throw when accessing user pool tokens', () {
              expect(
                () => session.userPoolTokensResult.value,
                throwsA(isA<NetworkException>()),
              );
            });

            test('should return existing credentials', () {
              final credentials = session.credentialsResult.value;
              expect(credentials.accessKeyId, accessKeyId);
              expect(credentials.secretAccessKey, secretAccessKey);
            });

            test('should return existing identityId', () {
              expect(session.identityIdResult.value, identityId);
            });
          });

          group('unknown error', () {
            setUp(() async {
              await configureAmplify(config);
              stateMachine.addInstance<CognitoIdentityProviderClient>(
                MockCognitoIdentityProviderClient(
                  initiateAuth: expectAsync0(
                    () async => throw _ServiceException(),
                  ),
                ),
              );
              session = await fetchAuthSession(willRefresh: true);
            });

            test('should return isSignedIn=true', () {
              expect(session.isSignedIn, isTrue);
            });

            test('should throw when accessing user sub', () {
              expect(
                () => session.userSubResult.value,
                throwsA(isA<UnknownException>()),
              );
            });

            test('should throw when accessing user pool tokens', () {
              expect(
                () => session.userPoolTokensResult.value,
                throwsA(isA<UnknownException>()),
              );
            });

            test('should return existing credentials', () {
              final credentials = session.credentialsResult.value;
              expect(credentials.accessKeyId, accessKeyId);
              expect(credentials.secretAccessKey, secretAccessKey);
            });

            test('should return existing identityId', () {
              expect(session.identityIdResult.value, identityId);
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
              expect(session.userSubResult.value, userSub);
            });

            test('should return new user pool tokens', () {
              final userPoolTokens = session.userPoolTokensResult.value;
              expect(userPoolTokens.accessToken, newAccessToken);
              expect(userPoolTokens.idToken, newIdToken);
              expect(userPoolTokens.refreshToken, refreshToken);
            });

            test('should return existing credentials', () {
              final credentials = session.credentialsResult.value;
              expect(credentials.accessKeyId, accessKeyId);
              expect(credentials.secretAccessKey, secretAccessKey);
            });

            test('should return existing identityId', () {
              expect(session.identityIdResult.value, identityId);
            });
          });
          group('network error', () {
            setUp(() async {
              await configureAmplify(config);
              stateMachine.addInstance<CognitoIdentityProviderClient>(
                MockCognitoIdentityProviderClient(
                  initiateAuth: expectAsync0(
                    () async => throw AWSHttpException(
                      AWSHttpRequest.get(Uri()),
                    ),
                  ),
                ),
              );
              session = await fetchAuthSession(willRefresh: true);
            });

            test('should return isSignedIn=true', () {
              expect(session.isSignedIn, isTrue);
            });

            test('should throw when accessing user sub', () {
              expect(
                () => session.userSubResult.value,
                throwsA(isA<NetworkException>()),
              );
            });

            test('should throw when accessing user pool tokens', () {
              expect(
                () => session.userPoolTokensResult.value,
                throwsA(isA<NetworkException>()),
              );
            });

            test('should return existing credentials', () {
              final credentials = session.credentialsResult.value;
              expect(credentials.accessKeyId, accessKeyId);
              expect(credentials.secretAccessKey, secretAccessKey);
            });

            test('should return existing identityId', () {
              expect(session.identityIdResult.value, identityId);
            });
          });

          group('unknown error', () {
            setUp(() async {
              await configureAmplify(config);
              stateMachine.addInstance<CognitoIdentityProviderClient>(
                MockCognitoIdentityProviderClient(
                  initiateAuth: expectAsync0(
                    () async => throw _ServiceException(),
                  ),
                ),
              );
              session = await fetchAuthSession(willRefresh: true);
            });

            test('should return isSignedIn=true', () {
              expect(session.isSignedIn, isTrue);
            });

            test('should throw when accessing user sub', () {
              expect(
                () => session.userSubResult.value,
                throwsA(isA<UnknownException>()),
              );
            });

            test('should throw when accessing user pool tokens', () {
              expect(
                () => session.userPoolTokensResult.value,
                throwsA(isA<UnknownException>()),
              );
            });

            test('should return existing credentials', () {
              final credentials = session.credentialsResult.value;
              expect(credentials.accessKeyId, accessKeyId);
              expect(credentials.secretAccessKey, secretAccessKey);
            });

            test('should return existing identityId', () {
              expect(session.identityIdResult.value, identityId);
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
            expect(session.userSubResult.value, userSub);
          });

          test('should return new user pool tokens', () {
            final userPoolTokens = session.userPoolTokensResult.value;
            expect(userPoolTokens.accessToken, newAccessToken);
            expect(userPoolTokens.idToken, newIdToken);
            expect(userPoolTokens.refreshToken, refreshToken);
          });

          test('should return new credentials', () {
            final credentials = session.credentialsResult.value;
            expect(credentials.accessKeyId, newAccessKeyId);
            expect(credentials.secretAccessKey, newSecretAccessKey);
          });

          test('should return existing identityId', () {
            expect(session.identityIdResult.value, identityId);
          });
        });

        group('network error', () {
          setUp(() async {
            await configureAmplify(config);
            stateMachine
              ..addInstance<CognitoIdentityProviderClient>(
                MockCognitoIdentityProviderClient(
                  initiateAuth: expectAsync0(
                    () async => throw AWSHttpException(
                      AWSHttpRequest.get(Uri()),
                    ),
                  ),
                ),
              )
              ..addInstance<CognitoIdentityClient>(
                MockCognitoIdentityClient(
                  getCredentialsForIdentity: expectAsync0(
                    () async => throw AWSHttpException(
                      AWSHttpRequest.get(Uri()),
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

          test('should throw when accessing user sub', () {
            expect(
              () => session.userSubResult.value,
              throwsA(isA<NetworkException>()),
            );
          });

          test('should throw when accessing user pool tokens', () {
            expect(
              () => session.userPoolTokensResult.value,
              throwsA(isA<NetworkException>()),
            );
          });

          test('should throw when accessing credentials', () {
            expect(
              () => session.credentialsResult.value,
              throwsA(isA<NetworkException>()),
            );
          });

          test('should throw when accessing identityId', () {
            expect(
              () => session.identityIdResult.value,
              throwsA(isA<NetworkException>()),
            );
          });
        });

        group('unknown error', () {
          setUp(() async {
            await configureAmplify(config);
            stateMachine
              ..addInstance<CognitoIdentityProviderClient>(
                MockCognitoIdentityProviderClient(
                  initiateAuth: expectAsync0(
                    () async => throw _ServiceException(),
                  ),
                ),
              )
              ..addInstance<CognitoIdentityClient>(
                MockCognitoIdentityClient(
                  getCredentialsForIdentity: expectAsync0(
                    () async => throw _ServiceException(),
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

          test('should throw when accessing user sub', () {
            expect(
              () => session.userSubResult.value,
              throwsA(isA<UnknownException>()),
            );
          });

          test('should throw when accessing user pool tokens', () {
            expect(
              () => session.userPoolTokensResult.value,
              throwsA(isA<UnknownException>()),
            );
          });

          test('should throw when accessing credentials', () {
            expect(
              () => session.credentialsResult.value,
              throwsA(isA<UnknownException>()),
            );
          });

          test('should throw when accessing identityId', () {
            expect(
              () => session.identityIdResult.value,
              throwsA(isA<UnknownException>()),
            );
          });
        });
      });

      group('no user pool tokens (not signed in)', () {
        group('unauthorized access supported', () {
          group('fetch', () {
            setUp(() async {
              await configureAmplify(config);
              stateMachine.addInstance<CognitoIdentityClient>(
                MockCognitoIdentityClient(
                  getId: expectAsync0(
                    () async => GetIdResponse(identityId: identityId),
                  ),
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

            test('should return isSignedIn=false', () {
              expect(session.isSignedIn, isFalse);
            });

            test('should throw when accessing user sub', () {
              expect(
                () => session.userSubResult.value,
                throwsA(isA<SignedOutException>()),
              );
            });

            test('should throw when accessing user pool tokens', () {
              expect(
                () => session.userPoolTokensResult.value,
                throwsA(isA<SignedOutException>()),
              );
            });

            test('should return new credentials', () {
              final credentials = session.credentialsResult.value;
              expect(credentials.accessKeyId, newAccessKeyId);
              expect(credentials.secretAccessKey, newSecretAccessKey);
            });

            test('should return identityId', () {
              expect(session.identityIdResult.value, identityId);
            });
          });
        });

        group('unauthorized access not supported', () {
          group('fetch', () {
            setUp(() async {
              await configureAmplify(config);
              stateMachine.addInstance<CognitoIdentityClient>(
                MockCognitoIdentityClient(
                  getId: expectAsync0(
                    () async => throw const AuthNotAuthorizedException(
                      'Not Authorized',
                    ),
                  ),
                ),
              );

              session = await fetchAuthSession(willRefresh: true);
            });

            test('should return isSignedIn=false', () {
              expect(session.isSignedIn, isFalse);
            });

            test('should throw when accessing user sub', () {
              expect(
                () => session.userSubResult.value,
                throwsA(isA<SignedOutException>()),
              );
            });

            test('should throw when accessing user pool tokens', () {
              expect(
                () => session.userPoolTokensResult.value,
                throwsA(isA<SignedOutException>()),
              );
            });

            test('should throw when accessing credentials', () {
              expect(
                () => session.credentialsResult.value,
                throwsA(isA<AuthNotAuthorizedException>()),
              );
            });

            test('should throw when accessing identityId', () {
              expect(
                () => session.identityIdResult.value,
                throwsA(isA<AuthNotAuthorizedException>()),
              );
            });
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
            expect(session.userSubResult.value, userSub);
          });

          test('should return existing user pool tokens', () {
            final userPoolTokens = session.userPoolTokensResult.value;
            expect(userPoolTokens.accessToken, accessToken);
            expect(userPoolTokens.idToken, idToken);
            expect(userPoolTokens.refreshToken, refreshToken);
          });

          test('should throw when accessing credentials', () {
            expect(
              () => session.credentialsResult.value,
              throwsA(isA<InvalidAccountTypeException>()),
            );
          });

          test('should throw when accessing identityId', () {
            expect(
              () => session.identityIdResult.value,
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
                        accessToken: newAccessToken.raw,
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
              expect(session.userSubResult.value, userSub);
            });

            test('should return new user pool tokens', () {
              final userPoolTokens = session.userPoolTokensResult.value;
              expect(userPoolTokens.accessToken, newAccessToken);
              expect(userPoolTokens.idToken, newIdToken);
              expect(userPoolTokens.refreshToken, refreshToken);
            });

            test('should throw when accessing credentials', () {
              expect(
                () => session.credentialsResult.value,
                throwsA(isA<InvalidAccountTypeException>()),
              );
            });

            test('should throw when accessing identityId', () {
              expect(
                () => session.identityIdResult.value,
                throwsA(isA<InvalidAccountTypeException>()),
              );
            });
          });
          group('unknown error', () {
            setUp(() async {
              await configureAmplify(config);
              stateMachine.addInstance<CognitoIdentityProviderClient>(
                MockCognitoIdentityProviderClient(
                  initiateAuth: expectAsync0(
                    () async => throw _ServiceException(),
                  ),
                ),
              );
              session = await fetchAuthSession(willRefresh: true);
            });
            test('should return isSignedIn=true', () {
              expect(session.isSignedIn, isTrue);
            });

            test('should throw when accessing user sub', () {
              expect(
                () => session.userSubResult.value,
                throwsA(isA<UnknownException>()),
              );
            });

            test('should throw when accessing user pool tokens', () {
              expect(
                () => session.userPoolTokensResult.value,
                throwsA(isA<UnknownException>()),
              );
            });

            test('should throw when accessing credentials', () {
              expect(
                () => session.credentialsResult.value,
                throwsA(isA<InvalidAccountTypeException>()),
              );
            });

            test('should throw when accessing identityId', () {
              expect(
                () => session.identityIdResult.value,
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
              expect(session.userSubResult.value, userSub);
            });

            test('should return new user pool tokens', () {
              final userPoolTokens = session.userPoolTokensResult.value;
              expect(userPoolTokens.accessToken, newAccessToken);
              expect(userPoolTokens.idToken, newIdToken);
              expect(userPoolTokens.refreshToken, refreshToken);
            });

            test('should throw when accessing credentials', () {
              expect(
                () => session.credentialsResult.value,
                throwsA(isA<InvalidAccountTypeException>()),
              );
            });

            test('should throw when accessing identityId', () {
              expect(
                () => session.identityIdResult.value,
                throwsA(isA<InvalidAccountTypeException>()),
              );
            });
          });
          group('unknown error', () {
            setUp(() async {
              await configureAmplify(config);
              stateMachine.addInstance<CognitoIdentityProviderClient>(
                MockCognitoIdentityProviderClient(
                  initiateAuth: expectAsync0(
                    () async => throw _ServiceException(),
                  ),
                ),
              );
              session = await fetchAuthSession(willRefresh: true);
            });
            test('should return isSignedIn=true', () {
              expect(session.isSignedIn, isTrue);
            });

            test('should throw when accessing user sub', () {
              expect(
                () => session.userSubResult.value,
                throwsA(isA<UnknownException>()),
              );
            });

            test('should throw when accessing user pool tokens', () {
              expect(
                () => session.userPoolTokensResult.value,
                throwsA(isA<UnknownException>()),
              );
            });

            test('should throw when accessing credentials', () {
              expect(
                () => session.credentialsResult.value,
                throwsA(isA<InvalidAccountTypeException>()),
              );
            });

            test('should throw when accessing identityId', () {
              expect(
                () => session.identityIdResult.value,
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
            expect(session.userSubResult.value, userSub);
          });

          test('should return new user pool tokens', () {
            final userPoolTokens = session.userPoolTokensResult.value;
            expect(userPoolTokens.accessToken, newAccessToken);
            expect(userPoolTokens.idToken, newIdToken);
            expect(userPoolTokens.refreshToken, refreshToken);
          });

          test('should throw when accessing credentials', () {
            expect(
              () => session.credentialsResult.value,
              throwsA(isA<InvalidAccountTypeException>()),
            );
          });

          test('should throw when accessing identityId', () {
            expect(
              () => session.identityIdResult.value,
              throwsA(isA<InvalidAccountTypeException>()),
            );
          });
        });

        group('unknown error', () {
          setUp(() async {
            await configureAmplify(config);
            stateMachine.addInstance<CognitoIdentityProviderClient>(
              MockCognitoIdentityProviderClient(
                initiateAuth: expectAsync0(
                  () async => throw _ServiceException(),
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

          test('should throw when accessing user sub', () {
            expect(
              () => session.userSubResult.value,
              throwsA(isA<UnknownException>()),
            );
          });

          test('should throw when accessing user pool tokens', () {
            expect(
              () => session.userPoolTokensResult.value,
              throwsA(isA<UnknownException>()),
            );
          });

          test('should throw when accessing credentials', () {
            expect(
              () => session.credentialsResult.value,
              throwsA(isA<InvalidAccountTypeException>()),
            );
          });

          test('should throw when accessing identityId', () {
            expect(
              () => session.identityIdResult.value,
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

          test('should throw when accessing user sub', () {
            expect(
              () => session.userSubResult.value,
              throwsA(isA<SignedOutException>()),
            );
          });

          test('should throw when accessing user pool tokens', () {
            expect(
              () => session.userPoolTokensResult.value,
              throwsA(isA<SignedOutException>()),
            );
          });

          test('should throw when accessing credentials', () {
            expect(
              () => session.credentialsResult.value,
              throwsA(isA<InvalidAccountTypeException>()),
            );
          });

          test('should throw when accessing identityId', () {
            expect(
              () => session.identityIdResult.value,
              throwsA(isA<InvalidAccountTypeException>()),
            );
          });
        });
      });
    });
  });
}

/// A mock exception thrown by a service.
class _ServiceException implements Exception {}
