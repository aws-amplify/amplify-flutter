// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_authenticator/src/l10n/generated/instruction_localizations_en.dart'
    deferred as instruction_localizations_en;
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

/// Callers can lookup localized strings with an instance of AuthenticatorInstructionLocalizations
/// returned by `AuthenticatorInstructionLocalizations.of(context)`.
///
/// Applications need to include `AuthenticatorInstructionLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/instruction_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AuthenticatorInstructionLocalizations.localizationsDelegates,
///   supportedLocales: AuthenticatorInstructionLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the AuthenticatorInstructionLocalizations.supportedLocales
/// property.
abstract class AuthenticatorInstructionLocalizations {
  AuthenticatorInstructionLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale);

  final String localeName;

  static AuthenticatorInstructionLocalizations? of(BuildContext context) {
    return Localizations.of<AuthenticatorInstructionLocalizations>(
      context,
      AuthenticatorInstructionLocalizations,
    );
  }

  static const LocalizationsDelegate<AuthenticatorInstructionLocalizations>
      delegate = _AuthenticatorInstructionLocalizationsDelegate();

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

  /// The header for the first step of TOTP setup
  ///
  /// In en, this message translates to:
  /// **'Step 1: Download an Authenticator app'**
  String get totpStep1;

  /// The header for the second step of TOTP setup
  ///
  /// In en, this message translates to:
  /// **'Step 2: Enter the QR code'**
  String get totpStep2;

  /// The header for the third step of TOTP setup
  ///
  /// In en, this message translates to:
  /// **'Step 3: Verify your code'**
  String get totpStep3;

  /// The instructional text for step one of TOTP setup
  ///
  /// In en, this message translates to:
  /// **'Authenticator apps generate one-time codes that can be used to verify your identity'**
  String get totpStep1Instruction;

  /// The instructional text for step two of TOTP setup
  ///
  /// In en, this message translates to:
  /// **'Open then Authenticator app and scan the QR code or enter the key to get your verification code'**
  String get totpStep2Instruction;

  /// The instructional text for step three of TOTP setup
  ///
  /// In en, this message translates to:
  /// **'Enter the 6 digit code from your Authenticator app'**
  String get totpStep3Instruction;

  /// The instructional text for submitting a TOTP pass code
  ///
  /// In en, this message translates to:
  /// **'Please enter the code from your registered Authenticator app'**
  String get totpPassCodeInstruction;
}

class _AuthenticatorInstructionLocalizationsDelegate
    extends LocalizationsDelegate<AuthenticatorInstructionLocalizations> {
  const _AuthenticatorInstructionLocalizationsDelegate();

  @override
  Future<AuthenticatorInstructionLocalizations> load(Locale locale) {
    return lookupAuthenticatorInstructionLocalizations(locale);
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AuthenticatorInstructionLocalizationsDelegate old) =>
      false;
}

Future<AuthenticatorInstructionLocalizations>
    lookupAuthenticatorInstructionLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return instruction_localizations_en.loadLibrary().then(
            (dynamic _) => instruction_localizations_en
                .AuthenticatorInstructionLocalizationsEn(),
          );
  }

  throw FlutterError(
      'AuthenticatorInstructionLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
