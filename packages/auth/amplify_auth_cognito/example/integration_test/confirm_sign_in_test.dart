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

  group('confirmSignIn', () {
    for (final environmentName in [
      'main',
      'user-pool-only',
      'with-client-secret'
    ]) {
      group(environmentName, () {
        late String username;
        late String password;
        late OtpResult otpResult;

        setUpAll(() async {
          await configureAuth(
            config: amplifyEnvironments[environmentName],
          );
        });

        setUp(() async {
          username = generateUsername();
          password = generatePassword();

          otpResult = await getOtpCode(UserAttribute.username(username));

          final cognitoUsername = await adminCreateUser(
            username,
            password,
            enableMfa: true,
            verifyAttributes: true,
          );
          addTearDown(() => deleteUser(cognitoUsername));

          final signInRes = await Amplify.Auth.signIn(
            username: username,
            password: password,
          );
          expect(signInRes.isSignedIn, isFalse);
          expect(
            signInRes.nextStep.signInStep,
            AuthSignInStep.confirmSignInWithNewPassword,
          );
        });

        tearDown(signOutUser);

        asyncTest('confirming signs in user', (_) async {
          final newPassword = generatePassword();

          final confirmRes = await Amplify.Auth.confirmSignIn(
            confirmationValue: newPassword,
          );
          expect(confirmRes.isSignedIn, isFalse);
          expect(
            confirmRes.nextStep.signInStep,
            AuthSignInStep.confirmSignInWithSmsMfaCode,
          );

          final otpCode = await otpResult.code;

          await expectLater(
            Amplify.Auth.confirmSignIn(
              confirmationValue: otpCode,
            ),
            completion(
              isA<SignInResult>().having(
                (res) => res.isSignedIn,
                'isSignedIn',
                isTrue,
              ),
            ),
          );
        });

        asyncTest('allows retrying on code mismatch', (_) async {
          final newPassword = generatePassword();

          final confirmRes = await Amplify.Auth.confirmSignIn(
            confirmationValue: newPassword,
          );
          expect(confirmRes.isSignedIn, isFalse);
          expect(
            confirmRes.nextStep.signInStep,
            AuthSignInStep.confirmSignInWithSmsMfaCode,
          );

          final otpCode = await otpResult.code;

          await expectLater(
            Amplify.Auth.confirmSignIn(
              confirmationValue: 'incorrect-code',
            ),
            throwsA(isA<CodeMismatchException>()),
          );

          await expectLater(
            Amplify.Auth.confirmSignIn(
              confirmationValue: otpCode,
            ),
            completion(
              isA<SignInResult>().having(
                (res) => res.isSignedIn,
                'isSignedIn',
                isTrue,
              ),
            ),
          );
        });

        asyncTest('allows retrying on weak password', (_) async {
          const weakPassword = 'weak';
          await expectLater(
            Amplify.Auth.confirmSignIn(
              confirmationValue: weakPassword,
            ),
            throwsA(isA<InvalidPasswordException>()),
          );

          final newPassword = generatePassword();
          final confirmRes = await Amplify.Auth.confirmSignIn(
            confirmationValue: newPassword,
          );
          expect(confirmRes.isSignedIn, isFalse);
          expect(
            confirmRes.nextStep.signInStep,
            AuthSignInStep.confirmSignInWithSmsMfaCode,
          );
        });
      });
    }
  });
}
