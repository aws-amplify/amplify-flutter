// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_integration_test/amplify_auth_integration_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_runner.dart';

void main() {
  testRunner.setupTests();

  group(
    'confirmSignUp',
    () {
      for (final environment in userPoolEnvironments) {
        group(environment.name, () {
          setUp(() async {
            await testRunner.configure(
              environmentName: environment.name,
              useAmplifyOutputs: environment.useAmplifyOutputs,
            );
          });

          Future<void> signUpWithoutConfirming(
            String username,
            String password,
          ) async {
            final userAttributes = switch (environment.loginMethod) {
              LoginMethod.email => {AuthUserAttributeKey.email: username},
              LoginMethod.phone => {AuthUserAttributeKey.phoneNumber: username},
              LoginMethod.username => {
                  AuthUserAttributeKey.email: generateEmail(),
                  AuthUserAttributeKey.phoneNumber: generatePhoneNumber(),
                }
            };
            final signUpResult = await Amplify.Auth.signUp(
              username: username,
              password: password,
              options: SignUpOptions(
                userAttributes: userAttributes,
              ),
            ) as CognitoSignUpResult;
            expect(signUpResult.isSignUpComplete, false);
            expect(
              signUpResult.nextStep.codeDeliveryDetails?.deliveryMedium,
              environment.confirmationDeliveryMedium,
            );
            expect(signUpResult.userId, isNotNull);
          }

          asyncTest('can confirm sign up', (_) async {
            final username = environment.generateUsername();
            final password = generatePassword();

            // Sign up, but do not confirm, user
            final otpResult = await getOtpCode(
              environment.getLoginAttribute(username),
            );
            await signUpWithoutConfirming(username, password);

            // Confirm sign up and complete sign in
            final confirmResult = await Amplify.Auth.confirmSignUp(
              username: username,
              confirmationCode: await otpResult.code,
            );
            expect(confirmResult.isSignUpComplete, true);
          });

          asyncTest('can sign up after sign in', (_) async {
            final username = environment.generateUsername();
            final password = generatePassword();

            // Sign up, but do not confirm, user
            final otpResult = await getOtpCode(
              environment.getLoginAttribute(username),
            );
            await signUpWithoutConfirming(username, password);

            // Sign in
            final signInResult = await Amplify.Auth.signIn(
              username: username,
              password: password,
            );
            expect(
              signInResult.nextStep.signInStep,
              AuthSignInStep.confirmSignUp,
            );

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
            final username = environment.generateUsername();
            final password = generatePassword();

            // Sign up, but do not confirm, user
            var otpResult = await getOtpCode(
              environment.getLoginAttribute(username),
            );
            await signUpWithoutConfirming(username, password);

            // Throw away code and get next one
            await otpResult.code;
            otpResult = await getOtpCode(
              environment.getLoginAttribute(username),
            );
            final resendResult = await Amplify.Auth.resendSignUpCode(
              username: username,
            );
            expect(
              resendResult.codeDeliveryDetails.deliveryMedium,
              environment.confirmationDeliveryMedium,
            );

            final confirmResult = await Amplify.Auth.confirmSignUp(
              username: username,
              confirmationCode: await otpResult.code,
            );
            expect(confirmResult.isSignUpComplete, true);
          });
        });
      }
    },
  );
}
