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

  /// Text displayed when dial code lookup has no search results
  ///
  /// In en, this message translates to:
  /// **'No search results match your criteria'**
  String get noDialCodeSearchResults;

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

  /// Display name for Algeria
  ///
  /// In en, this message translates to:
  /// **'Algeria'**
  String get algeria;

  /// Display name for Andorra
  ///
  /// In en, this message translates to:
  /// **'Andorra'**
  String get andorra;

  /// Display name for Angola
  ///
  /// In en, this message translates to:
  /// **'Angola'**
  String get angola;

  /// Display name for Anquilla
  ///
  /// In en, this message translates to:
  /// **'Anquilla'**
  String get anquilla;

  /// Display name for AnquAntigua And Barbudailla
  ///
  /// In en, this message translates to:
  /// **'Antigua And Barbuda'**
  String get antiguaAndBarbuda;

  /// Display name for Argentina
  ///
  /// In en, this message translates to:
  /// **'Argentina'**
  String get argentina;

  /// Display name for Armenia
  ///
  /// In en, this message translates to:
  /// **'Armenia'**
  String get armenia;

  /// Display name for Aruba
  ///
  /// In en, this message translates to:
  /// **'Aruba'**
  String get aruba;

  /// Display name for Australia
  ///
  /// In en, this message translates to:
  /// **'Australia'**
  String get australia;

  /// Display name for Austria
  ///
  /// In en, this message translates to:
  /// **'Austria'**
  String get austria;

  /// Display name for Azerbaijan
  ///
  /// In en, this message translates to:
  /// **'Azerbaijan'**
  String get azerbaijan;

  /// Display name for Bahamas
  ///
  /// In en, this message translates to:
  /// **'Bahamas'**
  String get bahamas;

  /// Display name for Bahrain
  ///
  /// In en, this message translates to:
  /// **'Bahrain'**
  String get bahrain;

  /// Display name for Bangladesh
  ///
  /// In en, this message translates to:
  /// **'Bangladesh'**
  String get bangladesh;

  /// Display name for Barbados
  ///
  /// In en, this message translates to:
  /// **'Barbados'**
  String get barbados;

  /// Display name for Belarus
  ///
  /// In en, this message translates to:
  /// **'Belarus'**
  String get belarus;

  /// Display name for Belgium
  ///
  /// In en, this message translates to:
  /// **'Belgium'**
  String get belgium;

  /// Display name for Belize
  ///
  /// In en, this message translates to:
  /// **'Belize'**
  String get belize;

  /// Display name for Benin
  ///
  /// In en, this message translates to:
  /// **'Benin'**
  String get benin;

  /// Display name for Bermuda
  ///
  /// In en, this message translates to:
  /// **'Bermuda'**
  String get bermuda;

  /// Display name for Bhutan
  ///
  /// In en, this message translates to:
  /// **'Bhutan'**
  String get bhutan;

  /// Display name for Bolivia
  ///
  /// In en, this message translates to:
  /// **'Bolivia'**
  String get bolivia;

  /// Display name for Bosnia Herzegovina
  ///
  /// In en, this message translates to:
  /// **'Bosnia Herzegovina'**
  String get bosniaHerzegovina;

  /// Display name for Botswana
  ///
  /// In en, this message translates to:
  /// **'Botswana'**
  String get botswana;

  /// Display name for Brazil
  ///
  /// In en, this message translates to:
  /// **'Brazil'**
  String get brazil;

  /// Display name for Brunei
  ///
  /// In en, this message translates to:
  /// **'Brunei'**
  String get brunei;

  /// Display name for Bulgaria
  ///
  /// In en, this message translates to:
  /// **'Bulgaria'**
  String get bulgaria;

  /// Display name for Burkina Faso
  ///
  /// In en, this message translates to:
  /// **'Burkina Faso'**
  String get burkinaFaso;

  /// Display name for Burundi
  ///
  /// In en, this message translates to:
  /// **'Burundi'**
  String get burundi;

  /// Display name for Cambodia
  ///
  /// In en, this message translates to:
  /// **'Cambodia'**
  String get cambodia;

  /// Display name for Cameroon
  ///
  /// In en, this message translates to:
  /// **'Cameroon'**
  String get cameroon;

  /// Display name for Canada
  ///
  /// In en, this message translates to:
  /// **'Canada'**
  String get canada;

  /// Display name for Cape Verde Islands
  ///
  /// In en, this message translates to:
  /// **'Cape Verde Islands'**
  String get capeVerdeIslands;

  /// Display name for Cayman Islands
  ///
  /// In en, this message translates to:
  /// **'Cayman Islands'**
  String get caymanIslands;

  /// Central African Republic
  ///
  /// In en, this message translates to:
  /// **'Central African Republic'**
  String get centralAfricanRepublic;

  /// Display name for Chile
  ///
  /// In en, this message translates to:
  /// **'Chile'**
  String get chile;

  /// Display name for China
  ///
  /// In en, this message translates to:
  /// **'China'**
  String get china;

  /// Display name for Colombia
  ///
  /// In en, this message translates to:
  /// **'Colombia'**
  String get colombia;

  /// Display name for Comoros
  ///
  /// In en, this message translates to:
  /// **'Comoros'**
  String get comoros;

  /// Display name for Congo
  ///
  /// In en, this message translates to:
  /// **'Congo'**
  String get congo;

  /// Display name for Cook Islands
  ///
  /// In en, this message translates to:
  /// **'Cook Islands'**
  String get cookIslands;
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
