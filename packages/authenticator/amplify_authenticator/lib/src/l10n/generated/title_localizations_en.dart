// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'title_localizations.dart';

/// The translations for English (`en`).
class AuthenticatorTitleLocalizationsEn
    extends AuthenticatorTitleLocalizations {
  AuthenticatorTitleLocalizationsEn([String locale = 'en']) : super(locale);

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
