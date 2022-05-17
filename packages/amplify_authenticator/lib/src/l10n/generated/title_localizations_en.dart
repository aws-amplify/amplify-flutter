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

import 'title_localizations.dart';

/// The translations for English (`en`).
class AuthenticatorTitleLocalizationsEn
    extends AuthenticatorTitleLocalizations {
  AuthenticatorTitleLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get signIn => 'Sign in to your account';

  @override
  String get signUp => 'Create your account';

  @override
  String get confirmSignUp => 'Enter your confirmation code';

  @override
  String get confirmSignInMfa => 'Enter your sign in code';

  @override
  String get confirmSignInCustomAuth => 'Enter your sign in code';

  @override
  String get confirmSignInNewPassword => 'Change your password to sign in';

  @override
  String get resetPassword => 'Send Code';

  @override
  String get confirmResetPassword => 'Reset your password';

  @override
  String get verifyUser =>
      'Account recovery requires verified contact information';
}
