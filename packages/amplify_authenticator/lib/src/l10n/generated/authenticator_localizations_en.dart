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
import 'authenticator_localizations.dart';

/// The translations for English (`en`).
class AuthenticatorLocalizationsEn extends AuthenticatorLocalizations {
  AuthenticatorLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get signin => 'Sign In';

  @override
  String get signup => 'Create Account';

  @override
  String get confirm => 'Confirm';

  @override
  String get submit => 'Submit';

  @override
  String get changePassword => 'Change Password';

  @override
  String get sendCode => 'Send Code';

  @override
  String get lostCode => 'Lost your code?';

  @override
  String get noAccount => 'No account?';

  @override
  String get haveAccount => 'Have an account?';

  @override
  String get forgotPassword => 'Forgot password?';

  @override
  String get resetPassword => 'Reset Password';

  @override
  String get verifyUser => 'Verify';

  @override
  String get confirmVerifyUser => 'Submit';

  @override
  String get skip => 'Skip';

  @override
  String get signout => 'Sign Out';

  @override
  String backTo(String previousScreen) {
    return 'Back to $previousScreen';
  }

  @override
  String signInWith(String provider) {
    return 'Sign In with $provider';
  }

  @override
  String get username => 'Username';

  @override
  String get password => 'Password';

  @override
  String get passwordConfirmation => 'Confirm Password';

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
      gender,
      {
        'male': 'male',
        'female': 'female',
        'other': 'other'
      },
      desc: 'No description provided in @genders'
    );
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
  String promptFill(String attribute) {
    return 'Enter your $attribute';
  }

  @override
  String promptRefill(String attribute) {
    return 'Re-enter your $attribute';
  }

  @override
  String get passwordRequirementsPreamble => 'Password must include:';

  @override
  String passwordRequirementsCharacter(int numCharacters) {
    return intl.Intl.pluralLogic(
      numCharacters,
      locale: localeName,
      one: 'character',
      other: 'characters',
    );
  }

  @override
  String passwordRequirementsCharacterType(PasswordPolicyCharacters characterType) {
    return intl.Intl.select(
      characterType,
      {
        'uppercase': 'uppercase',
        'lowercase': 'lowercase',
        'number': 'number',
        'symbol': 'symbol',
        'other': ''
      },
      desc: 'Character(s) in a password.'
    );
  }

  @override
  String passwordRequirementsAtLeast(int numCharacters, String characterType, String characters) {
    return 'at least $numCharacters $characterType $characters';
  }

  @override
  String get screenSignin => 'Sign in to your account';

  @override
  String get screenSignup => 'Create your account';

  @override
  String get screenConfirmSignup => 'Enter your confirmation code';

  @override
  String get screenConfirmSigninMfa => 'Enter your sign in code';

  @override
  String get screenConfirmSigninNewPassword => 'Change your password to sign in';

  @override
  String get screenResetPassword => 'Reset your password';

  @override
  String get screenSendCode => 'Send Code';

  @override
  String get screenVerifyUser => 'Account recovery requires verified contact information';
}
