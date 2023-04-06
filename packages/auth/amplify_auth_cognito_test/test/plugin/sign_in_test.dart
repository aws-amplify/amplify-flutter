// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:amplify_auth_cognito_dart/src/state/cognito_state_machine.dart';
import 'package:amplify_auth_cognito_test/common/mock_clients.dart';
import 'package:amplify_auth_cognito_test/common/mock_config.dart';
import 'package:amplify_auth_cognito_test/common/mock_secure_storage.dart';
import 'package:amplify_core/amplify_core.dart';
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
  });
}
