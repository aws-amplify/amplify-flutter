// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

// ignore_for_file: invalid_use_of_internal_member

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/device_metadata_repository.dart';
import 'package:amplify_auth_cognito_dart/src/model/cognito_device_secrets.dart';
import 'package:amplify_auth_cognito_dart/src/sdk/cognito_identity_provider.dart'
    show ChallengeNameType, DeviceRememberedStatusType;
import 'package:amplify_auth_cognito_dart/src/state/state.dart';
import 'package:amplify_auth_integration_test/amplify_auth_integration_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_runner.dart';

void main() {
  testRunner.setupTests();

  final logger = AWSLogger().createChild('custom_auth_test');

  group('custom auth', () {
    // Arbitrary challenge answer defined in Lambda
    const confirmationValue = '123';

    late String username;
    late String password;

    for (final (testName, environmentName) in [
      ('without SRP', 'custom-auth-without-srp'),
      ('without SRP (Device Tracking)', 'custom-auth-device-without-srp'),
    ]) {
      group(testName, () {
        const options = SignInOptions(
          pluginOptions: CognitoSignInPluginOptions(
            authFlowType: AuthenticationFlowType.customAuthWithoutSrp,
          ),
        );

        setUp(() async {
          await testRunner.configure(
            environmentName: environmentName,
          );

          username = generateUsername();
          password = generatePassword();

          await adminCreateUser(
            username,
            password,
            autoConfirm: true,
            verifyAttributes: true,
          );
        });

        asyncTest(
          'signIn should return data from the auth challenge lambda',
          (_) async {
            final res = await Amplify.Auth.signIn(
              username: username,
              options: options,
            );
            expect(
              res.nextStep.signInStep,
              AuthSignInStep.confirmSignInWithCustomChallenge,
            );

            // additionalInfo key values defined in lambda code
            expect(res.nextStep.additionalInfo, {
              'test-key': 'test-value',
              'USERNAME': username,
            });
          },
        );

        asyncTest(
          'a correct challenge reply should sign in the user in',
          (_) async {
            final signInRes = await Amplify.Auth.signIn(
              username: username,
              options: options,
            );
            expect(
              signInRes.nextStep.signInStep,
              AuthSignInStep.confirmSignInWithCustomChallenge,
            );
            final res = await Amplify.Auth.confirmSignIn(
              confirmationValue: confirmationValue,
            );
            expect(res.isSignedIn, isTrue);
          },
        );

        asyncTest(
          'an incorrect challenge reply should throw a NotAuthorizedException',
          (_) async {
            final res = await Amplify.Auth.signIn(
              username: username,
              options: options,
            );
            expect(
              res.nextStep.signInStep,
              AuthSignInStep.confirmSignInWithCustomChallenge,
            );
            // Can retry 3 times
            for (var retry = 1; retry <= 3; retry++) {
              logger.debug('Retry attempt: $retry');
              final confirmRes = await Amplify.Auth.confirmSignIn(
                confirmationValue: 'wrong',
              );
              expect(
                confirmRes.nextStep.signInStep,
                AuthSignInStep.confirmSignInWithCustomChallenge,
              );
              expect(
                confirmRes.nextStep.additionalInfo,
                containsPair('errorCode', 'NotAuthorizedException'),
              );
            }
            await expectLater(
              Amplify.Auth.confirmSignIn(
                confirmationValue: 'wrong',
              ),
              throwsA(isA<AuthNotAuthorizedException>()),
              reason: 'After 3 tries, fail completely',
            );
          },
        );

        asyncTest(
          'challenges can be re-attempted on failure',
          (_) async {
            final res = await Amplify.Auth.signIn(
              username: username,
              options: options,
            );
            expect(
              res.nextStep.signInStep,
              AuthSignInStep.confirmSignInWithCustomChallenge,
            );
            final confirmRes = await Amplify.Auth.confirmSignIn(
              confirmationValue: 'wrong',
            );
            expect(
              confirmRes.nextStep.signInStep,
              AuthSignInStep.confirmSignInWithCustomChallenge,
            );
            expect(
              confirmRes.nextStep.additionalInfo,
              containsPair('errorCode', 'NotAuthorizedException'),
            );
            await expectLater(
              Amplify.Auth.confirmSignIn(
                confirmationValue: confirmationValue,
              ),
              completion(
                isA<CognitoSignInResult>().having(
                  (res) => res.isSignedIn,
                  'isSignedIn',
                  isTrue,
                ),
              ),
            );
          },
        );

        asyncTest('fails when including a password', (_) async {
          await expectLater(
            Amplify.Auth.signIn(
              username: username,
              password: password,
              options: options,
            ),
            throwsA(isA<AuthValidationException>()),
          );
        });

        asyncTest(
          'passes client metadata to signIn',
          (_) async {
            await expectLater(
              () => Amplify.Auth.signIn(
                username: username,
                options: const SignInOptions(
                  pluginOptions: CognitoSignInPluginOptions(
                    authFlowType: AuthenticationFlowType.customAuthWithoutSrp,
                    clientMetadata: {
                      'should-fail': 'true',
                    },
                  ),
                ),
              ),
              throwsA(isA<AuthNotAuthorizedException>()),
              skip: 'Cognito does not pass InitiateAuth client metadata to the '
                  'custom auth triggers: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_InitiateAuth.html#CognitoUserPools-InitiateAuth-request-ClientMetadata',
            );
          },
        );

        asyncTest('passes client metadata to confirmSignIn', (_) async {
          final res = await Amplify.Auth.signIn(
            username: username,
            options: options,
          );
          expect(
            res.nextStep.signInStep,
            AuthSignInStep.confirmSignInWithCustomChallenge,
          );
          await expectLater(
            Amplify.Auth.confirmSignIn(
              confirmationValue: confirmationValue,
              options: const ConfirmSignInOptions(
                pluginOptions: CognitoConfirmSignInPluginOptions(
                  clientMetadata: {
                    'should-fail': 'true',
                  },
                ),
              ),
            ),
            throwsA(isA<AuthNotAuthorizedException>()),
          );
          await expectLater(
            Amplify.Auth.confirmSignIn(
              confirmationValue: confirmationValue,
            ),
            throwsA(isA<AuthNotAuthorizedException>()),
            reason: 'Authorization failures are not retryable',
          );
        });
      });
    }

    for (final (testName, environmentName) in [
      ('with SRP', 'custom-auth-with-srp'),
      ('with SRP (Device Tracking)', 'custom-auth-device-with-srp'),
    ]) {
      group(testName, () {
        const options = SignInOptions(
          pluginOptions: CognitoSignInPluginOptions(
            authFlowType: AuthenticationFlowType.customAuthWithSrp,
          ),
        );

        setUp(() async {
          await testRunner.configure(
            environmentName: environmentName,
          );

          username = generateUsername();
          password = generatePassword();

          await adminCreateUser(
            username,
            password,
            autoConfirm: true,
            verifyAttributes: true,
          );
        });

        asyncTest(
          'if a password is provided but is incorrect, throw '
          'NotAuthorizedException',
          (_) async {
            // '123' is the arbitrary challenge answer defined in lambda code
            await expectLater(
              Amplify.Auth.signIn(
                username: username,
                password: 'wrong',
                options: options,
              ),
              throwsA(isA<AuthNotAuthorizedException>()),
            );
          },
        );

        asyncTest(
          'a correct password and correct challenge reply should sign in '
          'the user',
          (_) async {
            final signInRes = await Amplify.Auth.signIn(
              username: username,
              password: password,
              options: options,
            );
            expect(
              signInRes.nextStep.signInStep,
              AuthSignInStep.confirmSignInWithCustomChallenge,
            );
            final res = await Amplify.Auth.confirmSignIn(
              confirmationValue: confirmationValue,
            );
            expect(res.isSignedIn, true);
          },
        );

        asyncTest(
          'an incorrect challenge reply should throw a NotAuthorizedException',
          (_) async {
            final res = await Amplify.Auth.signIn(
              username: username,
              password: password,
              options: options,
            );
            expect(
              res.nextStep.signInStep,
              AuthSignInStep.confirmSignInWithCustomChallenge,
            );
            await expectLater(
              Amplify.Auth.confirmSignIn(confirmationValue: 'wrong'),
              throwsA(isA<AuthNotAuthorizedException>()),
            );
          },
        );

        asyncTest(
          'should return data from the auth challenge lambda '
          '(with password)',
          (_) async {
            final res = await Amplify.Auth.signIn(
              username: username,
              password: password,
              options: options,
            );
            expect(
              res.nextStep.signInStep,
              AuthSignInStep.confirmSignInWithCustomChallenge,
            );

            // additionalInfo key values defined in lambda code
            expect(res.nextStep.additionalInfo, {
              'test-key': 'test-value',
            });
          },
        );

        asyncTest('fails when excluding a password', (_) async {
          await expectLater(
            Amplify.Auth.signIn(
              username: username,
              options: options,
            ),
            throwsA(isA<AuthValidationException>()),
          );
        });

        asyncTest('passes client metadata to signIn', (_) async {
          await expectLater(
            () => Amplify.Auth.signIn(
              username: username,
              password: password,
              options: const SignInOptions(
                pluginOptions: CognitoSignInPluginOptions(
                  authFlowType: AuthenticationFlowType.customAuthWithSrp,
                  clientMetadata: {
                    'should-fail': 'true',
                  },
                ),
              ),
            ),
            throwsA(isA<AuthNotAuthorizedException>()),
            skip: 'Cognito does not pass InitiateAuth client metadata to the '
                'custom auth triggers: https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_InitiateAuth.html#CognitoUserPools-InitiateAuth-request-ClientMetadata',
          );
        });

        asyncTest('passes client metadata to confirmSignIn', (_) async {
          final res = await Amplify.Auth.signIn(
            username: username,
            password: password,
            options: options,
          );
          expect(
            res.nextStep.signInStep,
            AuthSignInStep.confirmSignInWithCustomChallenge,
          );
          await expectLater(
            Amplify.Auth.confirmSignIn(
              confirmationValue: confirmationValue,
              options: const ConfirmSignInOptions(
                pluginOptions: CognitoConfirmSignInPluginOptions(
                  clientMetadata: {
                    'should-fail': 'true',
                  },
                ),
              ),
            ),
            throwsA(isA<AuthNotAuthorizedException>()),
          );
          await expectLater(
            Amplify.Auth.confirmSignIn(
              confirmationValue: confirmationValue,
            ),
            throwsA(isA<AuthNotAuthorizedException>()),
            reason: 'Authorization failures are not retryable',
          );
        });
      });
    }

    group('with Device Tracking', () {
      for (final (environmentName, authFlowType) in [
        // See: https://github.com/aws-amplify/amplify-flutter/issues/3541#issuecomment-1675384073
        (
          'custom-auth-device-with-srp',
          AuthenticationFlowType.customAuthWithSrp
        ),
        // See: https://github.com/aws-amplify/amplify-flutter/issues/3596#issue-1862400577
        (
          'custom-auth-device-without-srp',
          AuthenticationFlowType.customAuthWithoutSrp
        ),
      ]) {
        group(environmentName, () {
          setUp(() async {
            await testRunner.configure(
              environmentName: environmentName,
            );

            username = generateUsername();
            password = generatePassword();

            await adminCreateUser(
              username,
              password,
              autoConfirm: true,
              verifyAttributes: true,
            );
          });

          Future<void> signIn() async {
            final signInRes = await switch (authFlowType) {
              AuthenticationFlowType.customAuthWithSrp => Amplify.Auth.signIn(
                  username: username,
                  password: password,
                  options: const SignInOptions(
                    pluginOptions: CognitoSignInPluginOptions(
                      authFlowType: AuthenticationFlowType.customAuthWithSrp,
                    ),
                  ),
                ),
              AuthenticationFlowType.customAuthWithoutSrp =>
                Amplify.Auth.signIn(
                  username: username,
                  options: const SignInOptions(
                    pluginOptions: CognitoSignInPluginOptions(
                      authFlowType: AuthenticationFlowType.customAuthWithoutSrp,
                    ),
                  ),
                ),
              _ => throw StateError('unreachable'),
            };
            expect(
              signInRes.nextStep.signInStep,
              AuthSignInStep.confirmSignInWithCustomChallenge,
            );
            final res = await Amplify.Auth.confirmSignIn(
              confirmationValue: confirmationValue,
            );
            expect(res.isSignedIn, isTrue);
          }

          test('automatically performs device SRP', () async {
            // On initial sign-in, the device will be untracked and unremembered.
            await signIn();

            final deviceRepo = cognitoPlugin.stateMachine
                .getOrCreate<DeviceMetadataRepository>();
            await expectLater(
              deviceRepo.get(username),
              completion(
                isA<CognitoDeviceSecrets>().having(
                  (secrets) => secrets.deviceStatus,
                  'deviceStatus',
                  DeviceRememberedStatusType.remembered,
                ),
              ),
              reason: 'Device should be remembered due to backend config',
            );

            await signOutUser();

            expect(
              cognitoPlugin.stateMachine.stream,
              emitsThrough(
                isA<SignInChallenge>().having(
                  (state) => state.challengeName,
                  'challengeName',
                  ChallengeNameType.devicePasswordVerifier,
                ),
              ),
              reason: 'Devices which are tracked and remembered automatically '
                  'trigger device SRP at the end of a custom auth flow',
            );

            await signIn();
          });
        });
      }
    });
  });
}
