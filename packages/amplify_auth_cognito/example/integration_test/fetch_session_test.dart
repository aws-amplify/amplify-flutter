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

  group('fetchSession', () {
    setUpAll(() async {
      await configureAuth();

      // create one user for all tests
      await Amplify.Auth.signUp(
          username: username,
          password: password,
          options: CognitoSignUpOptions(userAttributes: {
            'email': generateEmail(),
            'phone_number': mockPhoneNumber
          }));
    });

    // sign in prior to each test
    setUp(() async {
      await signOutUser();
      await Amplify.Auth.signIn(
        username: username,
        password: password,
      );
    });

    testWidgets('should return user credentials if getAWSCredentials is true',
        (WidgetTester tester) async {
      var res = await Amplify.Auth.fetchAuthSession(
        options: CognitoSessionOptions(getAWSCredentials: true),
      ) as CognitoAuthSession;

      expect(res.isSignedIn, isTrue);
      expect(isValidUserSub(res.userSub), isTrue);
      expect(isValidIdentityId(res.identityId), isTrue);
      expect(isValidAWSCredentials(res.credentials), isTrue);
      expect(isValidAWSCognitoUserPoolTokens(res.userPoolTokens), isTrue);
    });

    testWidgets('should not return user credentials without getAWSCredentials',
        (WidgetTester tester) async {
      var res = await Amplify.Auth.fetchAuthSession() as CognitoAuthSession;

      expect(res.isSignedIn, isTrue);
      expect(isValidUserSub(res.userSub), isFalse);
      expect(isValidIdentityId(res.identityId), isFalse);
      expect(isValidAWSCredentials(res.credentials), isFalse);
      expect(isValidAWSCognitoUserPoolTokens(res.userPoolTokens), isFalse);
    });

    testWidgets('should return isSignedIn as false if the user is signed out',
        (WidgetTester tester) async {
      await Amplify.Auth.signOut();
      var res = await Amplify.Auth.fetchAuthSession() as CognitoAuthSession;
      expect(res.isSignedIn, isFalse);
    });
  });
}

final _hex = '[0-9a-f]';
final _uuidMatch = '$_hex{8}-$_hex{4}-$_hex{4}-$_hex{4}-$_hex{12}';
final _regionMatch = '[a-z]{2}-[a-z]{4,9}-[0-9]{1}';

// validates that the user sub exists and is a valid uuid
bool isValidUserSub(String? value) {
  if (value == null) {
    return false;
  }
  final uuidRegExp = RegExp('^$_uuidMatch\$');
  return uuidRegExp.hasMatch(value);
}

// validates that the identityId exists and matches an the pattern region:uuid
bool isValidIdentityId(String? value) {
  if (value == null) {
    return false;
  }
  final identityIdRegExp = RegExp('^$_regionMatch:$_uuidMatch\$');
  return identityIdRegExp.hasMatch(value);
}

// validates that the keys/tokens exist and are non empty strings
bool isValidAWSCredentials(AWSCredentials? credentials) {
  try {
    return credentials!.awsAccessKey!.isNotEmpty &&
        credentials.awsSecretKey!.isNotEmpty &&
        credentials.sessionToken!.isNotEmpty;
  } catch (e) {
    return false;
  }
}

// validates that the tokens exist and are non empty strings
bool isValidAWSCognitoUserPoolTokens(AWSCognitoUserPoolTokens? tokens) {
  return tokens != null &&
      tokens.accessToken.isNotEmpty &&
      tokens.idToken.isNotEmpty &&
      tokens.refreshToken.isNotEmpty;
}
