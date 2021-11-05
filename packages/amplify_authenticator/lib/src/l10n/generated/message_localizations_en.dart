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

import 'message_localizations.dart';

/// The translations for English (`en`).
class AuthenticatorMessageLocalizationsEn
    extends AuthenticatorMessageLocalizations {
  AuthenticatorMessageLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get codeSentEmail =>
      'A new confirmation code has been sent to the email associated with this account.';

  @override
  String get codeSentSMS =>
      'A new confirmation code has been sent to the phone number associated with this account.';

  @override
  String get codeSentUnknown => 'A new confirmation code has been sent.';
}
