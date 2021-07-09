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
            'email': email,
            'phone_number': phoneNumber,
            'name': name
          }));
      await Amplify.Auth.signIn(username: username, password: password);
    });

    testWidgets('should fetch a users attributes', (WidgetTester tester) async {
      var userAttributes = await Amplify.Auth.fetchUserAttributes();
      var emailAttribute = userAttributes
          .firstWhere((attribute) => attribute.userAttributeKey == 'email')
          .value;
      var phoneNumberAttribute = userAttributes
          .firstWhere(
              (attribute) => attribute.userAttributeKey == 'phone_number')
          .value;
      var nameAttribute = userAttributes
          .firstWhere((attribute) => attribute.userAttributeKey == 'name')
          .value;

      expect(emailAttribute, email);
      expect(phoneNumberAttribute, phoneNumber);
      expect(nameAttribute, name);
    });

    group('updateUserAttribute', () {
      testWidgets('should update a single users attribute',
          (WidgetTester tester) async {
        final updatedName = generateNameAttribute();
        await Amplify.Auth.updateUserAttribute(
          userAttributeKey: 'name',
          value: updatedName,
        );

        var userAttributes = await Amplify.Auth.fetchUserAttributes();
        var nameAttribute = userAttributes
            .firstWhere((attribute) => attribute.userAttributeKey == 'name')
            .value;

        expect(nameAttribute, updatedName);
      });

      testWidgets(
          'should throw an InvalidParameterException for an invalid attribute key',
          (WidgetTester tester) async {
        try {
          await Amplify.Auth.updateUserAttribute(
            userAttributeKey: 'fake-key-name',
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
        try {
          await Amplify.Auth.updateUserAttribute(
            userAttributeKey: 'email',
            value: 'invalidEmailFormat.com',
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
        final givenName = generateNameAttribute();
        await Amplify.Auth.updateUserAttributes(attributes: [
          AuthUserAttribute(userAttributeKey: 'name', value: updatedName),
          AuthUserAttribute(userAttributeKey: 'given_name', value: givenName),
        ]);

        var userAttributes = await Amplify.Auth.fetchUserAttributes();
        var nameAttribute = userAttributes
            .firstWhere((attribute) => attribute.userAttributeKey == 'name')
            .value;
        var givenNameAttribute = userAttributes
            .firstWhere(
                (attribute) => attribute.userAttributeKey == 'given_name')
            .value;

        expect(nameAttribute, updatedName);
        expect(givenNameAttribute, givenName);
      });

      testWidgets(
          'should throw an InvalidParameterException and not update any attributes if one is invalid',
          (WidgetTester tester) async {
        // set initial state
        await Amplify.Auth.updateUserAttribute(
          userAttributeKey: 'name',
          value: name,
        );

        // attempt update
        final updatedName = generateNameAttribute();
        try {
          await Amplify.Auth.updateUserAttributes(attributes: [
            AuthUserAttribute(userAttributeKey: 'name', value: updatedName),
            AuthUserAttribute(
                userAttributeKey: 'fake-key-name', value: 'mock-value'),
          ]);
        } catch (e) {
          expect(e, TypeMatcher<InvalidParameterException>());
          var userAttributes = await Amplify.Auth.fetchUserAttributes();
          var nameAttribute = userAttributes
              .firstWhere((attribute) => attribute.userAttributeKey == 'name')
              .value;
          // assert no update was made
          expect(nameAttribute, name);
          return;
        }
        throw Exception('Expected InvalidParameterException');
      });
    });
  });
}
