// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/flows/constants.dart';
import 'package:amplify_auth_cognito_dart/src/model/sign_in_parameters.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart'
    as cognito_idp;
import 'package:amplify_auth_cognito_dart/src/state/cognito_state_machine.dart';
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_auth_cognito_test/common/mock_clients.dart';
import 'package:amplify_auth_cognito_test/common/mock_config.dart';
import 'package:amplify_auth_cognito_test/common/mock_secure_storage.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:test/test.dart';

/// Mock implementation of [WebAuthnCredentialPlatform] for testing.
class MockWebAuthnCredentialPlatform implements WebAuthnCredentialPlatform {
  MockWebAuthnCredentialPlatform({
    this.onGetCredential,
    this.onCreateCredential,
    this.onIsPasskeySupported,
  });

  final Future<String> Function(String optionsJson)? onGetCredential;
  final Future<String> Function(String optionsJson)? onCreateCredential;
  final Future<bool> Function()? onIsPasskeySupported;

  @override
  Future<String> getCredential(String optionsJson) =>
      onGetCredential!(optionsJson);

  @override
  Future<String> createCredential(String optionsJson) =>
      onCreateCredential!(optionsJson);

  @override
  Future<bool> isPasskeySupported() =>
      onIsPasskeySupported?.call() ?? Future.value(true);
}

/// Test credential request options JSON.
const testCredentialRequestOptions =
    '{"challenge":"dGVzdC1jaGFsbGVuZ2U",'
    '"rpId":"example.com",'
    '"allowCredentials":[],'
    '"timeout":60000,'
    '"userVerification":"preferred"}';

/// Test credential assertion response JSON.
const testCredentialResponse =
    '{"id":"credential-id",'
    '"rawId":"Y3JlZGVudGlhbC1pZA",'
    '"type":"public-key",'
    '"response":{'
    '"clientDataJSON":"eyJ0eXBlIjoid2ViYXV0aG4uZ2V0In0",'
    '"authenticatorData":"SZYN5YgOjGh0NBcPZHZgW4_krrmihjLHmVzzuoMdl2MdAAAAAA",'
    '"signature":"MEUCIQDKg7m-jRDKvPIzSaR6SYMBjG3qPLCvkKqz_Ypfhnkm3Q",'
    '"userHandle":"dXNlci1pZA"},'
    '"clientExtensionResults":{}}';

