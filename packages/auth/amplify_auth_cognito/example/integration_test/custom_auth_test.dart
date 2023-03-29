// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito_example/amplifyconfiguration.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/setup_utils.dart';
import 'utils/test_utils.dart';

void main() {
  AWSLogger().logLevel = LogLevel.verbose;
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('custom auth', () {
    // Arbitrary challenge answer defined in Lambda
    const confirmationValue = '123';

    late String username;
    late String password;

    group('without SRP', () {
      const options = SignInOptions(
        pluginOptions: CognitoSignInPluginOptions(
          authFlowType: AuthenticationFlowType.customAuthWithoutSrp,
        ),
      );

      setUpAll(() async {
        await configureAuth(
          config: amplifyEnvironments['custom-auth-without-srp'],
        );
      });

      tearDownAll(Amplify.reset);

      setUp(() async {
        username = generateUsername();
        password = generatePassword();

        await adminCreateUser(
          username,
          password,
          autoConfirm: true,
          verifyAttributes: true,
        );
      });

      tearDown(() async {
        await signOutUser();
        await deleteUser(username);
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
          // '123' is the arbitrary challenge answer defined in lambda code
          await expectLater(
            Amplify.Auth.confirmSignIn(confirmationValue: 'wrong'),
            throwsA(isA<AuthNotAuthorizedException>()),
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
            Amplify.Auth.signIn(
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

      asyncTest('works with deprecated auth flow', (_) async {
        const options = SignInOptions(
          pluginOptions: CognitoSignInPluginOptions(
            // ignore: deprecated_member_use
            authFlowType: AuthenticationFlowType.customAuth,
          ),
        );
        final signInRes = await Amplify.Auth.signIn(
          username: username,
          options: options,
        );
        expect(
          signInRes.nextStep.signInStep,
          AuthSignInStep.confirmSignInWithCustomChallenge,
          reason: 'should use non-SRP flow based on exclusion of password',
        );
        final res = await Amplify.Auth.confirmSignIn(
          confirmationValue: confirmationValue,
        );
        expect(
          res.isSignedIn,
          isTrue,
          reason: 'should use non-SRP flow based on exclusion of password',
        );
      });
    });

    group('with SRP', () {
      const options = SignInOptions(
        pluginOptions: CognitoSignInPluginOptions(
          authFlowType: AuthenticationFlowType.customAuthWithSrp,
        ),
      );

      setUpAll(() async {
        await configureAuth(
          config: amplifyEnvironments['custom-auth-with-srp'],
        );
      });

      tearDownAll(Amplify.reset);

      setUp(() async {
        username = generateUsername();
        password = generatePassword();

        await adminCreateUser(
          username,
          password,
          autoConfirm: true,
          verifyAttributes: true,
        );
      });

      tearDown(() async {
        await signOutUser();
        await deleteUser(username);
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
          Amplify.Auth.signIn(
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

      asyncTest('works with deprecated auth flow', (_) async {
        const options = SignInOptions(
          pluginOptions: CognitoSignInPluginOptions(
            // ignore: deprecated_member_use
            authFlowType: AuthenticationFlowType.customAuth,
          ),
        );
        final signInRes = await Amplify.Auth.signIn(
          username: username,
          password: password,
          options: options,
        );
        expect(
          signInRes.nextStep.signInStep,
          AuthSignInStep.confirmSignInWithCustomChallenge,
          reason: 'should use SRP flow based on inclusion of password',
        );
        final res = await Amplify.Auth.confirmSignIn(
          confirmationValue: confirmationValue,
        );
        expect(
          res.isSignedIn,
          isTrue,
          reason: 'should use SRP flow based on inclusion of password',
        );
      });
    });
  });
}
