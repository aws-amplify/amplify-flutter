// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/l10n/generated/input_localizations.dart';
import 'package:intl/intl.dart' as intl;

/// The translations for English (`en`).
class AuthenticatorInputLocalizationsEn
    extends AuthenticatorInputLocalizations {
  AuthenticatorInputLocalizationsEn([super.locale = 'en']);

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
  String genders(String gender) {
    final temp0 = intl.Intl.selectLogic(
      gender,
      {
        'male': 'male',
        'female': 'female',
        'other': 'other',
      },
    );
    return temp0;
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
  String get usernameRequirements =>
      'Username must only contain alphanumeric characters and symbols.';

  @override
  String get passwordRequirementsPreamble => 'Password must include:';

  @override
  String passwordRequirementsCharacterType(String characterType) {
    final temp0 = intl.Intl.selectLogic(
      characterType,
      {
        'requiresUppercase': 'uppercase',
        'requiresLowercase': 'lowercase',
        'requiresNumbers': 'number',
        'requiresSymbols': 'symbol',
        'other': '',
      },
    );
    return ' $temp0';
  }

  @override
  String passwordRequirementsAtLeast(int numCharacters, String characterType) {
    final temp0 = intl.Intl.pluralLogic(
      numCharacters,
      locale: localeName,
      other: '$numCharacters$characterType characters',
      one: '1$characterType character',
    );
    return 'at least $temp0';
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

  @override
  String get selectSms => 'Text Message (SMS)';

  @override
  String get selectTotp => 'Authenticator App (TOTP)';

  @override
  String get totpCodePrompt =>
      'Please enter the code from your registered Authenticator app';
}
