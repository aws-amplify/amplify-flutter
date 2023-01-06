// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:flutter/foundation.dart';

enum SignUpField {
  username,
  password,
  passwordConfirmation,
  address,
  birthdate,
  email,
  familyName,
  gender,
  givenName,
  // locale,
  middleName,
  name,
  nickname,
  phoneNumber,
  // picture,
  preferredUsername,
  // profile,
  // zoneinfo,
  // updatedAt,
  // website,
  custom,
}

extension SignUpFieldX on SignUpField {
  CognitoUserAttributeKey toCognitoAttribute() {
    switch (this) {
      case SignUpField.username:
      case SignUpField.password:
      case SignUpField.passwordConfirmation:
      case SignUpField.custom:
        throw StateError('Can only be called on attribute types');
      default:
        final key =
            describeEnum(this).replaceAllMapped(RegExp(r'[A-Z]'), (match) {
          return '_${match.group(0)!.toLowerCase()}';
        });
        return CognitoUserAttributeKey.parse(key);
    }
  }
}
