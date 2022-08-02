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

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/model/auth_configuration.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:mockito/mockito.dart';
import 'package:smithy/src/http/http_client.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:test/test.dart';

import '../common/jwt.dart';
import '../common/mock_config.dart';
import '../common/mock_secure_storage.dart';

class MockCognitoIdentityClient implements CognitoIdentityClient {
  MockCognitoIdentityClient({
    Future<GetCredentialsForIdentityResponse> Function()?
        getCredentialsForIdentity,
    Future<GetIdResponse> Function()? getId,
  })  : _getCredentialsForIdentity = getCredentialsForIdentity,
        _getId = getId;

  final Future<GetIdResponse> Function()? _getId;
  final Future<GetCredentialsForIdentityResponse> Function()?
      _getCredentialsForIdentity;

  @override
  Future<GetCredentialsForIdentityResponse> getCredentialsForIdentity(
    GetCredentialsForIdentityInput input, {
    HttpClient? client,
  }) {
    if (_getCredentialsForIdentity == null) {
      throw UnimplementedError();
    }
    return _getCredentialsForIdentity!();
  }

  @override
  Future<GetIdResponse> getId(
    GetIdInput input, {
    HttpClient? client,
  }) {
    if (_getId == null) {
      throw UnimplementedError();
    }
    return _getId!();
  }
}

class MockCognitoIdentityProviderClient extends Fake
    implements CognitoIdentityProviderClient {
  MockCognitoIdentityProviderClient({
    required Future<InitiateAuthResponse> Function(InitiateAuthRequest)
        initiateAuth,
  }) : _initiateAuth = initiateAuth;

  final Future<InitiateAuthResponse> Function(InitiateAuthRequest)
      _initiateAuth;

  @override
  Future<InitiateAuthResponse> initiateAuth(
    InitiateAuthRequest input, {
    HttpClient? client,
  }) =>
      _initiateAuth(input);
}

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

          const newIdentityId = 'newIdentityId';
          const newAccessKeyId = 'newAccessKeyId';
          const newSecretAccessKey = 'newSecretAccessKey';
          stateMachine
            ..addInstance<CognitoIdentityClient>(
              MockCognitoIdentityClient(
                getId: expectAsync0(
                  () async => GetIdResponse(identityId: newIdentityId),
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
          expect(state.session.identityId, newIdentityId);
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
                getId: expectAsync0(
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

        test('User Pool tokens (success)', () async {
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
                initiateAuth: expectAsync1(
                  (request) async => InitiateAuthResponse(
                    authenticationResult: AuthenticationResultType(
                      accessToken: accessToken.raw,
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
              isA<FetchAuthSessionRefreshing>(),
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
                initiateAuth: expectAsync1(
                  (request) async => throw _FetchAuthSessionException(),
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