void main() {
  AWSLogger().logLevel = LogLevel.verbose;

  group('SignInStateMachine WebAuthn', () {
    late CognitoAuthStateMachine stateMachine;
    late SecureStorageInterface secureStorage;

    setUp(() {
      secureStorage = MockSecureStorage();
      stateMachine = CognitoAuthStateMachine()
        ..addInstance<SecureStorageInterface>(secureStorage);
    });

    /// Helper to configure the state machine and wait for configuration.
    Future<void> configure() async {
      stateMachine
          .dispatch(ConfigurationEvent.configure(mockConfigUserPoolOnly))
          .ignore();
      await expectLater(
        stateMachine.stream.whereType<ConfigurationState>().firstWhere(
          (event) => event is Configured || event is ConfigureFailure,
        ),
        completion(isA<Configured>()),
      );
    }

    group('direct WEB_AUTHN challenge', () {
      test('completes sign-in without user interaction', () async {
        await configure();

        final mockClient = MockCognitoIdentityProviderClient(
          initiateAuth: expectAsync1((_) async {
            return cognito_idp.InitiateAuthResponse(
              challengeName: cognito_idp.ChallengeNameType.webAuthn,
              challengeParameters: {
                CognitoConstants.challengeParamCredentialRequestOptions:
                    testCredentialRequestOptions,
                CognitoConstants.challengeParamUsername: username,
              },
              session: 'test-session',
            );
          }),
          respondToAuthChallenge: expectAsync1((request) async {
            expect(
              request.challengeResponses?[CognitoConstants
                  .challengeParamCredential],
              testCredentialResponse,
            );
            expect(
              request.challengeName,
              cognito_idp.ChallengeNameType.webAuthn,
            );
            return cognito_idp.RespondToAuthChallengeResponse(
              authenticationResult: cognito_idp.AuthenticationResultType(
                accessToken: accessToken.raw,
                refreshToken: refreshToken,
                idToken: idToken.raw,
              ),
            );
          }),
        );

        final mockPlatform = MockWebAuthnCredentialPlatform(
          onGetCredential: expectAsync1((optionsJson) async {
            expect(optionsJson, testCredentialRequestOptions);
            return testCredentialResponse;
          }),
        );

        stateMachine
          ..addInstance<cognito_idp.CognitoIdentityProviderClient>(mockClient)
          ..addInstance<WebAuthnCredentialPlatform>(mockPlatform);

        expect(
          stateMachine
              .accept(
                SignInEvent.initiate(
                  authFlowType: AuthenticationFlowType.userAuth,
                  parameters: SignInParameters((p) => p..username = username),
                ),
              )
              .completed,
          completion(isA<SignInSuccess>()),
        );
      });
    });

    group('SELECT_CHALLENGE with WebAuthn', () {
      test('includes webAuthn in available factors', () async {
        await configure();

        final mockClient = MockCognitoIdentityProviderClient(
          initiateAuth: expectAsync1((_) async {
            return cognito_idp.InitiateAuthResponse(
              challengeName: cognito_idp.ChallengeNameType.selectChallenge,
              availableChallenges: [
                cognito_idp.ChallengeNameType.webAuthn,
                cognito_idp.ChallengeNameType.password,
              ],
              challengeParameters: {
                CognitoConstants.challengeParamUsername: username,
              },
              session: 'test-session',
            );
          }),
        );

        stateMachine.addInstance<cognito_idp.CognitoIdentityProviderClient>(
          mockClient,
        );

        stateMachine
            .dispatch(
              SignInEvent.initiate(
                authFlowType: AuthenticationFlowType.userAuth,
                parameters: SignInParameters((p) => p..username = username),
              ),
            )
            .ignore();

        final signInStateMachine = stateMachine.expect(SignInStateMachine.type);

        expect(
          signInStateMachine.stream,
          emitsThrough(
            isA<SignInChallenge>()
                .having(
                  (s) => s.challengeName,
                  'challengeName',
                  cognito_idp.ChallengeNameType.selectChallenge,
                )
                .having(
                  (s) => s.allowedfirstFactorTypes,
                  'allowedfirstFactorTypes',
                  containsAll([
                    AuthFactorType.webAuthn,
                    AuthFactorType.password,
                  ]),
                ),
          ),
        );
      });

      test(
        'two-step SELECT_CHALLENGE -> WEB_AUTHN completes sign-in',
        () async {
          await configure();

          var respondCallCount = 0;
          final mockClient = MockCognitoIdentityProviderClient(
            initiateAuth: expectAsync1((_) async {
              return cognito_idp.InitiateAuthResponse(
                challengeName: cognito_idp.ChallengeNameType.selectChallenge,
                availableChallenges: [
                  cognito_idp.ChallengeNameType.webAuthn,
                  cognito_idp.ChallengeNameType.password,
                ],
                challengeParameters: {
                  CognitoConstants.challengeParamUsername: username,
                },
                session: 'test-session',
              );
            }),
            respondToAuthChallenge: (request) async {
              respondCallCount++;
              if (respondCallCount == 1) {
                // First call: SELECT_CHALLENGE answer
                expect(
                  request.challengeName,
                  cognito_idp.ChallengeNameType.selectChallenge,
                );
                expect(
                  request.challengeResponses?[CognitoConstants
                      .challengeParamAnswer],
                  'WEB_AUTHN',
                );
                return cognito_idp.RespondToAuthChallengeResponse(
                  challengeName: cognito_idp.ChallengeNameType.webAuthn,
                  challengeParameters: {
                    CognitoConstants.challengeParamCredentialRequestOptions:
                        testCredentialRequestOptions,
                    CognitoConstants.challengeParamUsername: username,
                  },
                  session: 'test-session-2',
                );
              } else {
                // Second call: WEB_AUTHN credential response
                expect(
                  request.challengeName,
                  cognito_idp.ChallengeNameType.webAuthn,
                );
                expect(
                  request.challengeResponses?[CognitoConstants
                      .challengeParamCredential],
                  testCredentialResponse,
                );
                return cognito_idp.RespondToAuthChallengeResponse(
                  authenticationResult: cognito_idp.AuthenticationResultType(
                    accessToken: accessToken.raw,
                    refreshToken: refreshToken,
                    idToken: idToken.raw,
                  ),
                );
              }
            },
          );

          final mockPlatform = MockWebAuthnCredentialPlatform(
            onGetCredential: expectAsync1((optionsJson) async {
              return testCredentialResponse;
            }),
          );

          stateMachine
            ..addInstance<cognito_idp.CognitoIdentityProviderClient>(mockClient)
            ..addInstance<WebAuthnCredentialPlatform>(mockPlatform);

          stateMachine
              .dispatch(
                SignInEvent.initiate(
                  authFlowType: AuthenticationFlowType.userAuth,
                  parameters: SignInParameters((p) => p..username = username),
                ),
              )
              .ignore();

          final signInStateMachine = stateMachine.expect(
            SignInStateMachine.type,
          );

          // Wait for SELECT_CHALLENGE state
          await expectLater(
            signInStateMachine.stream,
            emitsThrough(isA<SignInChallenge>()),
          );

          // Respond with WEB_AUTHN selection
          expect(
            stateMachine
                .accept(const SignInRespondToChallenge(answer: 'WEB_AUTHN'))
                .completed,
            completion(isA<SignInSuccess>()),
          );
        },
      );
    });

    group('error handling', () {
      test('emits failure when user cancels WebAuthn ceremony', () async {
        await configure();

        final mockClient = MockCognitoIdentityProviderClient(
          initiateAuth: expectAsync1((_) async {
            return cognito_idp.InitiateAuthResponse(
              challengeName: cognito_idp.ChallengeNameType.webAuthn,
              challengeParameters: {
                CognitoConstants.challengeParamCredentialRequestOptions:
                    testCredentialRequestOptions,
                CognitoConstants.challengeParamUsername: username,
              },
              session: 'test-session',
            );
          }),
        );

        final mockPlatform = MockWebAuthnCredentialPlatform(
          onGetCredential: expectAsync1((optionsJson) async {
            throw const PasskeyCancelledException('User cancelled');
          }),
        );

        stateMachine
          ..addInstance<cognito_idp.CognitoIdentityProviderClient>(mockClient)
          ..addInstance<WebAuthnCredentialPlatform>(mockPlatform);

        expect(
          stateMachine
              .accept(
                SignInEvent.initiate(
                  authFlowType: AuthenticationFlowType.userAuth,
                  parameters: SignInParameters((p) => p..username = username),
                ),
              )
              .completed,
          completion(
            isA<SignInFailure>().having(
              (state) => state.exception,
              'exception',
              isA<PasskeyCancelledException>(),
            ),
          ),
        );
      });

      test('emits failure when WebAuthn platform is not registered', () async {
        await configure();

        final mockClient = MockCognitoIdentityProviderClient(
          initiateAuth: expectAsync1((_) async {
            return cognito_idp.InitiateAuthResponse(
              challengeName: cognito_idp.ChallengeNameType.webAuthn,
              challengeParameters: {
                CognitoConstants.challengeParamCredentialRequestOptions:
                    testCredentialRequestOptions,
                CognitoConstants.challengeParamUsername: username,
              },
              session: 'test-session',
            );
          }),
        );

        // Intentionally NOT registering WebAuthnCredentialPlatform
        stateMachine.addInstance<cognito_idp.CognitoIdentityProviderClient>(
          mockClient,
        );

        expect(
          stateMachine
              .accept(
                SignInEvent.initiate(
                  authFlowType: AuthenticationFlowType.userAuth,
                  parameters: SignInParameters((p) => p..username = username),
                ),
              )
              .completed,
          completion(
            isA<SignInFailure>().having(
              (state) => state.exception,
              'exception',
              isA<PasskeyNotSupportedException>(),
            ),
          ),
        );
      });

      test(
        'emits failure when CREDENTIAL_REQUEST_OPTIONS is missing',
        () async {
          await configure();

          final mockClient = MockCognitoIdentityProviderClient(
            initiateAuth: expectAsync1((_) async {
              return cognito_idp.InitiateAuthResponse(
                challengeName: cognito_idp.ChallengeNameType.webAuthn,
                challengeParameters: {
                  // Missing CREDENTIAL_REQUEST_OPTIONS
                  CognitoConstants.challengeParamUsername: username,
                },
                session: 'test-session',
              );
            }),
          );

          final mockPlatform = MockWebAuthnCredentialPlatform(
            onGetCredential: (_) async => testCredentialResponse,
          );

          stateMachine
            ..addInstance<cognito_idp.CognitoIdentityProviderClient>(mockClient)
            ..addInstance<WebAuthnCredentialPlatform>(mockPlatform);

          expect(
            stateMachine
                .accept(
                  SignInEvent.initiate(
                    authFlowType: AuthenticationFlowType.userAuth,
                    parameters: SignInParameters((p) => p..username = username),
                  ),
                )
                .completed,
            completion(
              isA<SignInFailure>().having(
                (state) => state.exception,
                'exception',
                isA<PasskeyAssertionFailedException>(),
              ),
            ),
          );
        },
      );
    });
  });
}
