// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_auth_cognito_example/amplifyconfiguration.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_integration_test/amplify_integration_test.dart';
import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';

import 'utils/setup_utils.dart';
import 'utils/test_utils.dart';

extension on List<AuthUserAttribute> {
  String? valueOf(AuthUserAttributeKey authUserAttributeKey) =>
      singleWhereOrNull(
        (el) => el.userAttributeKey.key == authUserAttributeKey.key,
      )?.value;
}

void main() {
  initTests();

  group('User Attributes', () {
    for (final environmentName in userPoolEnvironments) {
      group(environmentName, () {
        late String username;
        late String password;
        late String email;
        late String phoneNumber;
        late String name;

        setUpAll(() async {
          await configureAuth(
            config: amplifyEnvironments[environmentName]!,
          );

          username = generateUsername();
          password = generatePassword();
          email = generateEmail();
          phoneNumber = generatePhoneNumber();
          name = generateNameAttribute();

          final cognitoUsername = await adminCreateUser(
            username,
            password,
            autoConfirm: true,
            verifyAttributes: true,
            attributes: [
              AuthUserAttribute(
                userAttributeKey: AuthUserAttributeKey.name,
                value: name,
              ),
              AuthUserAttribute(
                userAttributeKey: AuthUserAttributeKey.email,
                value: email,
              ),
              AuthUserAttribute(
                userAttributeKey: AuthUserAttributeKey.phoneNumber,
                value: phoneNumber,
              )
            ],
          );
          addTearDown(() => deleteUser(cognitoUsername));

          final res = await Amplify.Auth.signIn(
            username: username,
            password: password,
          );
          expect(
            res.isSignedIn,
            isTrue,
            reason: '${res.nextStep.signInStep} should be "DONE"',
          );
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
  });
}
