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
import 'package:mockito/mockito.dart';
import 'package:smithy/smithy.dart';
import 'package:test/test.dart';

import '../common/mock_config.dart';
import '../common/mock_hosted_ui.dart';
import '../common/mock_secure_storage.dart';

final throwsSignedOutException = throwsA(isA<SignedOutException>());

class MockCognitoIdpClient extends Fake
    implements CognitoIdentityProviderClient {
  MockCognitoIdpClient({
    required Future<GlobalSignOutResponse> Function() globalSignOut,
    required Future<RevokeTokenResponse> Function() revokeToken,
  })  : _globalSignOut = globalSignOut,
        _revokeToken = revokeToken;

  final Future<GlobalSignOutResponse> Function() _globalSignOut;
  final Future<RevokeTokenResponse> Function() _revokeToken;

  @override
  SmithyOperation<GlobalSignOutResponse> globalSignOut(
    GlobalSignOutRequest input, {
    AWSHttpClient? client,
  }) =>
      SmithyOperation(
        CancelableOperation.fromFuture(
          Future.value(_globalSignOut()),
        ),
        operationName: 'GlobalSignOut',
        requestProgress: const Stream.empty(),
        responseProgress: const Stream.empty(),
      );

  @override
  SmithyOperation<RevokeTokenResponse> revokeToken(
    RevokeTokenRequest input, {
    AWSHttpClient? client,
  }) =>
      SmithyOperation(
        CancelableOperation.fromFuture(
          Future.value(_revokeToken()),
        ),
        operationName: 'RevokeToken',
        requestProgress: const Stream.empty(),
        responseProgress: const Stream.empty(),
      );
}

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
        expect(plugin.signOut(), completes);
        expect(hubEvents, emitsSignOutEvent);
      });

      test('does not clear AWS creds when already signed out', () async {
        seedStorage(secureStorage, identityPoolKeys: identityPoolKeys);
        await plugin.configure(
          config: mockConfig,
          authProviderRepo: testAuthRepo,
        );
        await expectLater(plugin.signOut(), completes);
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

        final mockIdp = MockCognitoIdpClient(
          globalSignOut: () async => GlobalSignOutResponse(),
          revokeToken: () async => RevokeTokenResponse(),
        );
        stateMachine.addInstance<CognitoIdentityProviderClient>(mockIdp);

        await expectLater(plugin.getCredentials(), completes);
        await expectLater(plugin.signOut(), completes);
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

        final mockIdp = MockCognitoIdpClient(
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
          throwsA(isA<Exception>()),
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

        final mockIdp = MockCognitoIdpClient(
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
          throwsA(isA<Exception>()),
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
        expect(plugin.signOut(), completes);
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

          final mockIdp = MockCognitoIdpClient(
            globalSignOut: () async => GlobalSignOutResponse(),
            revokeToken: () async => RevokeTokenResponse(),
          );
          stateMachine.addInstance<CognitoIdentityProviderClient>(mockIdp);

          await expectLater(plugin.getCredentials(), completes);
          await expectLater(plugin.signOut(), completes);
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

          final mockIdp = MockCognitoIdpClient(
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
            throwsA(isA<Exception>()),
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

          final mockIdp = MockCognitoIdpClient(
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
            throwsA(isA<Exception>()),
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
            throwsA(isA<_HostedUiException>()),
          );
          expect(plugin.getCredentials(), throwsSignedOutException);
          expect(hubEvents, emitsSignOutEvent);
        });
      });
    });
  });
}

class _HostedUiException implements Exception {}
