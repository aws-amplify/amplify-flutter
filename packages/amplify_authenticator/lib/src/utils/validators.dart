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

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_flutter/src/config/amplify_config.dart';
import 'package:amplify_flutter/src/config/auth/password_policy_characters.dart';
import 'package:amplify_flutter/src/config/auth/password_protection_settings.dart';
import 'package:flutter/material.dart';

final emailRegex = RegExp(r'^\S+@\S+$');
final phoneNumberRegex = RegExp(r'^\+\d+$');
final _codeRegex = RegExp(r'^\d{6}$');
final _uppercase = RegExp(r'[A-Z]');
final _lowercase = RegExp(r'[a-z]');
final _numeric = RegExp(r'\d');
final _symbols = RegExp(r'''[~/`!@#$%^&\"'*(),._?:;{}|<>\]\[\\]''');

FormFieldValidator<String> simpleValidator(
  String message, {
  required bool isOptional,
}) {
  return (String? input) {
    if (input == null || input.isEmpty) {
      if (isOptional) {
        return null;
      }
      return message;
    }
    return null;
  };
}

extension PasswordPolicyCharactersX on PasswordPolicyCharacters {
  @visibleForTesting
  bool meetsRequirement(String value) {
    switch (this) {
      case PasswordPolicyCharacters.requiresLowercase:
        return value.contains(_lowercase);
      case PasswordPolicyCharacters.requiresUppercase:
        return value.contains(_uppercase);
      case PasswordPolicyCharacters.requiresNumbers:
        return value.contains(_numeric);
      case PasswordPolicyCharacters.requiresSymbols:
        return value.contains(_symbols);
    }
  }
}

FormFieldValidator<String> Function(BuildContext) validateNewPassword({
  required AmplifyConfig? amplifyConfig,
  required InputResolver inputResolver,
}) {
  final PasswordProtectionSettings? passwordProtectionSettings = amplifyConfig
      ?.auth
      ?.awsCognitoAuthPlugin
      ?.auth?['Default']
      ?.passwordProtectionSettings;
  return (BuildContext context) => (String? password) {
        if (password == null || password.isEmpty) {
          return inputResolver.resolve(
            context,
            InputResolverKey.passwordEmpty,
          );
        }
        if (passwordProtectionSettings == null) {
          return null;
        }

        final List<PasswordPolicyCharacters> unmetReqs = [];

        int? minLength = passwordProtectionSettings.passwordPolicyMinLength;
        bool meetsMinLengthRequirement =
            minLength == null || password.length >= minLength;

        final passwordPolicies =
            passwordProtectionSettings.passwordPolicyCharacters ?? const [];
        for (var policy in passwordPolicies) {
          if (!policy.meetsRequirement(password)) {
            unmetReqs.add(policy);
          }
        }

        var error = inputResolver.resolve(
          context,
          InputResolverKey.passwordRequirementsUnmet(
            PasswordProtectionSettings(
              passwordPolicyMinLength:
                  meetsMinLengthRequirement ? null : minLength,
              passwordPolicyCharacters: unmetReqs,
            ),
          ),
        );
        return error.isEmpty ? null : error;
      };
}

FormFieldValidator<String> validatePasswordConfirmation(
  String Function() getPassword,
) {
  return (String? passwordConfirmation) {
    if (passwordConfirmation == null || passwordConfirmation.isEmpty) {
      return 'Re-enter your password to confirm';
    } else if (getPassword() != passwordConfirmation) {
      return 'Passwords do not match';
    }
    return null;
  };
}

String? validatePhoneNumber(
  String? phoneNumber, {
  required bool isOptional,
}) {
  if (phoneNumber == null || phoneNumber.isEmpty) {
    if (isOptional) {
      return null;
    }
    return 'Phone number cannot be empty';
  }
  if (!phoneNumberRegex.hasMatch(phoneNumber)) {
    return 'Invalid phone number format';
  }
  return null;
}

String? validateEmail(
  String? email, {
  required bool isOptional,
}) {
  if (email == null || email.isEmpty) {
    if (isOptional) {
      return null;
    }
    return 'Email cannot be empty';
  }
  if (!emailRegex.hasMatch(email)) {
    return 'Invalid email format';
  }
  return null;
}

String? validateCode(
  String? code, {
  required bool isOptional,
}) {
  if (code == null || code.isEmpty) {
    if (isOptional) {
      return null;
    }
    return 'Please enter the verification code';
  }
  if (!_codeRegex.hasMatch(code)) {
    return 'Invalid code format';
  }

  return null;
}

// ignore_for_file: implementation_imports
