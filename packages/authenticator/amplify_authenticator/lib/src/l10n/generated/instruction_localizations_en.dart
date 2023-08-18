// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/l10n/generated/instruction_localizations.dart';

/// The translations for English (`en`).
class AuthenticatorInstructionLocalizationsEn
    extends AuthenticatorInstructionLocalizations {
  AuthenticatorInstructionLocalizationsEn([super.locale = 'en']);

  @override
  String get totpStep1 => 'Step 1: Download an Authenticator app';

  @override
  String get totpStep2 => 'Step 2: Enter the QR code';

  @override
  String get totpStep3 => 'Step 3: Verify your code';

  @override
  String get totpStep1Instruction =>
      'Authenticator apps generate one-time codes that can be used to verify your identity';

  @override
  String get totpStep2Instruction =>
      'Open then Authenticator app and scan the QR code or enter the key to get your verification code';

  @override
  String get totpStep3Instruction =>
      'Enter the 6 digit code from your Authenticator app';

  @override
  String get totpPassCodeInstruction =>
      'Please enter the code from your registered Authenticator app';
}
