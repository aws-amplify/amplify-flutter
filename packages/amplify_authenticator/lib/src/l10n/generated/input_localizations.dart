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

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'input_localizations_en.dart' deferred as input_localizations_en;

/// Callers can lookup localized strings with an instance of AuthenticatorInputLocalizations
/// returned by `AuthenticatorInputLocalizations.of(context)`.
///
/// Applications need to include `AuthenticatorInputLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/input_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AuthenticatorInputLocalizations.localizationsDelegates,
///   supportedLocales: AuthenticatorInputLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the AuthenticatorInputLocalizations.supportedLocales
/// property.
abstract class AuthenticatorInputLocalizations {
  AuthenticatorInputLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AuthenticatorInputLocalizations? of(BuildContext context) {
    return Localizations.of<AuthenticatorInputLocalizations>(
        context, AuthenticatorInputLocalizations);
  }

  static const LocalizationsDelegate<AuthenticatorInputLocalizations> delegate =
      _AuthenticatorInputLocalizationsDelegate();

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

  /// User's chosen username.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get username;

  /// User's chosen password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// User's chosen new password.
  ///
  /// In en, this message translates to:
  /// **'New Password'**
  String get newPassword;

  /// User's preferred e-mail address.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// User's preferred telephone number.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumber;

  /// The code sent to the user's phone number or email address for verification.
  ///
  /// In en, this message translates to:
  /// **'Verification Code'**
  String get verificationCode;

  /// User's preferred postal address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// User's birthday, represented as an ISO 8601:2004 [ISO8601‑2004] YYYY-MM-DD format.
  ///
  /// In en, this message translates to:
  /// **'Birthdate'**
  String get birthdate;

  /// Surname(s) or last name(s) of the user.
  ///
  /// In en, this message translates to:
  /// **'Family Name'**
  String get familyName;

  /// Middle name(s) of the user.
  ///
  /// In en, this message translates to:
  /// **'Middle Name'**
  String get middleName;

  /// User's gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

  /// No description provided for @genders.
  ///
  /// In en, this message translates to:
  /// **'{gender, select, male{male}, female{female}, other{other}}'**
  String genders(Gender gender);

  /// Given name(s) or first name(s) of the user.
  ///
  /// In en, this message translates to:
  /// **'Given Name'**
  String get givenName;

  /// User's full name in displayable form including all name parts, possibly including titles and suffixes, ordered according to the user's locale and preferences.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// Casual name of the user that may or may not be the same as their given name.
  ///
  /// In en, this message translates to:
  /// **'Nickname'**
  String get nickname;

  /// One or the other
  ///
  /// In en, this message translates to:
  /// **'{a} or {b}'**
  String or(String a, String b);

  /// Shorthand name by which the user wishes to be referred to.
  ///
  /// In en, this message translates to:
  /// **'Preferred Username'**
  String get preferredUsername;

  /// Warning for a required field was left empty, displayed as an error to the user.
  ///
  /// In en, this message translates to:
  /// **'{attribute} field must not be blank.'**
  String warnEmpty(String attribute);

  /// Warning for field that has failed format validation.
  ///
  /// In en, this message translates to:
  /// **'Invalid {attributeType} format.'**
  String warnInvalidFormat(String attributeType);

  /// Prompt to fill an optional or required input field, used as the placeholder for text fields.
  ///
  /// In en, this message translates to:
  /// **'Enter your {attribute}'**
  String promptFill(String attribute);

  /// Prompt to refill an optional or required input field, used as the placeholder for text fields.
  ///
  /// In en, this message translates to:
  /// **'Re-enter your {attribute}'**
  String promptRefill(String attribute);

  /// Title to re-enter an optional or required input field, used as the label for text fields.
  ///
  /// In en, this message translates to:
  /// **'Confirm {attribute}'**
  String confirmAttribute(String attribute);

  /// Warning for when username requirements are not met.
  ///
  /// In en, this message translates to:
  /// **'Username must only contain alphanumeric characters and symbols.'**
  String get usernameRequirements;

  /// Preamble to list of unment password requirements.
  ///
  /// In en, this message translates to:
  /// **'Password must include:'**
  String get passwordRequirementsPreamble;

  /// Character(s) in a password.
  ///
  /// In en, this message translates to:
  /// **' {characterType, select, requiresUppercase{uppercase} requiresLowercase{lowercase} requiresNumbers{number} requiresSymbols{symbol} other{}}'**
  String passwordRequirementsCharacterType(
      PasswordPolicyCharacters characterType);

  /// Password uppercase character requirement, displayed as a bullet point in list of unmet requirements.
  ///
  /// In en, this message translates to:
  /// **'at least {numCharacters, plural, =1{1{characterType} character} other{{numCharacters}{characterType} characters}}'**
  String passwordRequirementsAtLeast(num numCharacters, String characterType);

  /// Message for conflicting password and confirm password fields.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match.'**
  String get passwordsDoNotMatch;

  /// Label for the checkbox to remember the user's device in Cognito.
  ///
  /// In en, this message translates to:
  /// **'Remember Device?'**
  String get rememberDevice;

  /// Label for the toggle buttons to select email or phone number as username when both are available.
  ///
  /// In en, this message translates to:
  /// **'Log in using:'**
  String get usernameType;

  /// Indicator for a field which is not required to be filled
  ///
  /// In en, this message translates to:
  /// **'{fieldTitle} (optional)'**
  String optional(String fieldTitle);

  /// The answer to the custom auth challenge
  ///
  /// In en, this message translates to:
  /// **'Confirmation Code'**
  String get customChallenge;
}

class _AuthenticatorInputLocalizationsDelegate
    extends LocalizationsDelegate<AuthenticatorInputLocalizations> {
  const _AuthenticatorInputLocalizationsDelegate();

  @override
  Future<AuthenticatorInputLocalizations> load(Locale locale) {
    return lookupAuthenticatorInputLocalizations(locale);
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AuthenticatorInputLocalizationsDelegate old) => false;
}

Future<AuthenticatorInputLocalizations> lookupAuthenticatorInputLocalizations(
    Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return input_localizations_en.loadLibrary().then((dynamic _) =>
          input_localizations_en.AuthenticatorInputLocalizationsEn());
  }

  throw FlutterError(
      'AuthenticatorInputLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
