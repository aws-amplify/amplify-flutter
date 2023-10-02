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

  group('signUp', () {
    for (final environmentName in ['main']) {
      group(environmentName, () {
        setUp(() async {
          await testRunner.configure(
            environmentName: environmentName,
          );
        });

        asyncTest('should signUp a user with valid parameters', (_) async {
          final username = generateUsername();
          final password = generatePassword();

          final res = await Amplify.Auth.signUp(
            username: username,
            password: password,
            options: SignUpOptions(
              userAttributes: {
                AuthUserAttributeKey.email: generateEmail(),
                AuthUserAttributeKey.phoneNumber: generatePhoneNumber(),
              },
            ),
          ) as CognitoSignUpResult;
          expect(
            res.isSignUpComplete,
            isFalse,
            reason: 'Sign up is not complete until user is confirmed',
          );
          expect(res.userId, isNotNull);
        });

        asyncTest(
          'should throw an InvalidParameterException without required attributes',
          (_) async {
            final username = generateUsername();
            final password = generatePassword();
            await expectLater(
              Amplify.Auth.signUp(username: username, password: password),
              throwsA(isA<InvalidParameterException>()),
            );
          },
        );

        asyncTest(
          'should throw an InvalidPasswordException for a password that does not '
          'meet requirements',
          (_) async {
            final username = generateUsername();
            const invalidPassword = '123';
            final options = SignUpOptions(
              userAttributes: {
                AuthUserAttributeKey.email: generateEmail(),
                AuthUserAttributeKey.phoneNumber: generatePhoneNumber(),
              },
            );
            await expectLater(
              Amplify.Auth.signUp(
                username: username,
                password: invalidPassword,
                options: options,
              ),
              throwsA(isA<InvalidPasswordException>()),
            );
          },
        );

        asyncTest(
          'should throw a UsernameExistsException for a username that '
          'already exists',
          (_) async {
            // create username for both sign up attempts
            final username = generateUsername();

            // sign up first user
            final userOnePassword = generatePassword();
            final userOneOptions = SignUpOptions(
              userAttributes: {
                AuthUserAttributeKey.email: generateEmail(),
                AuthUserAttributeKey.phoneNumber: generatePhoneNumber(),
              },
            );
            await Amplify.Auth.signUp(
              username: username,
              password: userOnePassword,
              options: userOneOptions,
            );

            // attempt to sign up second user with the same username
            final userTwoPassword = generatePassword();
            final userTwoOptions = SignUpOptions(
              userAttributes: {
                AuthUserAttributeKey.email: generateEmail(),
                AuthUserAttributeKey.phoneNumber: generatePhoneNumber(),
              },
            );
            await expectLater(
              Amplify.Auth.signUp(
                username: username,
                password: userTwoPassword,
                options: userTwoOptions,
              ),
              throwsA(isA<UsernameExistsException>()),
            );
          },
        );

        asyncTest(
          'should verify phone when email+phone are passed',
          (_) async {
            final username = generateUsername();
            final password = generatePassword();
            final email = generateEmail();
            final phoneNumber = generatePhoneNumber();

            final phoneCode = await getOtpCode(
              UserAttribute.phone(phoneNumber),
            );
            final signUpRes = await Amplify.Auth.signUp(
              username: username,
              password: password,
              options: SignUpOptions(
                userAttributes: {
                  AuthUserAttributeKey.email: email,
                  AuthUserAttributeKey.phoneNumber: phoneNumber,
                },
              ),
            );
            expect(signUpRes.isSignUpComplete, false);
            expect(signUpRes.nextStep.signUpStep, AuthSignUpStep.confirmSignUp);
            expect(
              signUpRes.nextStep.codeDeliveryDetails,
              isA<AuthCodeDeliveryDetails>()
                  .having(
                    (d) => d.attributeKey,
                    'attributeKey',
                    AuthUserAttributeKey.phoneNumber,
                  )
                  .having(
                    (d) => d.deliveryMedium,
                    'deliveryMedium',
                    DeliveryMedium.sms,
                  )
                  .having((d) => d.destination, 'destination', isNotNull),
            );

            final confirmSignUpRes = await Amplify.Auth.confirmSignUp(
              username: username,
              confirmationCode: await phoneCode.code,
            );
            expect(confirmSignUpRes.isSignUpComplete, true);

            // Login and confirm email
            final signInRes = await Amplify.Auth.signIn(
              username: username,
              password: password,
            );
            expect(signInRes.isSignedIn, true);

            final userAttributes = await Amplify.Auth.fetchUserAttributes();
            expect(
              userAttributes.toMap(),
              allOf([
                containsPair(AuthUserAttributeKey.email, email),
                containsPair(AuthUserAttributeKey.emailVerified, 'false'),
                containsPair(AuthUserAttributeKey.phoneNumber, phoneNumber),
                containsPair(AuthUserAttributeKey.phoneNumberVerified, 'true'),
              ]),
              reason:
                  'When both phone and email are passed during sign up, only '
                  'phone is verified by Cognito. It is the responsibility of developers '
                  'to all sendUserAttributeVerificationCode to receive a code for '
                  'verifying the other attribute.',
            );

            final emailCode = await getOtpCode(UserAttribute.email(email));
            final resendRes =
                await Amplify.Auth.sendUserAttributeVerificationCode(
              userAttributeKey: AuthUserAttributeKey.email,
            );
            expect(
              resendRes.codeDeliveryDetails.attributeKey,
              AuthUserAttributeKey.email,
            );
            expect(
              resendRes.codeDeliveryDetails.deliveryMedium,
              DeliveryMedium.email,
            );
            expect(resendRes.codeDeliveryDetails.destination, isNotNull);

            await expectLater(
              Amplify.Auth.confirmUserAttribute(
                userAttributeKey: AuthUserAttributeKey.email,
                confirmationCode: await emailCode.code,
              ),
              completes,
            );

            final updatedUserAttributes =
                await Amplify.Auth.fetchUserAttributes();
            expect(
              updatedUserAttributes.toMap(),
              allOf([
                containsPair(AuthUserAttributeKey.email, email),
                containsPair(AuthUserAttributeKey.emailVerified, 'true'),
                containsPair(AuthUserAttributeKey.phoneNumber, phoneNumber),
                containsPair(AuthUserAttributeKey.phoneNumberVerified, 'true'),
              ]),
            );
          },
        );
      });
    }

    group('identity pool-only', () {
      setUp(() async {
        await testRunner.configure(
          environmentName: 'identity-pool-only',
        );
      });

      asyncTest('throws on sign-up attempt', (_) async {
        final username = generateUsername();
        final password = generatePassword();
        await expectLater(
          Amplify.Auth.signUp(
            username: username,
            password: password,
          ),
          throwsA(isA<InvalidAccountTypeException>()),
        );
      });
    });
  });
}

extension on List<AuthUserAttribute> {
  Map<AuthUserAttributeKey, String> toMap() => {
        for (final attr in this) attr.userAttributeKey: attr.value,
      };
}
