// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/l10n/generated/instructions_localizations.dart';

/// The translations for English (`en`).
class AuthenticatorInstructionsLocalizationsEn
    extends AuthenticatorInstructionsLocalizations {
  AuthenticatorInstructionsLocalizationsEn([super.locale = 'en']);

  @override
  String get totpStep1Title => 'Step 1: Download an Authenticator app';

  @override
  String get totpStep2Title => 'Step 2: Scan the QR code';

  @override
  String get totpStep3Title => 'Step 3: Verify your code';

  @override
  String get totpStep1Body =>
      'Authenticator apps generate one-time codes that can be used to verify your identity';

  @override
  String get totpStep2Body =>
      'Open then Authenticator app and scan the QR code or enter the key to get your verification code';

  @override
  String get totpStep3Body =>
      'Enter the 6 digit code from your Authenticator app';
}
