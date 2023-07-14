// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/l10n/generated/button_localizations.dart';
import 'package:intl/intl.dart' as intl;

/// The translations for English (`en`).
class AuthenticatorButtonLocalizationsEn
    extends AuthenticatorButtonLocalizations {
  AuthenticatorButtonLocalizationsEn([super.locale = 'en']);

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
  String get totpApp => 'Open Authentication App';

  @override
  String get signOut => 'Sign Out';

  @override
  String backTo(String previousStep) {
    final temp0 = intl.Intl.selectLogic(
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
        'confirmVerifyUser': 'Confirm Verify User',
        'other': 'ERROR',
      },
    );
    return 'Back to $temp0';
  }

  @override
  String signInWith(String provider) {
    final temp0 = intl.Intl.selectLogic(
      provider,
      {
        'google': 'Google',
        'facebook': 'Facebook',
        'amazon': 'Amazon',
        'apple': 'Apple',
        'other': 'ERROR',
      },
    );
    return 'Sign In with $temp0';
  }
}
