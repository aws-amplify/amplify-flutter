// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/l10n/generated/title_localizations.dart';

/// The translations for English (`en`).
class AuthenticatorTitleLocalizationsEn
    extends AuthenticatorTitleLocalizations {
  AuthenticatorTitleLocalizationsEn([super.locale = 'en']);

  @override
  String get confirmSignUp => 'Enter your confirmation code';

  @override
  String get confirmSignInMfa => 'Enter your sign in code';

  @override
  String get confirmSignInCustomAuth => 'Enter your sign in code';

  @override
  String get confirmSignInNewPassword => 'Change your password to sign in';

  @override
  String get continueSignInWithMfaSelection =>
      'Select your preferred MFA Method';

  @override
  String get continueSignInWithTotpSetup => 'Setup an Authentication App';

  @override
  String get confirmSignInWithTotpMfaCode => 'Enter your Authentication code';

  @override
  String get resetPassword => 'Send Code';

  @override
  String get confirmResetPassword => 'Reset your password';

  @override
  String get verifyUser =>
      'Account recovery requires verified contact information';
}
