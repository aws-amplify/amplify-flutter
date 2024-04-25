// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_integration_test/amplify_auth_integration_test.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_runner.dart';

extension on List<AuthUserAttribute> {
  String? valueOf(AuthUserAttributeKey authUserAttributeKey) =>
      singleWhereOrNull(
        (el) => el.userAttributeKey == authUserAttributeKey,
      )?.value;
}

void main() {
  testRunner.setupTests();

  final logger = AmplifyLogger().createChild('UserAttributes');

  late String username;
  late String password;
  late String email;
  late String phoneNumber;
  late String name;

  Future<void> createAndLoginUser() async {
    username = generateUsername();
    password = generatePassword();
    email = generateEmail();
    phoneNumber = generatePhoneNumber();
    name = generateNameAttribute();

    await adminCreateUser(
      username,
      password,
      autoConfirm: true,
      verifyAttributes: true,
      attributes: {
        AuthUserAttributeKey.name: name,
        AuthUserAttributeKey.email: email,
        AuthUserAttributeKey.phoneNumber: phoneNumber,
      },
    );

    final res = await Amplify.Auth.signIn(
      username: username,
      password: password,
    );
    expect(
      res.isSignedIn,
      isTrue,
      reason: '${res.nextStep.signInStep} should be "DONE"',
    );

    final user = {
      'username': username,
      'email': email,
      'phoneNumber': phoneNumber,
      'name': name,
    };
    logger.debug('Created user with attributes: ${prettyPrintJson(user)}');
  }

  group('User Attributes', () {
    for (final environmentName in userPoolEnvironments) {
      group(environmentName, () {
        setUp(() async {
          await testRunner.configure(
            environmentName: environmentName,
          );

          await createAndLoginUser();
        });

        group('fetchUserAttributes', () {
          asyncTest('should fetch a users attributes', (_) async {
            final userAttributes = await Amplify.Auth.fetchUserAttributes();

            expect(
              userAttributes.valueOf(AuthUserAttributeKey.email),
              email,
            );
            expect(
              userAttributes.valueOf(AuthUserAttributeKey.phoneNumber),
              phoneNumber,
            );
            expect(
              userAttributes.valueOf(AuthUserAttributeKey.name),
              name,
            );
          });
        });

        group('updateUserAttribute', () {
          asyncTest('should update a single users attribute', (_) async {
            final updatedName = generateNameAttribute();
            final res = await Amplify.Auth.updateUserAttribute(
              userAttributeKey: AuthUserAttributeKey.name,
              value: updatedName,
            );
            expect(
              res.nextStep.updateAttributeStep,
              AuthUpdateAttributeStep.done,
            );

            final userAttributes = await Amplify.Auth.fetchUserAttributes();
            expect(
              userAttributes.valueOf(AuthUserAttributeKey.name),
              updatedName,
              reason: 'Attribute should be updated',
            );
          });

          asyncTest(
            'should throw an InvalidParameterException for an invalid '
            'attribute key',
            (_) async {
              await expectLater(
                Amplify.Auth.updateUserAttribute(
                  userAttributeKey:
                      CognitoUserAttributeKey.parse('fake-key-name'),
                  value: 'mock-value',
                ),
                throwsA(isA<InvalidParameterException>()),
              );
            },
          );

          asyncTest(
            'should throw an InvalidParameterException for an invalid '
            'attribute value',
            (_) async {
              const invalidEmailAddress = 'invalidEmailFormat.com';
              await expectLater(
                Amplify.Auth.updateUserAttribute(
                  userAttributeKey: AuthUserAttributeKey.email,
                  value: invalidEmailAddress,
                ),
                throwsA(isA<InvalidParameterException>()),
              );
            },
          );
        });

        group('updateUserAttributes', () {
          asyncTest('should update multiple users attributes', (_) async {
            final updatedName = generateNameAttribute();
            final updatedGivenName = generateNameAttribute();
            await Amplify.Auth.updateUserAttributes(
              attributes: [
                AuthUserAttribute(
                  userAttributeKey: AuthUserAttributeKey.name,
                  value: updatedName,
                ),
                AuthUserAttribute(
                  userAttributeKey: AuthUserAttributeKey.givenName,
                  value: updatedGivenName,
                ),
              ],
            );

            final userAttributes = await Amplify.Auth.fetchUserAttributes();
            expect(
              userAttributes.valueOf(AuthUserAttributeKey.name),
              updatedName,
              reason: 'Attribute should be updated',
            );
            expect(
              userAttributes.valueOf(AuthUserAttributeKey.givenName),
              updatedGivenName,
              reason: 'Attribute should be updated',
            );
          });

          asyncTest(
            'should throw an InvalidParameterException and not update any '
            'attributes if one is invalid',
            (_) async {
              // set initial state
              await Amplify.Auth.updateUserAttribute(
                userAttributeKey: AuthUserAttributeKey.name,
                value: name,
              );

              // attempt update
              final updatedName = generateNameAttribute();
              await expectLater(
                Amplify.Auth.updateUserAttributes(
                  attributes: [
                    AuthUserAttribute(
                      userAttributeKey: AuthUserAttributeKey.name,
                      value: updatedName,
                    ),
                    AuthUserAttribute(
                      userAttributeKey: CognitoUserAttributeKey.parse(
                        'fake-key-name',
                      ),
                      value: 'mock-value',
                    ),
                  ],
                ),
                throwsA(isA<InvalidParameterException>()),
              );

              final userAttributes = await Amplify.Auth.fetchUserAttributes();
              expect(
                userAttributes.valueOf(AuthUserAttributeKey.name),
                name,
                reason: 'Attribute should not be updated',
              );
            },
          );
        });
      });
    }

    for (final (environmentName, keepOriginal) in [
      ('main', false),
      ('keep-original-attributes', true),
    ]) {
      group(environmentName, () {
        setUp(() async {
          await testRunner.configure(
            environmentName: environmentName,
          );

          await createAndLoginUser();
        });

        group('sendUserAttributeVerificationCode', () {
          asyncTest('to email', (_) async {
            final newEmail = generateEmail();
            // Cognito sends the confirmation code to the new attribute
            // even when `keepOriginal` is true and even though it uses the old
            // attribute when resending the code.
            final code = await getOtpCode(UserAttribute.email(newEmail));
            logger.debug(
              'Updating email (keepOriginal=$keepOriginal) to: $newEmail',
            );
            final updateResult = await Amplify.Auth.updateUserAttribute(
              userAttributeKey: AuthUserAttributeKey.email,
              value: newEmail,
            );
            expect(updateResult.isUpdated, false);
            expect(
              updateResult.nextStep.updateAttributeStep,
              AuthUpdateAttributeStep.confirmAttributeWithCode,
            );
            expect(
              updateResult.nextStep.codeDeliveryDetails?.attributeKey,
              AuthUserAttributeKey.email,
            );
            expect(
              updateResult.nextStep.codeDeliveryDetails?.deliveryMedium,
              DeliveryMedium.email,
            );
            expect(
              updateResult.nextStep.codeDeliveryDetails?.destination,
              isNotNull,
            );

            // Drain original code
            await expectLater(
              code.code,
              completes,
              reason:
                  'Cognito sends the confirmation code to the new attribute '
                  'even when keepOriginal is true and even though it uses the old '
                  'attribute when resending the code',
            );
            logger.debug('Got original code');

            final resentCode = await getOtpCode(
              UserAttribute.email(keepOriginal ? email : newEmail),
            );
            final resendResult =
                await Amplify.Auth.sendUserAttributeVerificationCode(
              userAttributeKey: AuthUserAttributeKey.email,
            );
            expect(
              resendResult.codeDeliveryDetails.attributeKey,
              AuthUserAttributeKey.email,
            );
            expect(
              resendResult.codeDeliveryDetails.deliveryMedium,
              DeliveryMedium.email,
            );
            expect(
              resendResult.codeDeliveryDetails.destination,
              isNotNull,
            );

            await expectLater(
              Amplify.Auth.confirmUserAttribute(
                userAttributeKey: AuthUserAttributeKey.email,
                confirmationCode: await resentCode.code,
              ),
              completes,
            );
          });

          asyncTest('to phoneNumber', (_) async {
            final newPhoneNumber = generatePhoneNumber();
            // Cognito sends the confirmation code to the new attribute
            // even when `keepOriginal` is true and even though it uses the old
            // attribute when resending the code.
            final code = await getOtpCode(UserAttribute.phone(newPhoneNumber));
            logger.debug(
              'Updating phoneNumber (keepOriginal=$keepOriginal) to: $newPhoneNumber',
            );
            final updateResult = await Amplify.Auth.updateUserAttribute(
              userAttributeKey: AuthUserAttributeKey.phoneNumber,
              value: newPhoneNumber,
            );
            expect(updateResult.isUpdated, false);
            expect(
              updateResult.nextStep.updateAttributeStep,
              AuthUpdateAttributeStep.confirmAttributeWithCode,
            );
            expect(
              updateResult.nextStep.codeDeliveryDetails?.attributeKey,
              AuthUserAttributeKey.phoneNumber,
            );
            expect(
              updateResult.nextStep.codeDeliveryDetails?.deliveryMedium,
              DeliveryMedium.sms,
            );
            expect(
              updateResult.nextStep.codeDeliveryDetails?.destination,
              isNotNull,
            );

            // Drain original code
            await expectLater(
              code.code,
              completes,
              reason:
                  'Cognito sends the confirmation code to the new attribute '
                  'even when keepOriginal is true and even though it uses the old '
                  'attribute when resending the code',
            );
            logger.debug('Got original code');

            final resentCode = await getOtpCode(
              UserAttribute.phone(keepOriginal ? phoneNumber : newPhoneNumber),
            );
            final resendResult =
                await Amplify.Auth.sendUserAttributeVerificationCode(
              userAttributeKey: AuthUserAttributeKey.phoneNumber,
            );
            expect(
              resendResult.codeDeliveryDetails.attributeKey,
              AuthUserAttributeKey.phoneNumber,
            );
            expect(
              resendResult.codeDeliveryDetails.deliveryMedium,
              DeliveryMedium.sms,
            );
            expect(
              resendResult.codeDeliveryDetails.destination,
              isNotNull,
            );

            await expectLater(
              Amplify.Auth.confirmUserAttribute(
                userAttributeKey: AuthUserAttributeKey.phoneNumber,
                confirmationCode: await resentCode.code,
              ),
              completes,
            );
          });
        });
      });
    }
  });
}
