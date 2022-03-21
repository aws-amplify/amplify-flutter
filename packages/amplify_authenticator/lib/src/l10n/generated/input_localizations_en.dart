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

import 'package:intl/intl.dart' as intl;
import 'input_localizations.dart';

/// The translations for English (`en`).
class AuthenticatorInputLocalizationsEn
    extends AuthenticatorInputLocalizations {
  AuthenticatorInputLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get username => 'Username';

  @override
  String get password => 'Password';

  @override
  String get newPassword => 'New Password';

  @override
  String get email => 'Email';

  @override
  String get phoneNumber => 'Phone Number';

  @override
  String get verificationCode => 'Verification Code';

  @override
  String get address => 'Address';

  @override
  String get birthdate => 'Birthdate';

  @override
  String get familyName => 'Family Name';

  @override
  String get middleName => 'Middle Name';

  @override
  String get gender => 'Gender';

  @override
  String genders(Gender gender) {
    return intl.Intl.select(
        gender, {'male': 'male', 'female': 'female', 'other': 'other'},
        desc: 'No description provided in @genders');
  }

  @override
  String get givenName => 'Given Name';

  @override
  String get name => 'Name';

  @override
  String get nickname => 'Nickname';

  @override
  String or(String a, String b) {
    return '$a or $b';
  }

  @override
  String get preferredUsername => 'Preferred Username';

  @override
  String warnEmpty(String attribute) {
    return '$attribute field must not be blank.';
  }

  @override
  String warnInvalidFormat(String attributeType) {
    return 'Invalid $attributeType format.';
  }

  @override
  String promptFill(String attribute) {
    return 'Enter your $attribute';
  }

  @override
  String promptRefill(String attribute) {
    return 'Re-enter your $attribute';
  }

  @override
  String confirmAttribute(String attribute) {
    return 'Confirm $attribute';
  }

  @override
  String get passwordRequirementsPreamble => 'Password must include:';

  @override
  String passwordRequirementsCharacterType(
      PasswordPolicyCharacters characterType) {
    final String selectString = intl.Intl.select(
        characterType,
        {
          'requiresUppercase': 'uppercase',
          'requiresLowercase': 'lowercase',
          'requiresNumbers': 'number',
          'requiresSymbols': 'symbol',
          'other': ''
        },
        desc: 'Character(s) in a password.');

    return ' $selectString';
  }

  @override
  String passwordRequirementsAtLeast(num numCharacters, String characterType) {
    final String pluralString = intl.Intl.pluralLogic(
      numCharacters,
      locale: localeName,
      one: '1$characterType character',
      other: '$numCharacters$characterType characters',
    );

    return 'at least $pluralString';
  }

  @override
  String get passwordsDoNotMatch => 'Passwords do not match.';

  @override
  String get rememberDevice => 'Remember Device?';

  @override
  String get usernameType => 'Log in using:';

  @override
  String optional(String fieldTitle) {
    return '$fieldTitle (optional)';
  }

  @override
  String get customChallenge => 'Confirmation Code';
}
