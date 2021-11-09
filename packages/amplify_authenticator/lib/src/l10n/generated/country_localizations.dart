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

import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'country_localizations_en.dart' deferred as country_localizations_en;

/// Callers can lookup localized strings with an instance of AuthenticatorCountryLocalizations returned
/// by `AuthenticatorCountryLocalizations.of(context)`.
///
/// Applications need to include `AuthenticatorCountryLocalizations.delegate()` in their app's
/// localizationDelegates list, and the locales they support in the app's
/// supportedLocales list. For example:
///
/// ```
/// import 'generated/country_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AuthenticatorCountryLocalizations.localizationsDelegates,
///   supportedLocales: AuthenticatorCountryLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AuthenticatorCountryLocalizations.supportedLocales
/// property.
abstract class AuthenticatorCountryLocalizations {
  AuthenticatorCountryLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AuthenticatorCountryLocalizations? of(BuildContext context) {
    return Localizations.of<AuthenticatorCountryLocalizations>(
        context, AuthenticatorCountryLocalizations);
  }

  static const LocalizationsDelegate<AuthenticatorCountryLocalizations>
      delegate = _AuthenticatorCountryLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// Title of select dial code modal
  ///
  /// In en, this message translates to:
  /// **'Select your country dial code'**
  String get selectDialCode;

  /// Display name for the United States
  ///
  /// In en, this message translates to:
  /// **'United States'**
  String get unitedStates;

  /// Display name for the United Kingdom
  ///
  /// In en, this message translates to:
  /// **'United Kingdom'**
  String get unitedKingdom;
}

class _AuthenticatorCountryLocalizationsDelegate
    extends LocalizationsDelegate<AuthenticatorCountryLocalizations> {
  const _AuthenticatorCountryLocalizationsDelegate();

  @override
  Future<AuthenticatorCountryLocalizations> load(Locale locale) {
    return lookupAuthenticatorCountryLocalizations(locale);
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AuthenticatorCountryLocalizationsDelegate old) => false;
}

Future<AuthenticatorCountryLocalizations>
    lookupAuthenticatorCountryLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return country_localizations_en.loadLibrary().then((dynamic _) =>
          country_localizations_en.AuthenticatorCountryLocalizationsEn());
  }

  throw FlutterError(
      'AuthenticatorCountryLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
