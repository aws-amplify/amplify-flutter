// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:intl/intl.dart' as intl;

import 'button_localizations.dart';

/// The translations for English (`en`).
class AuthenticatorButtonLocalizationsEn
    extends AuthenticatorButtonLocalizations {
  AuthenticatorButtonLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get signIn => 'Sign In';

  @override
  String get signUp => 'Create Account';

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
  String get forgotPassword => 'Forgot your password?';

  @override
  String get confirmResetPassword => 'Reset Password';

  @override
  String get verify => 'Verify';

  @override
  String get skip => 'Skip';

  @override
  String get signOut => 'Sign Out';

  @override
  String backTo(AuthenticatorStep previousStep) {
    final String selectString = intl.Intl.select(
        previousStep,
        {
          'signUp': 'Sign Up',
          'signIn': 'Sign In',
          'confirmSignUp': 'Confirm Sign-up',
          'confirmSignInMfa': 'Confirm Sign-in',
          'confirmSignInNewPassword': 'Confirm Sign-in',
          'sendCode': 'Send Code',
          'resetPassword': 'Reset Password',
          'verifyUser': 'Verify User',
          'confirmVerifyUser': 'Confirm Verify User'
        },
        desc: 'Label of button to return to the previous step');

    return 'Back to $selectString';
  }

  @override
  String signInWith(AuthProvider provider) {
    final String selectString = intl.Intl.select(
        provider,
        {
          'google': 'Google',
          'facebook': 'Facebook',
          'amazon': 'Amazon',
          'apple': 'Apple'
        },
        desc: 'Label of button to sign in with a social provider');

    return 'Sign In with $selectString';
  }
}
