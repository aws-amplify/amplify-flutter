// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'package:amplify_authenticator/src/l10n/generated/button_localizations_en.dart';
import 'package:amplify_authenticator/src/l10n/generated/country_localizations_en.dart';
import 'package:amplify_authenticator/src/l10n/generated/input_localizations_en.dart';
import 'package:amplify_authenticator/src/l10n/generated/message_localizations_en.dart';
import 'package:amplify_authenticator/src/l10n/generated/title_localizations_en.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'generated/button_localizations.dart';
import 'generated/country_localizations.dart';
import 'generated/input_localizations.dart';
import 'generated/message_localizations.dart';
import 'generated/title_localizations.dart';

/// Reference class for all Authenticator localizations.
abstract class AuthenticatorLocalizations {
  AuthenticatorLocalizations._();

  /// All localizations delegates for the Authenticator.
  static const localizationsDelegates = [
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    AuthenticatorButtonLocalizations.delegate,
    AuthenticatorTitleLocalizations.delegate,
    AuthenticatorInputLocalizations.delegate,
    AuthenticatorCountryLocalizations.delegate
  ];

  static final _buttonsFallback = AuthenticatorButtonLocalizationsEn();
  static final _inputsFallback = AuthenticatorInputLocalizationsEn();
  static final _titlesFallback = AuthenticatorTitleLocalizationsEn();
  static final _messagesFallback = AuthenticatorMessageLocalizationsEn();
  static final _countriesFallback = AuthenticatorCountryLocalizationsEn();

  /// Retrieves the [AuthenticatorButtonLocalizations] instance, falling back
  /// to English if unavailable for this locale.
  static AuthenticatorButtonLocalizations buttonsOf(BuildContext context) {
    return AuthenticatorButtonLocalizations.of(context) ?? _buttonsFallback;
  }

  /// Retrieves the [AuthenticatorInputLocalizations] instance, falling back
  /// to English if unavailable for this locale.
  static AuthenticatorInputLocalizations inputsOf(BuildContext context) {
    return AuthenticatorInputLocalizations.of(context) ?? _inputsFallback;
  }

  /// Retrieves the [AuthenticatorTitleLocalizations] instance, falling back
  /// to English if unavailable for this locale.
  static AuthenticatorTitleLocalizations titlesOf(BuildContext context) {
    return AuthenticatorTitleLocalizations.of(context) ?? _titlesFallback;
  }

  /// Retrieves the [AuthenticatorMessageLocalizations] instance, falling back
  /// to English if unavailable for this locale.
  static AuthenticatorMessageLocalizations messagesOf(BuildContext context) {
    return AuthenticatorMessageLocalizations.of(context) ?? _messagesFallback;
  }

  /// Retrieves the [AuthenticatorCountryLocalizations] instance, falling back
  /// to English if unavailable for this locale.
  static AuthenticatorCountryLocalizations countriesOf(BuildContext context) {
    return AuthenticatorCountryLocalizations.of(context) ?? _countriesFallback;
  }
}
