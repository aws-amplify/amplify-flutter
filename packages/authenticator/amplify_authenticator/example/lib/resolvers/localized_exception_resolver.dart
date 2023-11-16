// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LocalizedExceptionResolver extends ExceptionResolver {
  const LocalizedExceptionResolver();

  /// The exception that is thrown if username or password is wrong.
  @override
  String incorrectUsernamePassword(BuildContext context) {
    return AppLocalizations.of(context).incorrectUsernamePassword;
  }

  /// The exception that is thrown if the email provided on signup is already in use.
  @override
  String emailAlreadyExists(BuildContext context) {
    return AppLocalizations.of(context).emailAlreadyExists;
  }

  /// The exception that is thrown if no user exists for the user identifier provided on login.
  @override
  String userNotExists(BuildContext context) {
    return AppLocalizations.of(context).userNotExists;
  }
}