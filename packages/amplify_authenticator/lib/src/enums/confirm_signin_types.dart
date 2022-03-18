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
  authChallenge
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
