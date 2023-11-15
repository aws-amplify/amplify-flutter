// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_authenticator/src/l10n/generated/exception_localizations_en.dart'
    deferred as exception_localizations_en;
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

/// Callers can lookup localized strings with an instance of AuthenticatorExceptionLocalizations
/// returned by `AuthenticatorExceptionLocalizations.of(context)`.
///
/// Applications need to include `AuthenticatorExceptionLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/exception_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AuthenticatorExceptionLocalizations.localizationsDelegates,
///   supportedLocales: AuthenticatorExceptionLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
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
/// be consistent with the languages listed in the AuthenticatorExceptionLocalizations.supportedLocales
/// property.
abstract class AuthenticatorExceptionLocalizations {
  AuthenticatorExceptionLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale);

  final String localeName;

  static AuthenticatorExceptionLocalizations? of(BuildContext context) {
    return Localizations.of<AuthenticatorExceptionLocalizations>(
        context, AuthenticatorExceptionLocalizations);
  }

  static const LocalizationsDelegate<AuthenticatorExceptionLocalizations>
      delegate = _AuthenticatorExceptionLocalizationsDelegate();

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
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
  ];

  /// The error that is displayed after a wrong username or password was supplied
  ///
  /// In en, this message translates to:
  /// **'Incorrect username or password.'**
  String get incorrectUsernamePassword;

  /// The error that is displayed after an email was used on signup that already exists
  ///
  /// In en, this message translates to:
  /// **'An account with the given email already exists.'**
  String get emailAlreadyExists;
}

class _AuthenticatorExceptionLocalizationsDelegate
    extends LocalizationsDelegate<AuthenticatorExceptionLocalizations> {
  const _AuthenticatorExceptionLocalizationsDelegate();

  @override
  Future<AuthenticatorExceptionLocalizations> load(Locale locale) {
    return lookupAuthenticatorExceptionLocalizations(locale);
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AuthenticatorExceptionLocalizationsDelegate old) => false;
}

Future<AuthenticatorExceptionLocalizations>
    lookupAuthenticatorExceptionLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return exception_localizations_en.loadLibrary().then((dynamic _) =>
          exception_localizations_en.AuthenticatorExceptionLocalizationsEn());
  }

  throw FlutterError(
      'AuthenticatorExceptionLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
