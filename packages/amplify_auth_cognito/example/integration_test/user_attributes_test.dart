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

import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:amplify_flutter/amplify.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'utils/mock_data.dart';
import 'utils/setup_utils.dart';

const emailAttributeKey = CognitoUserAttributeKey.email;
const nameAttributeKey = CognitoUserAttributeKey.name;
const phoneNumberAttributeKey = CognitoUserAttributeKey.phoneNumber;
const givenNameAttributeKey = CognitoUserAttributeKey.givenName;
const emailVerifiedAttributeKey = CognitoUserAttributeKey.emailVerified;

dynamic getAttributeValueFromList(
  List<AuthUserAttribute> userAttributes,
  CognitoUserAttributeKey cognitoAttribute,
) {
  return userAttributes
      .firstWhere((attribute) => attribute.userAttributeKey == cognitoAttribute)
      .value;
}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  final username = generateUsername();
  final password = generatePassword();
  final email = generateEmail();
  final phoneNumber = mockPhoneNumber;
  final name = generateNameAttribute();

  group('User Attributes', () {
    setUpAll(() async {
      await configureAuth();
      await signOutUser();
      await Amplify.Auth.signUp(
          username: username,
          password: password,
          options: CognitoSignUpOptions(userAttributes: {
            emailAttributeKey: email,
            phoneNumberAttributeKey: phoneNumber,
            nameAttributeKey: name
          }));
      await Amplify.Auth.signIn(username: username, password: password);
    });

    group('fetchUserAttributes', () {
      testWidgets('should fetch a users attributes',
          (WidgetTester tester) async {
        var userAttributes = await Amplify.Auth.fetchUserAttributes();

        var emailAttributeValue = getAttributeValueFromList(
          userAttributes,
          emailAttributeKey,
        );
        var phoneNumberAttributeValue = getAttributeValueFromList(
          userAttributes,
          phoneNumberAttributeKey,
        );
        var nameAttributeValue = getAttributeValueFromList(
          userAttributes,
          nameAttributeKey,
        );

        expect(emailAttributeValue, email);
        expect(phoneNumberAttributeValue, phoneNumber);
        expect(nameAttributeValue, name);
      });
    });

    group('updateUserAttribute', () {
      testWidgets('should update a single users attribute',
          (WidgetTester tester) async {
        final updatedName = generateNameAttribute();
        var res = await Amplify.Auth.updateUserAttribute(
          userAttributeKey: nameAttributeKey,
          value: updatedName,
        );

        expect(res.nextStep.updateAttributeStep, 'DONE');

        var userAttributes = await Amplify.Auth.fetchUserAttributes();

        var nameAttributeValue = getAttributeValueFromList(
          userAttributes,
          nameAttributeKey,
        );

        expect(nameAttributeValue, updatedName);
      });

      testWidgets(
          'should throw an InvalidParameterException for an invalid attribute key',
          (WidgetTester tester) async {
        try {
          await Amplify.Auth.updateUserAttribute(
            userAttributeKey: CognitoUserAttributeKey.parse('fake-key-name'),
            value: 'mock-value',
          );
        } catch (e) {
          expect(e, TypeMatcher<InvalidParameterException>());
          return;
        }
        throw Exception('Expected InvalidParameterException');
      });

      testWidgets(
          'should throw an InvalidParameterException for an invalid attribute value',
          (WidgetTester tester) async {
        const invalidEmailAddress = 'invalidEmailFormat.com';
        try {
          await Amplify.Auth.updateUserAttribute(
            userAttributeKey: emailAttributeKey,
            value: invalidEmailAddress,
          );
        } catch (e) {
          expect(e, TypeMatcher<InvalidParameterException>());
          return;
        }
        throw Exception('Expected InvalidParameterException');
      });
    });

    group('updateUserAttributes', () {
      testWidgets('should update multiple users attributes',
          (WidgetTester tester) async {
        final updatedName = generateNameAttribute();
        final updatedGivenName = generateNameAttribute();
        await Amplify.Auth.updateUserAttributes(
          attributes: [
            AuthUserAttribute(
              userAttributeKey: nameAttributeKey,
              value: updatedName,
            ),
            AuthUserAttribute(
              userAttributeKey: givenNameAttributeKey,
              value: updatedGivenName,
            ),
          ],
        );

        var userAttributes = await Amplify.Auth.fetchUserAttributes();
        var nameAttributeValue = getAttributeValueFromList(
          userAttributes,
          nameAttributeKey,
        );

        var givenNameAttributeValue = getAttributeValueFromList(
          userAttributes,
          givenNameAttributeKey,
        );

        expect(nameAttributeValue, updatedName);
        expect(givenNameAttributeValue, updatedGivenName);
      });

      testWidgets(
          'should throw an InvalidParameterException and not update any attributes if one is invalid',
          (WidgetTester tester) async {
        // set initial state
        await Amplify.Auth.updateUserAttribute(
          userAttributeKey: nameAttributeKey,
          value: name,
        );

        // attempt update
        final updatedName = generateNameAttribute();
        try {
          await Amplify.Auth.updateUserAttributes(attributes: [
            AuthUserAttribute(
              userAttributeKey: nameAttributeKey,
              value: updatedName,
            ),
            AuthUserAttribute(
              userAttributeKey: CognitoUserAttributeKey.parse('fake-key-name'),
              value: 'mock-value',
            ),
          ]);
        } catch (e) {
          expect(e, TypeMatcher<InvalidParameterException>());
          var userAttributes = await Amplify.Auth.fetchUserAttributes();
          var nameAttributeValue = getAttributeValueFromList(
            userAttributes,
            nameAttributeKey,
          );
          // assert no update was made
          expect(nameAttributeValue, name);
          return;
        }
        throw Exception('Expected InvalidParameterException');
      });
    });
  });
}
