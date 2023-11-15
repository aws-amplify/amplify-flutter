// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/l10n/generated/exception_localizations.dart';

/// The translations for English (`en`).
class AuthenticatorExceptionLocalizationsEn
    extends AuthenticatorExceptionLocalizations {
  AuthenticatorExceptionLocalizationsEn([super.locale = 'en']);

  @override
  String get incorrectUsernamePassword => 'Incorrect username or password.';

  @override
  String get emailAlreadyExists =>
      'An account with the given email already exists.';
}
