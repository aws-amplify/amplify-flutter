// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/l10n/authenticator_localizations.dart';
import 'package:amplify_authenticator/src/l10n/resolver.dart';
import 'package:flutter/material.dart';

class ExceptionResolver extends Resolver {
  const ExceptionResolver();

  /// The exception that is thrown if username or password is wrong.
  String incorrectUsernamePassword(BuildContext context) {
    return AuthenticatorLocalizations.exceptionOf(context).incorrectUsernamePassword;
  }

  /// The exception that is thrown if the email provided on signup is already in use.
  String emailAlreadyExists(BuildContext context) {
    return AuthenticatorLocalizations.exceptionOf(context).emailAlreadyExists;
  }

  /// The exception that is thrown if no user exists for the user identifier provided on login.
  String userNotExists(BuildContext context) {
    return AuthenticatorLocalizations.exceptionOf(context).userNotExists;
  }

  @override
  String resolve(BuildContext context, dynamic key) {
    switch (key) {
      case 'Incorrect username or password.':
        return incorrectUsernamePassword(context);
      case 'An account with the given email already exists.':
        return emailAlreadyExists(context);
      case 'User does not exist.':
        return userNotExists(context);

      default:
        return key.toString();
    }
  }
}
