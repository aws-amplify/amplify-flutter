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
      stateMachine.dispatch(ConfigurationEvent.configure(config)).ignore();
      await stateMachine.stream.whereType<Configured>().first;
    }

    Future<CognitoAuthSession> fetchAuthSession({
      bool forceRefresh = false,
      required bool willRefresh,
    }) async {
      final sm = stateMachine.getOrCreate(
        FetchAuthSessionStateMachine.type,
      );
      expect(
        sm.stream.startWith(sm.currentState),
        emitsInOrder(<Matcher>[
          isA<FetchAuthSessionIdle>(),
          isA<FetchAuthSessionFetching>(),
          if (willRefresh) isA<FetchAuthSessionRefreshing>(),
          isA<FetchAuthSessionSuccess>(),
        ]),
      );
      final sessionState =
          await stateMachine.dispatchAndComplete<FetchAuthSessionSuccess>(
        FetchAuthSessionEvent.fetch(
          CognitoSessionOptions(forceRefresh: forceRefresh),
        ),
      );
      return sessionState.session;
    }

    Future<FederateToIdentityPoolResult> federateToIdentityPool({
      required String token,
      required AuthProvider provider,
      String? developerProvidedIdentityId,
      required bool willRefresh,
    }) async {
      final sm = stateMachine.getOrCreate(
        FetchAuthSessionStateMachine.type,
      );
      final expectation = expectLater(
        sm.stream,
        emitsInOrder(<Matcher>[
          isA<FetchAuthSessionFetching>(),
          if (willRefresh) isA<FetchAuthSessionRefreshing>(),
          anyOf(
            isA<FetchAuthSessionSuccess>(),
            isA<FetchAuthSessionFailure>(),
          ),
        ]),
      );
      final sessionState =
          await stateMachine.dispatchAndComplete<FetchAuthSessionSuccess>(
        FetchAuthSessionEvent.federate(
          FederateToIdentityPoolRequest(
            provider: provider,
            token: token,
            options: FederateToIdentityPoolOptions(
              developerProvidedIdentityId: developerProvidedIdentityId,
            ),
          ),
        ),
      );
      await expectation;
      final session = sessionState.session;
      return FederateToIdentityPoolResult(
        identityId: session.identityIdResult.value,
        credentials: session.credentialsResult.value,
      );
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

      group('expired AWS credentials', () {
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

          group('not authorized error', () {
            setUp(() async {
              await configureAmplify(config);
              stateMachine.addInstance<CognitoIdentityClient>(
                MockCognitoIdentityClient(
                  getCredentialsForIdentity: expectAsync0(
                    () async => throw const AuthNotAuthorizedException(
                      'Not authorized',
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

            test('should throw when accessing credentials', () {
              expect(
                () => session.credentialsResult.value,
                throwsA(isA<SessionExpiredException>()),
              );
            });

            test('should throw when accessing identityId', () {
              expect(
                () => session.identityIdResult.value,
                throwsA(isA<SessionExpiredException>()),
              );
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
                  initiateAuth: expectAsync1(
                    (_) async => InitiateAuthResponse(
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

          group('not authorized error', () {
            setUp(() async {
              await configureAmplify(config);
              stateMachine.addInstance<CognitoIdentityProviderClient>(
                MockCognitoIdentityProviderClient(
                  initiateAuth: expectAsync1(
                    (_) async => throw const AuthNotAuthorizedException(
                      'Tokens expired',
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
                throwsA(isA<SessionExpiredException>()),
              );
            });

            test('should throw when accessing user pool tokens', () {
              expect(
                () => session.userPoolTokensResult.value,
                throwsA(isA<SessionExpiredException>()),
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

          group('network error', () {
            setUp(() async {
              await configureAmplify(config);
              stateMachine.addInstance<CognitoIdentityProviderClient>(
                MockCognitoIdentityProviderClient(
                  initiateAuth: expectAsync1(
                    (_) async => throw AWSHttpException(
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
                  initiateAuth: expectAsync1(
                    (_) async => throw _ServiceException(),
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
                  initiateAuth: expectAsync1(
                    (_) async => InitiateAuthResponse(
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
                  initiateAuth: expectAsync1(
                    (_) async => throw AWSHttpException(
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
                  initiateAuth: expectAsync1(
                    (_) async => throw _ServiceException(),
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
                  initiateAuth: expectAsync1(
                    (_) async => InitiateAuthResponse(
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

        group('expired', () {
          setUp(() async {
            await configureAmplify(config);
            stateMachine
              ..addInstance<CognitoIdentityProviderClient>(
                MockCognitoIdentityProviderClient(
                  initiateAuth: expectAsync1(
                    (_) async => throw const AuthNotAuthorizedException(
                      'Tokens expired',
                    ),
                  ),
                ),
              )
              ..addInstance<CognitoIdentityClient>(
                MockCognitoIdentityClient(
                  getCredentialsForIdentity: expectAsync0(
                    () async => throw const AuthNotAuthorizedException(
                      'Tokens expired',
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
              throwsA(isA<SessionExpiredException>()),
            );
          });

          test('should throw when accessing user pool tokens', () {
            expect(
              () => session.userPoolTokensResult.value,
              throwsA(isA<SessionExpiredException>()),
            );
          });

          test('should throw when accessing credentials', () {
            expect(
              () => session.credentialsResult.value,
              throwsA(isA<SessionExpiredException>()),
            );
          });

          test('should throw when accessing identityId', () {
            expect(
              () => session.identityIdResult.value,
              throwsA(isA<SessionExpiredException>()),
            );
          });
        });

        group('network error', () {
          setUp(() async {
            await configureAmplify(config);
            stateMachine
              ..addInstance<CognitoIdentityProviderClient>(
                MockCognitoIdentityProviderClient(
                  initiateAuth: expectAsync1(
                    (_) async => throw AWSHttpException(
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
                  initiateAuth: expectAsync1(
                    (_) async => throw _ServiceException(),
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
                throwsA(isA<SessionExpiredException>()),
              );
            });

            test('should throw when accessing identityId', () {
              expect(
                () => session.identityIdResult.value,
                throwsA(isA<SessionExpiredException>()),
              );
            });
          });
        });
      });

      group('federate to identity pool', () {
        const token1 = 'token1';
        const token2 = 'token2';
        const provider = AuthProvider.custom('test');

        group('signed out', () {
          setUp(() async {
            await configureAmplify(config);

            var expiration = DateTime.now();
            stateMachine.addInstance<CognitoIdentityClient>(
              MockCognitoIdentityClient(
                getId: () async => GetIdResponse(identityId: identityId),
                getCredentialsForIdentity: () async {
                  // When tests complete too fast, DateTime.now() is the same
                  // in between calls, so for each call, add an ever increasing
                  // duration to extend the duration beyond what it was
                  // previously.
                  expiration = expiration.add(const Duration(hours: 1));
                  return GetCredentialsForIdentityResponse(
                    credentials: Credentials(
                      accessKeyId: accessKeyId,
                      secretKey: secretAccessKey,
                      sessionToken: sessionToken,
                      expiration: expiration,
                    ),
                  );
                },
              ),
            );
          });

          test('can federate', () async {
            final session = await federateToIdentityPool(
              token: token1,
              provider: provider,
              willRefresh: false,
            );
            expect(session.identityId, identityId);
            expect(
              session.credentials.accessKeyId,
              accessKeyId,
            );
            expect(
              session.credentials.secretAccessKey,
              secretAccessKey,
            );
            expect(
              session.credentials.sessionToken,
              sessionToken,
            );
            expect(
              session.credentials.expiration,
              isNotNull,
            );
          });

          test('can refresh federation with same token', () async {
            final firstSession = await federateToIdentityPool(
              token: token1,
              provider: provider,
              willRefresh: false,
            );
            final newSession = await federateToIdentityPool(
              token: token1,
              provider: provider,
              willRefresh: true,
            );
            expect(newSession.identityId, firstSession.identityId);
            expect(
              newSession.credentials,
              isNot(firstSession.credentials),
            );
          });

          test('can refresh federation with new token', () async {
            final firstSession = await federateToIdentityPool(
              token: token1,
              provider: provider,
              willRefresh: false,
            );
            final newSession = await federateToIdentityPool(
              token: token2,
              provider: provider,
              willRefresh: true,
            );
            expect(newSession.identityId, firstSession.identityId);
            expect(
              newSession.credentials,
              isNot(firstSession.credentials),
            );
          });

          test('can refresh via refresh event', () async {
            final session = await federateToIdentityPool(
              token: token1,
              provider: provider,
              willRefresh: false,
            );
            final completion = await stateMachine
                .dispatch(
                  const FetchAuthSessionEvent.refresh(
                    refreshUserPoolTokens: false,
                    refreshAwsCredentials: true,
                  ),
                )
                .completed;
            if (completion is! FetchAuthSessionSuccess) {
              fail('Refresh failed: $completion');
            }
            final identityId = completion.session.identityIdResult.valueOrNull;
            expect(
              identityId,
              session.identityId,
            );
            final credentials =
                completion.session.credentialsResult.valueOrNull;
            expect(
              credentials,
              isNot(session.credentials),
            );
          });

          test('can federate after failure', () async {
            final originalClient = stateMachine.expect<CognitoIdentityClient>();
            stateMachine.addInstance<CognitoIdentityClient>(
              MockCognitoIdentityClient(
                getId: () async => throw Exception(),
              ),
            );
            await expectLater(
              federateToIdentityPool(
                token: token1,
                provider: provider,
                willRefresh: false,
              ),
              throwsA(isA<AuthException>()),
            );
            stateMachine.addInstance(originalClient);
            await expectLater(
              federateToIdentityPool(
                token: token1,
                provider: provider,
                willRefresh: false,
              ),
              completes,
            );
          });

          test('can provide identity id', () async {
            const developerProvidedIdentityId = 'developerProvidedIdentityId';
            final firstSession = await federateToIdentityPool(
              token: token1,
              provider: provider,
              developerProvidedIdentityId: developerProvidedIdentityId,
              willRefresh: false,
            );
            expect(firstSession.identityId, developerProvidedIdentityId);
            final newSession = await federateToIdentityPool(
              token: token1,
              provider: provider,
              willRefresh: true,
            );
            expect(newSession.identityId, firstSession.identityId);
            expect(
              newSession.credentials,
              isNot(firstSession.credentials),
            );
          });
        });

        group('signed in', () {
          setUp(() async {
            seedStorage(secureStorage, userPoolKeys: userPoolKeys);
            await configureAmplify(config);
          });

          test('cannot federate while signed into user pool', () async {
            await expectLater(
              federateToIdentityPool(
                token: token1,
                provider: provider,
                willRefresh: false,
              ),
              throwsA(isA<InvalidStateException>()),
            );
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
                  initiateAuth: expectAsync1(
                    (_) async => InitiateAuthResponse(
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
                  initiateAuth: expectAsync1(
                    (_) async => throw _ServiceException(),
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
                  initiateAuth: expectAsync1(
                    (_) async => InitiateAuthResponse(
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
                  initiateAuth: expectAsync1(
                    (_) async => throw _ServiceException(),
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
                initiateAuth: expectAsync1(
                  (_) async => InitiateAuthResponse(
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
                initiateAuth: expectAsync1(
                  (_) async => throw _ServiceException(),
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

      group('federate to identity pool', () {
        const token = 'token1';
        const provider = AuthProvider.custom('test');

        setUp(() async {
          await configureAmplify(config);
        });

        test('cannot federate without identity pool config', () async {
          await expectLater(
            federateToIdentityPool(
              token: token,
              provider: provider,
              willRefresh: false,
            ),
            throwsA(isA<InvalidAccountTypeException>()),
          );
        });
      });
    });
  });
}

/// A mock exception thrown by a service.
class _ServiceException implements Exception {}
