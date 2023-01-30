// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';

import '../common/jwt.dart';
import '../common/mock_clients.dart';
import '../common/mock_config.dart';
import '../common/mock_secure_storage.dart';

void main() {
  AmplifyLogger().logLevel = LogLevel.verbose;

  late CognitoAuthStateMachine stateMachine;
  late AmplifyAuthCognitoDart plugin;

  group('fetchAuthSession', () {
    group('when session is expired', () {
      setUp(() async {
        final expiredIdToken = createJwt(
          type: TokenType.id,
          expiration: Duration.zero,
        );
        final secureStorage = MockSecureStorage();
        seedStorage(
          secureStorage,
          identityPoolKeys: identityPoolKeys,
          userPoolKeys: userPoolKeys,
        );
        secureStorage.write(
          key: userPoolKeys[CognitoUserPoolKey.idToken],
          value: expiredIdToken.raw,
        );
        stateMachine = CognitoAuthStateMachine();
        plugin = AmplifyAuthCognitoDart(credentialStorage: secureStorage)
          ..stateMachine = stateMachine;
        await plugin.configure(
          config: mockConfig,
          authProviderRepo: AmplifyAuthProviderRepository(),
        );

        stateMachine.addInstance<CognitoIdentityProviderClient>(
          MockCognitoIdentityProviderClient(
            initiateAuth: expectAsync0(
              () async => throw const AuthNotAuthorizedException(
                'Refresh Token has expired.',
              ),
            ),
          ),
        );
      });

      test('should add a sessionExpired event to Auth Hub', () async {
        final authStream = Amplify.Hub.availableStreams[HubChannel.Auth];
        plugin.fetchAuthSession().ignore();
        await expectLater(authStream, emits(AuthHubEvent.sessionExpired()));
      });
    });

    tearDown(() async {
      await plugin.close();
    });
  });
}
