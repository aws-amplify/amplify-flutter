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

import 'message_localizations_en.dart' deferred as message_localizations_en;

/// Callers can lookup localized strings with an instance of AuthenticatorMessageLocalizations
/// returned by `AuthenticatorMessageLocalizations.of(context)`.
///
/// Applications need to include `AuthenticatorMessageLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/message_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AuthenticatorMessageLocalizations.localizationsDelegates,
///   supportedLocales: AuthenticatorMessageLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the AuthenticatorMessageLocalizations.supportedLocales
/// property.
abstract class AuthenticatorMessageLocalizations {
  AuthenticatorMessageLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AuthenticatorMessageLocalizations? of(BuildContext context) {
    return Localizations.of<AuthenticatorMessageLocalizations>(
        context, AuthenticatorMessageLocalizations);
  }

  static const LocalizationsDelegate<AuthenticatorMessageLocalizations>
      delegate = _AuthenticatorMessageLocalizationsDelegate();

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

  /// The message that is displayed after a new confirmation code is sent via Email/SMS.
  ///
  /// In en, this message translates to:
  /// **'A confirmation code has been sent to {destination}.'**
  String codeSent(String destination);

  /// The message that is displayed after a new confirmation code is sent via an unknown delivery medium
  ///
  /// In en, this message translates to:
  /// **'A confirmation code has been sent.'**
  String get codeSentUnknown;
}

class _AuthenticatorMessageLocalizationsDelegate
    extends LocalizationsDelegate<AuthenticatorMessageLocalizations> {
  const _AuthenticatorMessageLocalizationsDelegate();

  @override
  Future<AuthenticatorMessageLocalizations> load(Locale locale) {
    return lookupAuthenticatorMessageLocalizations(locale);
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AuthenticatorMessageLocalizationsDelegate old) => false;
}

Future<AuthenticatorMessageLocalizations>
    lookupAuthenticatorMessageLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return message_localizations_en.loadLibrary().then((dynamic _) =>
          message_localizations_en.AuthenticatorMessageLocalizationsEn());
  }

  throw FlutterError(
      'AuthenticatorMessageLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
