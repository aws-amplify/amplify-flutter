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
import 'button_localizations.dart';

/// The translations for English (`en`).
class AuthenticatorButtonLocalizationsEn extends AuthenticatorButtonLocalizations {
  AuthenticatorButtonLocalizationsEn([String locale = 'en']) : super(locale);

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
  String backTo(AuthScreen previousScreen) {
    final String selectString = intl.Intl.select(
      previousScreen,
      {
        'signup': 'Sign Up',
        'signin': 'Sign In',
        'confirmSignup': 'Confirm Sign-up',
        'confirmSigninMfa': 'Confirm Sign-in',
        'confirmSigninNewPassword': 'Confirm Sign-in',
        'sendCode': 'Send Code',
        'resetPassword': 'Reset Password',
        'verifyUser': 'Verify User',
        'confirmVerifyUser': 'Confirm Verify User'
      },
      desc: 'Label of button to return to the previous screen'
    );

    return 'Back to ${selectString}';
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
      desc: 'Label of button to sign in with a social provider'
    );

    return 'Sign In with ${selectString}';
  }
}
