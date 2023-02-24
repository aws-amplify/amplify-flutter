// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/setup_utils.dart';
import 'utils/test_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group(
    'confirmSignUp',
    () {
      setUpAll(() async {
        await configureAuth(
          additionalPlugins: [AmplifyAPI()],
        );
      });

      setUp(signOutUser);

      Future<void> signUpWithoutConfirming(
        String username,
        String password,
      ) async {
        final signUpResult = await Amplify.Auth.signUp(
          username: username,
          password: password,
          options: CognitoSignUpOptions(
            userAttributes: {
              CognitoUserAttributeKey.email: generateEmail(),
              CognitoUserAttributeKey.phoneNumber: generatePhoneNumber(),
            },
          ),
        ) as CognitoSignUpResult;
        expect(signUpResult.isSignUpComplete, false);
        expect(
          signUpResult.nextStep.codeDeliveryDetails?.deliveryMedium,
          DeliveryMedium.sms,
        );
        expect(signUpResult.userId, isNotNull);
      }

      asyncTest('can confirm sign up', (_) async {
        final username = generateUsername();
        final password = generatePassword();

        // Sign up, but do not confirm, user
        final otpResult = await getOtpCode(UserAttribute.username(username));
        await signUpWithoutConfirming(username, password);

        // Confirm sign up and complete sign in
        final confirmResult = await Amplify.Auth.confirmSignUp(
          username: username,
          confirmationCode: await otpResult.code,
        );
        expect(confirmResult.isSignUpComplete, true);
      });

      asyncTest('can sign up after sign in', (_) async {
        final username = generateUsername();
        final password = generatePassword();

        // Sign up, but do not confirm, user
        final otpResult = await getOtpCode(UserAttribute.username(username));

        await signUpWithoutConfirming(username, password);

        // Sign in
        final signInResult = await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
        expect(signInResult.nextStep.signInStep, AuthSignInStep.confirmSignUp);

        // Confirm sign up and complete sign in
        final confirmResult = await Amplify.Auth.confirmSignUp(
          username: username,
          confirmationCode: await otpResult.code,
        );
        expect(confirmResult.isSignUpComplete, true);

        final signInComplete = await Amplify.Auth.signIn(
          username: username,
          password: password,
        );
        expect(signInComplete.nextStep.signInStep, AuthSignInStep.done);
      });

      asyncTest('can resend sign up code', (_) async {
        final username = generateUsername();
        final password = generatePassword();

        // Sign up, but do not confirm, user
        var otpResult = await getOtpCode(UserAttribute.username(username));
        await signUpWithoutConfirming(username, password);

        // Throw away code and get next one
        await otpResult.code;
        otpResult = await getOtpCode(UserAttribute.username(username));

        final resendResult = await Amplify.Auth.resendSignUpCode(
          username: username,
        );
        expect(
          resendResult.codeDeliveryDetails.deliveryMedium,
          DeliveryMedium.sms,
        );

        final confirmResult = await Amplify.Auth.confirmSignUp(
          username: username,
          confirmationCode: await otpResult.code,
        );
        expect(confirmResult.isSignUpComplete, true);
      });
    },
  );
}
