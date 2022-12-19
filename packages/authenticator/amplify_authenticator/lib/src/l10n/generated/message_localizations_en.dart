// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'message_localizations.dart';

/// The translations for English (`en`).
class AuthenticatorMessageLocalizationsEn
    extends AuthenticatorMessageLocalizations {
  AuthenticatorMessageLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String codeSent(String destination) {
    return 'A confirmation code has been sent to $destination.';
  }

  @override
  String get codeSentUnknown => 'A confirmation code has been sent.';
}
