// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_core/amplify_core.dart';
import 'package:test/test.dart';

void main() {
  group('AuthUserAttributeKey', () {
    test('equality', () {
      expect(
        AuthUserAttributeKey.email,
        CognitoUserAttributeKey.email,
        reason: 'Two keys are equal if the value of their keys are equal',
      );
      expect(
        AuthUserAttributeKey.email,
        CognitoUserAttributeKey.parse('email'),
      );
      expect(
        CognitoUserAttributeKey.email,
        CognitoUserAttributeKey.parse('email'),
      );

      expect(
        AuthUserAttributeKey.email,
        // ignore: prefer_const_constructors
        CustomUserAttributeKey('email'),
        reason: 'Any class which inherits from AuthUserAttibuteKey '
            'inherits equality rules',
      );

      expect(
        const CognitoUserAttributeKey.custom('myattr'),
        const CustomUserAttributeKey('custom:MYATTR'),
        reason: 'Two keys are equal if the lower-case value of their '
            'keys are equal',
      );
    });

    test('hashCode', () {
      expect(
        AuthUserAttributeKey.email.hashCode,
        CognitoUserAttributeKey.email.hashCode,
      );
      expect(
        AuthUserAttributeKey.email.hashCode,
        CognitoUserAttributeKey.parse('email').hashCode,
      );
      expect(
        CognitoUserAttributeKey.email.hashCode,
        CognitoUserAttributeKey.parse('email').hashCode,
      );
      expect(
        AuthUserAttributeKey.email.hashCode,
        // ignore: prefer_const_constructors
        CustomUserAttributeKey('email').hashCode,
      );
      expect(
        const CognitoUserAttributeKey.custom('myattr').hashCode,
        const CustomUserAttributeKey('custom:MYATTR').hashCode,
      );
    });
  });
}

class CustomUserAttributeKey extends AuthUserAttributeKey {
  const CustomUserAttributeKey(this.key);

  @override
  final String key;
}
