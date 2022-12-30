// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:flutter/foundation.dart';

enum ConfirmSignInField {
  code,
  newPassword,
  confirmNewPassword,
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
  customChallenge
}

extension ConfirmSignInFieldX on ConfirmSignInField {
  CognitoUserAttributeKey toCognitoAttribute() {
    switch (this) {
      case ConfirmSignInField.code:
      case ConfirmSignInField.newPassword:
      case ConfirmSignInField.custom:
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
