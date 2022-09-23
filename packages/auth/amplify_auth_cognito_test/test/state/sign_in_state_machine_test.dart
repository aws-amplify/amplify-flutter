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
import 'package:amplify_auth_cognito_dart/src/jwt/src/cognito.dart';
import 'package:amplify_auth_cognito_dart/src/model/sign_in_parameters.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart';
import 'package:amplify_auth_cognito_dart/src/state/machines/credential_store_state_machine.dart';
import 'package:amplify_auth_cognito_dart/src/state/machines/sign_in_state_machine.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:mockito/mockito.dart';
import 'package:smithy/smithy.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:test/test.dart';

import '../common/mock_config.dart';
import '../common/mock_secure_storage.dart';

class MockCognitoIdentityProviderClient extends Fake
    implements CognitoIdentityProviderClient {
  MockCognitoIdentityProviderClient({
    required Future<InitiateAuthResponse> Function() initiateAuth,
  }) : _initiateAuth = initiateAuth;

  final Future<InitiateAuthResponse> Function() _initiateAuth;

  @override
  Future<InitiateAuthResponse> initiateAuth(
    InitiateAuthRequest input, {
    HttpClient? client,
  }) =>
      _initiateAuth();
}

void main() {
  AWSLogger().logLevel = LogLevel.verbose;

  group('SignInStateMachine', () {
    late CognitoAuthStateMachine stateMachine;

    setUp(() {
      stateMachine = CognitoAuthStateMachine()
        ..addInstance<SecureStorageInterface>(MockSecureStorage());
    });

    test('can change flow at runtime', () async {
      const config = AmplifyConfig(
        auth: AuthConfig(
          plugins: {
            CognitoPluginConfig.pluginKey: CognitoPluginConfig(
              auth: AWSConfigMap(
                {
                  'Default': CognitoAuthConfig(
                    authenticationFlowType: AuthenticationFlowType.userSrpAuth,
                  ),
                },
              ),
              cognitoUserPool: AWSConfigMap(
                {
                  'Default': CognitoUserPoolConfig(
                    poolId: testUserPoolId,
                    appClientId: testAppClientId,
                    region: testRegion,
                  ),
                },
              ),
            ),
          },
        ),
      );
      stateMachine.dispatch(
        const AuthEvent.configure(config),
      );
      await expectLater(
        stateMachine.stream.whereType<AuthState>().firstWhere(
              (event) => event is AuthConfigured || event is AuthFailure,
            ),
        completion(isA<AuthConfigured>()),
      );

      final mockClient = MockCognitoIdentityProviderClient(
        initiateAuth: () async => InitiateAuthResponse(
          challengeName: ChallengeNameType.customChallenge,
        ),
      );
      stateMachine
        ..addInstance<CognitoIdentityProviderClient>(mockClient)
        ..dispatch(
          SignInEvent.initiate(
            authFlowType: AuthFlowType.customAuth,
            parameters: SignInParameters(
              (p) => p
                ..username = 'username'
                ..password = 'password',
            ),
          ),
        );

      final signInStateMachine = stateMachine.expect(SignInStateMachine.type);
      await signInStateMachine.stream.whereType<SignInChallenge>().first;
      expect(
        signInStateMachine.authFlowType,
        AuthFlowType.customAuth,
      );
    });

    test('smoke test', () async {
      stateMachine.dispatch(AuthEvent.configure(userPoolOnlyConfig));
      await expectLater(
        stateMachine.stream.whereType<AuthState>().firstWhere(
              (event) => event is AuthConfigured || event is AuthFailure,
            ),
        completion(isA<AuthConfigured>()),
      );

      final mockClient = MockCognitoIdentityProviderClient(
        initiateAuth: () async => InitiateAuthResponse(
          authenticationResult: AuthenticationResultType(
            accessToken: accessToken.raw,
            refreshToken: refreshToken,
            idToken: idToken.raw,
          ),
        ),
      );
      stateMachine
        ..addInstance<CognitoIdentityProviderClient>(mockClient)
        ..dispatch(
          SignInEvent.initiate(
            authFlowType: AuthFlowType.customAuth,
            parameters: SignInParameters(
              (p) => p
                ..username = 'username'
                ..password = 'password',
            ),
          ),
        );

      final signInStateMachine = stateMachine.expect(SignInStateMachine.type);
      expect(
        signInStateMachine.stream,
        emitsInOrder([
          isA<SignInInitiating>(),
          isA<SignInSuccess>(),
        ]),
      );

      final credentialStoreMachine =
          stateMachine.expect(CredentialStoreStateMachine.type);
      expect(CognitoIdToken(idToken).username, isNot(username));
      expect(
        credentialStoreMachine.stream,
        emitsThrough(
          isA<CredentialStoreSuccess>().having(
            (e) => e.data.userPoolTokens?.username,
            'username',
            username,
          ),
        ),
        reason: 'Username should match what was used to sign in, not what '
            'Cognito returns as part of the JWT tokens',
      );
    });
  });
}
