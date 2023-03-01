// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/device_metadata_repository.dart';
import 'package:amplify_auth_cognito_dart/src/flows/constants.dart';
import 'package:amplify_auth_cognito_dart/src/model/cognito_device_secrets.dart';
import 'package:amplify_auth_cognito_dart/src/model/sign_in_parameters.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart'
    as cognito_idp;
import 'package:amplify_auth_cognito_dart/src/state/machines/sign_in_state_machine.dart';
import 'package:amplify_auth_cognito_test/common/mock_clients.dart';
import 'package:amplify_auth_cognito_test/common/mock_config.dart';
import 'package:amplify_auth_cognito_test/common/mock_secure_storage.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:test/test.dart';

import '../flows/srp/srp_helper_test.dart';

void main() {
  AWSLogger().logLevel = LogLevel.verbose;

  group('SignInStateMachine', () {
    late CognitoAuthStateMachine stateMachine;
    late SecureStorageInterface secureStorage;

    setUp(() {
      secureStorage = MockSecureStorage();
      stateMachine = CognitoAuthStateMachine()
        ..addInstance<SecureStorageInterface>(secureStorage);
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
      stateMachine
          .dispatch(
            const ConfigurationEvent.configure(config),
          )
          .ignore();
      await expectLater(
        stateMachine.stream.whereType<ConfigurationState>().firstWhere(
              (event) => event is Configured || event is ConfigureFailure,
            ),
        completion(isA<Configured>()),
      );

      final mockClient = MockCognitoIdentityProviderClient(
        initiateAuth: expectAsync1(
          (_) async => cognito_idp.InitiateAuthResponse(
            challengeName: cognito_idp.ChallengeNameType.customChallenge,
          ),
        ),
      );
      stateMachine
        ..addInstance<cognito_idp.CognitoIdentityProviderClient>(mockClient)
        ..dispatch(
          SignInEvent.initiate(
            authFlowType: AuthenticationFlowType.customAuthWithSrp,
            parameters: SignInParameters(
              (p) => p
                ..username = 'username'
                ..password = 'password',
            ),
          ),
        ).ignore();

      final signInStateMachine = stateMachine.expect(SignInStateMachine.type);
      await signInStateMachine.stream.whereType<SignInChallenge>().first;
      expect(
        signInStateMachine.authFlowType,
        cognito_idp.AuthFlowType.customAuth,
      );
    });

    test('smoke test', () async {
      stateMachine
          .dispatch(
            ConfigurationEvent.configure(userPoolOnlyConfig),
          )
          .ignore();
      await expectLater(
        stateMachine.stream.whereType<ConfigurationState>().firstWhere(
              (event) => event is Configured || event is ConfigureFailure,
            ),
        completion(isA<Configured>()),
      );

      final mockClient = MockCognitoIdentityProviderClient(
        initiateAuth: expectAsync1(
          (_) async => cognito_idp.InitiateAuthResponse(
            authenticationResult: cognito_idp.AuthenticationResultType(
              accessToken: accessToken.raw,
              refreshToken: refreshToken,
              idToken: idToken.raw,
            ),
          ),
        ),
      );
      stateMachine
        ..addInstance<cognito_idp.CognitoIdentityProviderClient>(mockClient)
        ..dispatch(
          SignInEvent.initiate(
            authFlowType: AuthenticationFlowType.customAuthWithSrp,
            parameters: SignInParameters(
              (p) => p
                ..username = 'username'
                ..password = 'password',
            ),
          ),
        ).ignore();

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
        stateMachine
            .dispatch(
              ConfigurationEvent.configure(userPoolOnlyConfig),
            )
            .ignore();
        await expectLater(
          stateMachine.stream.whereType<ConfigurationState>().firstWhere(
                (event) => event is Configured || event is ConfigureFailure,
              ),
          completion(isA<Configured>()),
        );

        stateMachine
            .dispatch(
              SignInEvent.initiate(
                authFlowType: AuthenticationFlowType.customAuthWithSrp,
                parameters: SignInParameters(
                  (p) => p..username = 'username',
                ),
              ),
            )
            .ignore();
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
        stateMachine
            .dispatch(
              ConfigurationEvent.configure(userPoolOnlyConfig),
            )
            .ignore();
        await expectLater(
          stateMachine.stream.whereType<ConfigurationState>().firstWhere(
                (event) => event is Configured || event is ConfigureFailure,
              ),
          completion(isA<Configured>()),
        );

        stateMachine
            .dispatch(
              SignInEvent.initiate(
                authFlowType: AuthenticationFlowType.customAuthWithoutSrp,
                parameters: SignInParameters(
                  (p) => p
                    ..username = 'username'
                    ..password = 'password',
                ),
              ),
            )
            .ignore();
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
        stateMachine
            .dispatch(
              ConfigurationEvent.configure(userPoolOnlyConfig),
            )
            .ignore();
        await expectLater(
          stateMachine.stream.whereType<ConfigurationState>().firstWhere(
                (event) => event is Configured || event is ConfigureFailure,
              ),
          completion(isA<Configured>()),
        );

        final mockClient = MockCognitoIdentityProviderClient(
          initiateAuth: expectAsync1(
            (_) async => cognito_idp.InitiateAuthResponse(
              authenticationResult: cognito_idp.AuthenticationResultType(
                accessToken: accessToken.raw,
                refreshToken: refreshToken,
                idToken: idToken.raw,
              ),
            ),
          ),
        );
        stateMachine
          ..addInstance<cognito_idp.CognitoIdentityProviderClient>(mockClient)
          ..dispatch(
            SignInEvent.initiate(
              // ignore: deprecated_member_use
              authFlowType: AuthenticationFlowType.customAuth,
              parameters: SignInParameters(
                (p) => p
                  ..username = 'username'
                  ..password = 'password',
              ),
            ),
          ).ignore();

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

    group('device tracking', () {
      late DeviceMetadataRepository deviceRepo;

      setUp(() async {
        stateMachine
            .dispatch(
              ConfigurationEvent.configure(mockConfig),
            )
            .ignore();
        await expectLater(
          stateMachine.stream.whereType<ConfigurationState>().firstWhere(
                (event) => event is Configured || event is ConfigureFailure,
              ),
          completion(isA<Configured>()),
        );
        deviceRepo = DeviceMetadataRepository(userPoolConfig, secureStorage);
        stateMachine.addInstance(deviceRepo, DeviceMetadataRepository.token);
      });

      test('should fail when verification fails', () async {
        await deviceRepo.put(
          srpUsername,
          CognitoDeviceSecrets(
            (b) => b
              ..deviceKey = deviceKey
              ..deviceGroupKey = deviceGroupKey
              ..devicePassword = devicePassword,
          ),
        );

        final mockClient = MockCognitoIdentityProviderClient(
          initiateAuth: expectAsync1((request) async {
            expect(
              request.authParameters?[CognitoConstants.challengeParamDeviceKey],
              deviceKey,
            );
            return cognito_idp.InitiateAuthResponse(
              challengeName: cognito_idp.ChallengeNameType.passwordVerifier,
              challengeParameters: {
                CognitoConstants.challengeParamUsername: username,
                CognitoConstants.challengeParamUserIdForSrp: username,
                CognitoConstants.challengeParamSecretBlock: secretBlock,
                CognitoConstants.challengeParamSalt: salt,
                CognitoConstants.challengeParamSrpB: publicB,
              },
            );
          }),
          respondToAuthChallenge: (_) async {
            throw cognito_idp.InvalidParameterException();
          },
        );
        stateMachine
            .addInstance<cognito_idp.CognitoIdentityProviderClient>(mockClient);

        expect(
          stateMachine
              .accept(
                SignInEvent.initiate(
                  parameters: SignInParameters(
                    (b) => b
                      ..username = srpUsername
                      ..password = srpPassword,
                  ),
                ),
              )
              .completed,
          completion(
            isA<SignInFailure>().having(
              (state) => state.exception,
              'exception',
              isA<cognito_idp.InvalidParameterException>(),
            ),
          ),
        );
      });

      test('should fail when confirmation fails', () async {
        final mockClient = MockCognitoIdentityProviderClient(
          initiateAuth: expectAsync1((_) async {
            return cognito_idp.InitiateAuthResponse(
              authenticationResult: cognito_idp.AuthenticationResultType(
                accessToken: accessToken.raw,
                refreshToken: refreshToken,
                idToken: idToken.raw,
                newDeviceMetadata: cognito_idp.NewDeviceMetadataType(
                  deviceKey: deviceKey,
                  deviceGroupKey: deviceGroupKey,
                ),
              ),
            );
          }),
          confirmDevice: expectAsync0(() async {
            throw cognito_idp.InvalidParameterException();
          }),
        );
        stateMachine
            .addInstance<cognito_idp.CognitoIdentityProviderClient>(mockClient);

        await expectLater(
          stateMachine
              .accept(
                SignInEvent.initiate(
                  parameters: SignInParameters(
                    (b) => b
                      ..username = srpUsername
                      ..password = srpPassword,
                  ),
                ),
              )
              .completed,
          completion(
            isA<SignInFailure>().having(
              (state) => state.exception,
              'exception',
              isA<cognito_idp.InvalidParameterException>(),
            ),
          ),
        );

        expect(await deviceRepo.get(srpUsername), isNull);
      });

      test('should store device metadata on success', () async {
        final mockClient = MockCognitoIdentityProviderClient(
          initiateAuth: expectAsync1((_) async {
            return cognito_idp.InitiateAuthResponse(
              authenticationResult: cognito_idp.AuthenticationResultType(
                accessToken: accessToken.raw,
                refreshToken: refreshToken,
                idToken: idToken.raw,
                newDeviceMetadata: cognito_idp.NewDeviceMetadataType(
                  deviceKey: deviceKey,
                  deviceGroupKey: deviceGroupKey,
                ),
              ),
            );
          }),
          confirmDevice: expectAsync0(() async {
            return cognito_idp.ConfirmDeviceResponse(
              userConfirmationNecessary: false,
            );
          }),
        );
        stateMachine
            .addInstance<cognito_idp.CognitoIdentityProviderClient>(mockClient);

        await expectLater(
          stateMachine
              .accept(
                SignInEvent.initiate(
                  parameters: SignInParameters(
                    (b) => b
                      ..username = username
                      ..password = password,
                  ),
                ),
              )
              .completed,
          completion(isA<SignInSuccess>()),
        );

        expect(await deviceRepo.get(username), isNotNull);
      });

      test('should retry on ResourceNotFoundException', () async {
        await deviceRepo.put(
          username,
          CognitoDeviceSecrets(
            (b) => b
              ..deviceKey = deviceKey
              ..deviceGroupKey = deviceGroupKey
              ..devicePassword = devicePassword,
          ),
        );

        var retry = false;
        final mockClient = MockCognitoIdentityProviderClient(
          initiateAuth: expectAsync1((request) async {
            expect(
              request.authParameters?[CognitoConstants.challengeParamDeviceKey],
              deviceKey,
            );
            return cognito_idp.InitiateAuthResponse(
              challengeName: cognito_idp.ChallengeNameType.passwordVerifier,
              challengeParameters: {
                CognitoConstants.challengeParamUsername: username,
                CognitoConstants.challengeParamUserIdForSrp: username,
                CognitoConstants.challengeParamSecretBlock: secretBlock,
                CognitoConstants.challengeParamSalt: salt,
                CognitoConstants.challengeParamSrpB: publicB,
              },
            );
          }),
          respondToAuthChallenge: expectAsync1(max: -1, (_) async {
            try {
              if (retry) {
                expect(
                  await deviceRepo.get(username),
                  isNull,
                );
                return cognito_idp.RespondToAuthChallengeResponse(
                  authenticationResult: cognito_idp.AuthenticationResultType(
                    accessToken: accessToken.raw,
                    refreshToken: refreshToken,
                    idToken: idToken.raw,
                    newDeviceMetadata: cognito_idp.NewDeviceMetadataType(
                      deviceKey: deviceKey,
                      deviceGroupKey: deviceGroupKey,
                    ),
                  ),
                );
              } else {
                throw const ResourceNotFoundException('Device not found');
              }
            } finally {
              retry = true;
            }
          }),
          confirmDevice: expectAsync0(() async {
            return cognito_idp.ConfirmDeviceResponse(
              userConfirmationNecessary: false,
            );
          }),
        );
        stateMachine
            .addInstance<cognito_idp.CognitoIdentityProviderClient>(mockClient);

        await expectLater(
          stateMachine
              .accept(
                SignInEvent.initiate(
                  parameters: SignInParameters(
                    (b) => b
                      ..username = username
                      ..password = password,
                  ),
                ),
              )
              .completed,
          completion(isA<SignInSuccess>()),
        );

        expect(await deviceRepo.get(username), isNotNull);
      });
    });
  });
}
