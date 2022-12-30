// Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
// SPDX-License-Identifier: Apache-2.0

import 'dart:async';

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'button_localizations_en.dart' deferred as button_localizations_en;

/// Callers can lookup localized strings with an instance of AuthenticatorButtonLocalizations returned
/// by `AuthenticatorButtonLocalizations.of(context)`.
///
/// Applications need to include `AuthenticatorButtonLocalizations.delegate()` in their app's
/// localizationDelegates list, and the locales they support in the app's
/// supportedLocales list. For example:
///
/// ```
/// import 'generated/button_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AuthenticatorButtonLocalizations.localizationsDelegates,
///   supportedLocales: AuthenticatorButtonLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the AuthenticatorButtonLocalizations.supportedLocales
/// property.
abstract class AuthenticatorButtonLocalizations {
  AuthenticatorButtonLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AuthenticatorButtonLocalizations? of(BuildContext context) {
    return Localizations.of<AuthenticatorButtonLocalizations>(
        context, AuthenticatorButtonLocalizations);
  }

  static const LocalizationsDelegate<AuthenticatorButtonLocalizations>
      delegate = _AuthenticatorButtonLocalizationsDelegate();

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

  /// Label of the button to sign in the user.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signIn;

  /// Label of the button to sign up the user.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get signUp;

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
  /// **'Forgot your password?'**
  String get forgotPassword;

  /// Label of button to confirm the reset of a user's password
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get confirmResetPassword;

  /// Label of button to verify a user's attribute, such as their email or phone number
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get verify;

  /// Label of button to skip the current step or action.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// Label of button to sign out the user
  ///
  /// In en, this message translates to:
  /// **'Sign Out'**
  String get signOut;

  /// Label of button to return to the previous step
  ///
  /// In en, this message translates to:
  /// **'Back to {previousStep, select, signUp{Sign Up}, signIn{Sign In}, confirmSignUp{Confirm Sign-up}, confirmSignInMfa{Confirm Sign-in} confirmSignInNewPassword{Confirm Sign-in} sendCode{Send Code} resetPassword{Reset Password} verifyUser{Verify User} confirmVerifyUser{Confirm Verify User}}'**
  String backTo(AuthenticatorStep previousStep);

  /// Label of button to sign in with a social provider
  ///
  /// In en, this message translates to:
  /// **'Sign In with {provider, select, google{Google} facebook{Facebook} amazon{Amazon} apple{Apple}}'**
  String signInWith(AuthProvider provider);
}

class _AuthenticatorButtonLocalizationsDelegate
    extends LocalizationsDelegate<AuthenticatorButtonLocalizations> {
  const _AuthenticatorButtonLocalizationsDelegate();

  @override
  Future<AuthenticatorButtonLocalizations> load(Locale locale) {
    return lookupAuthenticatorButtonLocalizations(locale);
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AuthenticatorButtonLocalizationsDelegate old) => false;
}

Future<AuthenticatorButtonLocalizations> lookupAuthenticatorButtonLocalizations(
    Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return button_localizations_en.loadLibrary().then((dynamic _) =>
          button_localizations_en.AuthenticatorButtonLocalizationsEn());
  }

  throw FlutterError(
      'AuthenticatorButtonLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
