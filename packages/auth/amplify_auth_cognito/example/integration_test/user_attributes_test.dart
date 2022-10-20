/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_test/amplify_test.dart';
import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'utils/mock_data.dart';
import 'utils/setup_utils.dart';
import 'utils/test_utils.dart';

extension on List<AuthUserAttribute> {
  String? valueOf(UserAttributeKey key) =>
      singleWhereOrNull((el) => el.userAttributeKey == key)?.value;
}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  final username = generateUsername();
  final password = generatePassword();
  final email = generateEmail();
  const phoneNumber = mockPhoneNumber;
  final name = generateNameAttribute();

  group('User Attributes', () {
    setUpAll(() async {
      await configureAuth();
      await signOutUser();
      await adminCreateUser(
        username,
        password,
        autoConfirm: true,
        verifyAttributes: true,
        attributes: [
          AuthUserAttribute(
            userAttributeKey: CognitoUserAttributeKey.name,
            value: name,
          ),
          AuthUserAttribute(
            userAttributeKey: CognitoUserAttributeKey.email,
            value: email,
          ),
          const AuthUserAttribute(
            userAttributeKey: CognitoUserAttributeKey.phoneNumber,
            value: mockPhoneNumber,
          )
        ],
      );
      await Amplify.Auth.signIn(
        username: username,
        password: password,
      );
    });

    tearDownAll(Amplify.reset);

    group('fetchUserAttributes', () {
      asyncTest('should fetch a users attributes', (_) async {
        final userAttributes = await Amplify.Auth.fetchUserAttributes();

        expect(
          userAttributes.valueOf(CognitoUserAttributeKey.email),
          email,
        );
        expect(
          userAttributes.valueOf(CognitoUserAttributeKey.phoneNumber),
          phoneNumber,
        );
        expect(
          userAttributes.valueOf(CognitoUserAttributeKey.name),
          name,
        );
      });
    });

    group('updateUserAttribute', () {
      asyncTest('should update a single users attribute', (_) async {
        final updatedName = generateNameAttribute();
        final res = await Amplify.Auth.updateUserAttribute(
          userAttributeKey: CognitoUserAttributeKey.name,
          value: updatedName,
        );
        expect(res.nextStep.updateAttributeStep, 'DONE');

        final userAttributes = await Amplify.Auth.fetchUserAttributes();
        expect(
          userAttributes.valueOf(CognitoUserAttributeKey.name),
          updatedName,
          reason: 'Attribute shoud be updated',
        );
      });

      asyncTest(
        'should throw an InvalidParameterException for an invalid '
        'attribute key',
        (_) async {
          await expectLater(
            Amplify.Auth.updateUserAttribute(
              userAttributeKey: CognitoUserAttributeKey.parse('fake-key-name'),
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
              userAttributeKey: CognitoUserAttributeKey.email,
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
              userAttributeKey: CognitoUserAttributeKey.name,
              value: updatedName,
            ),
            AuthUserAttribute(
              userAttributeKey: CognitoUserAttributeKey.givenName,
              value: updatedGivenName,
            ),
          ],
        );

        final userAttributes = await Amplify.Auth.fetchUserAttributes();
        expect(
          userAttributes.valueOf(CognitoUserAttributeKey.name),
          updatedName,
          reason: 'Attribute shoud be updated',
        );
        expect(
          userAttributes.valueOf(CognitoUserAttributeKey.givenName),
          updatedGivenName,
          reason: 'Attribute shoud be updated',
        );
      });

      asyncTest(
        'should throw an InvalidParameterException and not update any '
        'attributes if one is invalid',
        (_) async {
          // set initial state
          await Amplify.Auth.updateUserAttribute(
            userAttributeKey: CognitoUserAttributeKey.name,
            value: name,
          );

          // attempt update
          final updatedName = generateNameAttribute();
          await expectLater(
            Amplify.Auth.updateUserAttributes(
              attributes: [
                AuthUserAttribute(
                  userAttributeKey: CognitoUserAttributeKey.name,
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
            userAttributes.valueOf(CognitoUserAttributeKey.name),
            name,
            reason: 'Attribute shoud not be updated',
          );
        },
      );
    });
  });
}
