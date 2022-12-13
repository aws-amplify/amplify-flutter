// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/model/sign_in_parameters.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart'
    hide InvalidParameterException;
import 'package:amplify_auth_cognito_dart/src/state/machines/sign_in_state_machine.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:test/test.dart';

import '../common/mock_clients.dart';
import '../common/mock_config.dart';
import '../common/mock_secure_storage.dart';

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
      stateMachine.internalDispatch(
        const ConfigurationEvent.configure(config),
      );
      await expectLater(
        stateMachine.stream.whereType<ConfigurationState>().firstWhere(
              (event) => event is Configured || event is ConfigureFailure,
            ),
        completion(isA<Configured>()),
      );

      final mockClient = MockCognitoIdentityProviderClient(
        initiateAuth: () async => InitiateAuthResponse(
          challengeName: ChallengeNameType.customChallenge,
        ),
      );
      stateMachine
        ..addInstance<CognitoIdentityProviderClient>(mockClient)
        ..internalDispatch(
          SignInEvent.initiate(
            authFlowType: AuthenticationFlowType.customAuthWithSrp,
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
      stateMachine.internalDispatch(
        ConfigurationEvent.configure(userPoolOnlyConfig),
      );
      await expectLater(
        stateMachine.stream.whereType<ConfigurationState>().firstWhere(
              (event) => event is Configured || event is ConfigureFailure,
            ),
        completion(isA<Configured>()),
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
        ..internalDispatch(
          SignInEvent.initiate(
            authFlowType: AuthenticationFlowType.customAuthWithSrp,
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
          isA<SignInSuccess>().having(
            (state) => state.user.signInDetails,
            'signInDetails',
            isA<CognitoSignInDetailsApiBased>(),
          ),
        ]),
      );
    });

    group('custom auth', () {
      test('customAuthWithSrp requires password', () async {
        stateMachine.internalDispatch(
          ConfigurationEvent.configure(userPoolOnlyConfig),
        );
        await expectLater(
          stateMachine.stream.whereType<ConfigurationState>().firstWhere(
                (event) => event is Configured || event is ConfigureFailure,
              ),
          completion(isA<Configured>()),
        );

        stateMachine.internalDispatch(
          SignInEvent.initiate(
            authFlowType: AuthenticationFlowType.customAuthWithSrp,
            parameters: SignInParameters(
              (p) => p..username = 'username',
            ),
          ),
        );
        final signInStateMachine = stateMachine.expect(SignInStateMachine.type);
        expect(
          signInStateMachine.stream,
          emitsInOrder([
            isA<SignInInitiating>(),
            isA<SignInFailure>().having(
              (s) => s.exception,
              'exception',
              isA<AuthValidationException>(),
            ),
          ]),
        );
      });

      test('customAuthWithoutSrp forbids password', () async {
        stateMachine.internalDispatch(
          ConfigurationEvent.configure(userPoolOnlyConfig),
        );
        await expectLater(
          stateMachine.stream.whereType<ConfigurationState>().firstWhere(
                (event) => event is Configured || event is ConfigureFailure,
              ),
          completion(isA<Configured>()),
        );

        stateMachine.internalDispatch(
          SignInEvent.initiate(
            authFlowType: AuthenticationFlowType.customAuthWithoutSrp,
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
            isA<SignInFailure>().having(
              (s) => s.exception,
              'exception',
              isA<AuthValidationException>(),
            ),
          ]),
        );
      });

      test('customAuth uses old behavior', () async {
        stateMachine.internalDispatch(
          ConfigurationEvent.configure(userPoolOnlyConfig),
        );
        await expectLater(
          stateMachine.stream.whereType<ConfigurationState>().firstWhere(
                (event) => event is Configured || event is ConfigureFailure,
              ),
          completion(isA<Configured>()),
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
          ..internalDispatch(
            SignInEvent.initiate(
              // ignore: deprecated_member_use
              authFlowType: AuthenticationFlowType.customAuth,
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
      });
    });
  });
}
