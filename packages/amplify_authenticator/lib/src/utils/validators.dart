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
import 'package:amplify_authenticator/src/state/inherited_config.dart';
import 'package:amplify_authenticator/src/state/inherited_strings.dart';
import 'package:amplify_authenticator/src/views/signup_viewmodel.dart';
import 'package:amplify_flutter/src/config/amplify_config.dart';
import 'package:amplify_flutter/src/config/auth/password_policy_characters.dart';
import 'package:amplify_flutter/src/config/auth/password_protection_settings.dart';
import 'package:flutter/material.dart';

final _emailRegex = RegExp(r'^\S+@\S+$');
final _codeRegex = RegExp(r'\d{6}');
final _uppercase = RegExp('^(?=.*[A-Z])');
final _lowercase = RegExp('^(?=.*[a-z])');
final _numeric = RegExp('^(?=.*\\d)');
final _symbols = RegExp(r'[~/`!@#$%^&\"*(),._?:;{}|<>\]\[\\]');

Function simpleValidator = (String message) {
  return (String? input) {
    if (input == null || input.isEmpty) {
      return message;
    }
    return null;
  };
};

///TODO: Possibly refactor as widget to avoid passing context
Function validateSignUpPassword = (BuildContext context) {
  PasswordProtectionSettings? _passwordProtectionSettings =
      InheritedConfig.of(context)
          ?.config
          ?.auth
          ?.awsCognitoAuthPlugin
          ?.auth?['Default']
          ?.passwordProtectionSettings;

  InputResolver _hintStrings = InheritedStrings.of(context)!.resolver.inputs;

  return (String? password) {
    List<String> passwordHints = [
      _hintStrings.password_requirements_unmet(context)
    ];

    int? minLength = _passwordProtectionSettings?.passwordPolicyMinLength;
    List<PasswordPolicyCharacters>? passwordCharacters =
        _passwordProtectionSettings?.passwordPolicyCharacters;
    if (password == null || password.isEmpty || minLength! > password.length) {
      passwordHints.add(
          '* ${_hintStrings.password_at_least(context)} $minLength ${_hintStrings.password_characters(context)}');
    }
    if (password != null &&
        passwordCharacters != null &&
        passwordCharacters.isNotEmpty) {
      if (passwordCharacters
              .contains(PasswordPolicyCharacters.requiresLowercase) &&
          !_lowercase.hasMatch(password)) {
        passwordHints
            .add('* ${_hintStrings.password_requires_lowercase(context)}');
      }
      if (passwordCharacters
              .contains(PasswordPolicyCharacters.requiresUppercase) &&
          !_uppercase.hasMatch(password)) {
        passwordHints
            .add('* ${_hintStrings.password_requires_uppercase(context)}');
      }
      if (passwordCharacters
              .contains(PasswordPolicyCharacters.requiresNumbers) &&
          !_numeric.hasMatch(password)) {
        passwordHints
            .add('* ${_hintStrings.password_requires_numbers(context)}');
      }
      // TODO: symbols regex does not handle single quotes, currently handling with separate check.
      if (passwordCharacters
              .contains(PasswordPolicyCharacters.requiresSymbols) &&
          !_symbols.hasMatch(password) &&
          !password.contains("'")) {
        passwordHints
            .add('* ${_hintStrings.password_requires_symbols(context)}');
      }
    }
    return null;
  };
};

Function validatePasswordConfirmation = (SignUpViewModel viewModel) {
  return (String? passwordConfirmation) {
    if (passwordConfirmation == null || passwordConfirmation.isEmpty) {
      return 'Re-enter your password to confirm';
    } else if (viewModel.password != passwordConfirmation) {
      return 'Passwords do not match';
    }
    return null;
  };
};

String? validatePhoneNumber(String? phoneNumber) {
  if (phoneNumber == null || phoneNumber.isEmpty) {
    return 'Phone number cannot be empty';
  }
  return null;
}

String? validateEmail(String? email) {
  if (email == null || email.isEmpty) {
    return 'Email cannot be empty';
  }
  if (!_emailRegex.hasMatch(email)) {
    return 'Invalid email format';
  }
  return null;
}

String? validateCode(String? code) {
  if (code == null || code.isEmpty) {
    return 'Please enter the verification code';
  }
  if (!_codeRegex.hasMatch(code)) {
    return 'Invalid code format';
  }

  return null;
}
