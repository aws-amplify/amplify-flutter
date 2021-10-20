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

import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'authenticator_localizations_en.dart' deferred as authenticator_localizations_en;

/// Callers can lookup localized strings with an instance of AuthenticatorLocalizations returned
/// by `AuthenticatorLocalizations.of(context)`.
///
/// Applications need to include `AuthenticatorLocalizations.delegate()` in their app's
/// localizationDelegates list, and the locales they support in the app's
/// supportedLocales list. For example:
///
/// ```
/// import 'generated/authenticator_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AuthenticatorLocalizations.localizationsDelegates,
///   supportedLocales: AuthenticatorLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the AuthenticatorLocalizations.supportedLocales
/// property.
abstract class AuthenticatorLocalizations {
  AuthenticatorLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AuthenticatorLocalizations of(BuildContext context) {
    return Localizations.of<AuthenticatorLocalizations>(context, AuthenticatorLocalizations)!;
  }

  static const LocalizationsDelegate<AuthenticatorLocalizations> delegate = _AuthenticatorLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en')
  ];

  /// Label of the button to sign in the user.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signin;

  /// Label of the button to sign up the user.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get signup;

  /// Label of button to confirm an action
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// Label of button to submit a form
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// Label of button to change a password
  ///
  /// In en, this message translates to:
  /// **'Change Password'**
  String get changePassword;

  /// Label of button to send a verification code to the user's device
  ///
  /// In en, this message translates to:
  /// **'Send Code'**
  String get sendCode;

  /// Label of button prompting user if they've not received or have misplaced a verification code we sent
  ///
  /// In en, this message translates to:
  /// **'Lost your code?'**
  String get lostCode;

  /// Hint text for the 'Go to Sign Up' button
  ///
  /// In en, this message translates to:
  /// **'No account?'**
  String get noAccount;

  /// Hint text for the 'Go to Sign In' button
  ///
  /// In en, this message translates to:
  /// **'Have an account?'**
  String get haveAccount;

  /// Hint text for the 'Reset Password' button
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get forgotPassword;

  /// Label of button to reset a user's password
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get resetPassword;

  /// Label of button to verify a user's contact point such as their email or phone number
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get verifyUser;

  /// Label of button to submit a verification code sent to a user's contact point
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get confirmVerifyUser;

  /// Label of button to skip the current screen or action.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// Label of button to sign out the user
  ///
  /// In en, this message translates to:
  /// **'Sign Out'**
  String get signout;

  /// Label of button to return to the previous screen
  ///
  /// In en, this message translates to:
  /// **'Back to {previousScreen}'**
  String backTo(String previousScreen);

  /// Label of button to sign in with a social provider
  ///
  /// In en, this message translates to:
  /// **'Sign In with {provider}'**
  String signInWith(String provider);

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

  /// Confirmation of user's chosen password.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get passwordConfirmation;

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

  /// Preamble to list of unment password requirements.
  ///
  /// In en, this message translates to:
  /// **'Password must include:'**
  String get passwordRequirementsPreamble;

  /// Character(s) in a password.
  ///
  /// In en, this message translates to:
  /// **'{numCharacters, plural, =1{character} other{characters}}'**
  String passwordRequirementsCharacter(int numCharacters);

  /// Character(s) in a password.
  ///
  /// In en, this message translates to:
  /// **'{characterType, select, uppercase{uppercase} lowercase{lowercase} number{number} symbol{symbol} other{}}'**
  String passwordRequirementsCharacterType(PasswordPolicyCharacters characterType);

  /// Password uppercase character requirement, displayed as a bullet point in list of unmet requirements.
  ///
  /// In en, this message translates to:
  /// **'at least {numCharacters} {characterType} {characters}'**
  String passwordRequirementsAtLeast(int numCharacters, String characterType, String characters);

  /// Title of the Signin screen and form
  ///
  /// In en, this message translates to:
  /// **'Sign in to your account'**
  String get screenSignin;

  /// Title of the Signup screen and form
  ///
  /// In en, this message translates to:
  /// **'Create your account'**
  String get screenSignup;

  /// Title of the Confirm Signup screen and form
  ///
  /// In en, this message translates to:
  /// **'Enter your confirmation code'**
  String get screenConfirmSignup;

  /// Title of the Confirm Signin with MFA screen and form
  ///
  /// In en, this message translates to:
  /// **'Enter your sign in code'**
  String get screenConfirmSigninMfa;

  /// Title of the Confirm Signin with New Password screen and form
  ///
  /// In en, this message translates to:
  /// **'Change your password to sign in'**
  String get screenConfirmSigninNewPassword;

  /// Title of the Reset Password screen and form
  ///
  /// In en, this message translates to:
  /// **'Reset your password'**
  String get screenResetPassword;

  /// Title of the Send Code screen and form
  ///
  /// In en, this message translates to:
  /// **'Send Code'**
  String get screenSendCode;

  /// Title of the Verify and Confirm Verify User screens and forms
  ///
  /// In en, this message translates to:
  /// **'Account recovery requires verified contact information'**
  String get screenVerifyUser;
}

class _AuthenticatorLocalizationsDelegate extends LocalizationsDelegate<AuthenticatorLocalizations> {
  const _AuthenticatorLocalizationsDelegate();

  @override
  Future<AuthenticatorLocalizations> load(Locale locale) {
    return lookupAuthenticatorLocalizations(locale);
  }

  @override
  bool isSupported(Locale locale) => <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AuthenticatorLocalizationsDelegate old) => false;
}

Future<AuthenticatorLocalizations> lookupAuthenticatorLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return authenticator_localizations_en.loadLibrary().then((dynamic _) => authenticator_localizations_en.AuthenticatorLocalizationsEn());
  }

  throw FlutterError(
    'AuthenticatorLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
