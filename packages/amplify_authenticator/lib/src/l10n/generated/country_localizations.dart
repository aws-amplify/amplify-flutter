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

  /// Display name for Afghanistan
  ///
  /// In en, this message translates to:
  /// **'Afghanistan'**
  String get afghanistan;

  /// Display name for Aland Islands
  ///
  /// In en, this message translates to:
  /// **'Aland Islands'**
  String get alandIslands;

  /// Display name for Albania
  ///
  /// In en, this message translates to:
  /// **'Albania'**
  String get albania;

  /// Display name for Algeria
  ///
  /// In en, this message translates to:
  /// **'Algeria'**
  String get algeria;

  /// Display name for AmericanSamoa
  ///
  /// In en, this message translates to:
  /// **'AmericanSamoa'**
  String get americanSamoa;

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

  /// Display name for Anguilla
  ///
  /// In en, this message translates to:
  /// **'Anguilla'**
  String get anguilla;

  /// Display name for Antarctica
  ///
  /// In en, this message translates to:
  /// **'Antarctica'**
  String get antarctica;

  /// Display name for Antigua and Barbuda
  ///
  /// In en, this message translates to:
  /// **'Antigua and Barbuda'**
  String get antiguaandBarbuda;

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

  /// Display name for Bolivia, Plurinational State of
  ///
  /// In en, this message translates to:
  /// **'Bolivia, Plurinational State of'**
  String get boliviaPlurinationalStateof;

  /// Display name for Bosnia and Herzegovina
  ///
  /// In en, this message translates to:
  /// **'Bosnia and Herzegovina'**
  String get bosniaandHerzegovina;

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

  /// Display name for British Indian Ocean Territory
  ///
  /// In en, this message translates to:
  /// **'British Indian Ocean Territory'**
  String get britishIndianOceanTerritory;

  /// Display name for Brunei Darussalam
  ///
  /// In en, this message translates to:
  /// **'Brunei Darussalam'**
  String get bruneiDarussalam;

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

  /// Display name for Cape Verde
  ///
  /// In en, this message translates to:
  /// **'Cape Verde'**
  String get capeVerde;

  /// Display name for Cayman Islands
  ///
  /// In en, this message translates to:
  /// **'Cayman Islands'**
  String get caymanIslands;

  /// Display name for Central African Republic
  ///
  /// In en, this message translates to:
  /// **'Central African Republic'**
  String get centralAfricanRepublic;

  /// Display name for Chad
  ///
  /// In en, this message translates to:
  /// **'Chad'**
  String get chad;

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

  /// Display name for Christmas Island
  ///
  /// In en, this message translates to:
  /// **'Christmas Island'**
  String get christmasIsland;

  /// Display name for Cocos (Keeling) Islands
  ///
  /// In en, this message translates to:
  /// **'Cocos (Keeling) Islands'**
  String get cocosKeelingIslands;

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

  /// Display name for Congo The Democratic Republic of the Congo
  ///
  /// In en, this message translates to:
  /// **'Congo The Democratic Republic of the Congo'**
  String get congoTheDemocraticRepublicoftheCongo;

  /// Display name for Cook Islands
  ///
  /// In en, this message translates to:
  /// **'Cook Islands'**
  String get cookIslands;

  /// Display name for Costa Rica
  ///
  /// In en, this message translates to:
  /// **'Costa Rica'**
  String get costaRica;

  /// Display name for Cote dIvoire
  ///
  /// In en, this message translates to:
  /// **'Cote dIvoire'**
  String get cotedIvoire;

  /// Display name for Croatia
  ///
  /// In en, this message translates to:
  /// **'Croatia'**
  String get croatia;

  /// Display name for Cuba
  ///
  /// In en, this message translates to:
  /// **'Cuba'**
  String get cuba;

  /// Display name for Cyprus
  ///
  /// In en, this message translates to:
  /// **'Cyprus'**
  String get cyprus;

  /// Display name for Czech Republic
  ///
  /// In en, this message translates to:
  /// **'Czech Republic'**
  String get czechRepublic;

  /// Display name for Denmark
  ///
  /// In en, this message translates to:
  /// **'Denmark'**
  String get denmark;

  /// Display name for Djibouti
  ///
  /// In en, this message translates to:
  /// **'Djibouti'**
  String get djibouti;

  /// Display name for Dominica
  ///
  /// In en, this message translates to:
  /// **'Dominica'**
  String get dominica;

  /// Display name for Dominican Republic
  ///
  /// In en, this message translates to:
  /// **'Dominican Republic'**
  String get dominicanRepublic;

  /// Display name for Ecuador
  ///
  /// In en, this message translates to:
  /// **'Ecuador'**
  String get ecuador;

  /// Display name for Egypt
  ///
  /// In en, this message translates to:
  /// **'Egypt'**
  String get egypt;

  /// Display name for El Salvador
  ///
  /// In en, this message translates to:
  /// **'El Salvador'**
  String get elSalvador;

  /// Display name for Equatorial Guinea
  ///
  /// In en, this message translates to:
  /// **'Equatorial Guinea'**
  String get equatorialGuinea;

  /// Display name for Eritrea
  ///
  /// In en, this message translates to:
  /// **'Eritrea'**
  String get eritrea;

  /// Display name for Estonia
  ///
  /// In en, this message translates to:
  /// **'Estonia'**
  String get estonia;

  /// Display name for Ethiopia
  ///
  /// In en, this message translates to:
  /// **'Ethiopia'**
  String get ethiopia;

  /// Display name for Falkland Islands (Malvinas)
  ///
  /// In en, this message translates to:
  /// **'Falkland Islands (Malvinas)'**
  String get falklandIslandsMalvinas;

  /// Display name for Faroe Islands
  ///
  /// In en, this message translates to:
  /// **'Faroe Islands'**
  String get faroeIslands;

  /// Display name for Fiji
  ///
  /// In en, this message translates to:
  /// **'Fiji'**
  String get fiji;

  /// Display name for Finland
  ///
  /// In en, this message translates to:
  /// **'Finland'**
  String get finland;

  /// Display name for France
  ///
  /// In en, this message translates to:
  /// **'France'**
  String get france;

  /// Display name for French Guiana
  ///
  /// In en, this message translates to:
  /// **'French Guiana'**
  String get frenchGuiana;

  /// Display name for French Polynesia
  ///
  /// In en, this message translates to:
  /// **'French Polynesia'**
  String get frenchPolynesia;

  /// Display name for Gabon
  ///
  /// In en, this message translates to:
  /// **'Gabon'**
  String get gabon;

  /// Display name for Gambia
  ///
  /// In en, this message translates to:
  /// **'Gambia'**
  String get gambia;

  /// Display name for Georgia
  ///
  /// In en, this message translates to:
  /// **'Georgia'**
  String get georgia;

  /// Display name for Germany
  ///
  /// In en, this message translates to:
  /// **'Germany'**
  String get germany;

  /// Display name for Ghana
  ///
  /// In en, this message translates to:
  /// **'Ghana'**
  String get ghana;

  /// Display name for Gibraltar
  ///
  /// In en, this message translates to:
  /// **'Gibraltar'**
  String get gibraltar;

  /// Display name for Greece
  ///
  /// In en, this message translates to:
  /// **'Greece'**
  String get greece;

  /// Display name for Greenland
  ///
  /// In en, this message translates to:
  /// **'Greenland'**
  String get greenland;

  /// Display name for Grenada
  ///
  /// In en, this message translates to:
  /// **'Grenada'**
  String get grenada;

  /// Display name for Guadeloupe
  ///
  /// In en, this message translates to:
  /// **'Guadeloupe'**
  String get guadeloupe;

  /// Display name for Guam
  ///
  /// In en, this message translates to:
  /// **'Guam'**
  String get guam;

  /// Display name for Guatemala
  ///
  /// In en, this message translates to:
  /// **'Guatemala'**
  String get guatemala;

  /// Display name for Guernsey
  ///
  /// In en, this message translates to:
  /// **'Guernsey'**
  String get guernsey;

  /// Display name for Guinea
  ///
  /// In en, this message translates to:
  /// **'Guinea'**
  String get guinea;

  /// Display name for Guinea-Bissau
  ///
  /// In en, this message translates to:
  /// **'Guinea-Bissau'**
  String get guineaBissau;

  /// Display name for Guyana
  ///
  /// In en, this message translates to:
  /// **'Guyana'**
  String get guyana;

  /// Display name for Haiti
  ///
  /// In en, this message translates to:
  /// **'Haiti'**
  String get haiti;

  /// Display name for Holy See (Vatican City State)
  ///
  /// In en, this message translates to:
  /// **'Holy See (Vatican City State)'**
  String get holySeeVaticanCityState;

  /// Display name for Honduras
  ///
  /// In en, this message translates to:
  /// **'Honduras'**
  String get honduras;

  /// Display name for Hong Kong
  ///
  /// In en, this message translates to:
  /// **'Hong Kong'**
  String get hongKong;

  /// Display name for Hungary
  ///
  /// In en, this message translates to:
  /// **'Hungary'**
  String get hungary;

  /// Display name for Iceland
  ///
  /// In en, this message translates to:
  /// **'Iceland'**
  String get iceland;

  /// Display name for India
  ///
  /// In en, this message translates to:
  /// **'India'**
  String get india;

  /// Display name for Indonesia
  ///
  /// In en, this message translates to:
  /// **'Indonesia'**
  String get indonesia;

  /// Display name for Iran, Islamic Republic of Persian Gulf
  ///
  /// In en, this message translates to:
  /// **'Iran, Islamic Republic of Persian Gulf'**
  String get iranIslamicRepublicofPersianGulf;

  /// Display name for Iraq
  ///
  /// In en, this message translates to:
  /// **'Iraq'**
  String get iraq;

  /// Display name for Ireland
  ///
  /// In en, this message translates to:
  /// **'Ireland'**
  String get ireland;

  /// Display name for Isle of Man
  ///
  /// In en, this message translates to:
  /// **'Isle of Man'**
  String get isleofMan;

  /// Display name for Israel
  ///
  /// In en, this message translates to:
  /// **'Israel'**
  String get israel;

  /// Display name for Italy
  ///
  /// In en, this message translates to:
  /// **'Italy'**
  String get italy;

  /// Display name for Jamaica
  ///
  /// In en, this message translates to:
  /// **'Jamaica'**
  String get jamaica;

  /// Display name for Japan
  ///
  /// In en, this message translates to:
  /// **'Japan'**
  String get japan;

  /// Display name for Jersey
  ///
  /// In en, this message translates to:
  /// **'Jersey'**
  String get jersey;

  /// Display name for Jordan
  ///
  /// In en, this message translates to:
  /// **'Jordan'**
  String get jordan;

  /// Display name for Kazakhstan
  ///
  /// In en, this message translates to:
  /// **'Kazakhstan'**
  String get kazakhstan;

  /// Display name for Kenya
  ///
  /// In en, this message translates to:
  /// **'Kenya'**
  String get kenya;

  /// Display name for Kiribati
  ///
  /// In en, this message translates to:
  /// **'Kiribati'**
  String get kiribati;

  /// Display name for Korea, Democratic Peoples Republic of Korea
  ///
  /// In en, this message translates to:
  /// **'Korea, Democratic Peoples Republic of Korea'**
  String get koreaDemocraticPeoplesRepublicofKorea;

  /// Display name for Korea, Republic of South Korea
  ///
  /// In en, this message translates to:
  /// **'Korea, Republic of South Korea'**
  String get koreaRepublicofSouthKorea;

  /// Display name for Kuwait
  ///
  /// In en, this message translates to:
  /// **'Kuwait'**
  String get kuwait;

  /// Display name for Kyrgyzstan
  ///
  /// In en, this message translates to:
  /// **'Kyrgyzstan'**
  String get kyrgyzstan;

  /// Display name for Laos
  ///
  /// In en, this message translates to:
  /// **'Laos'**
  String get laos;

  /// Display name for Latvia
  ///
  /// In en, this message translates to:
  /// **'Latvia'**
  String get latvia;

  /// Display name for Lebanon
  ///
  /// In en, this message translates to:
  /// **'Lebanon'**
  String get lebanon;

  /// Display name for Lesotho
  ///
  /// In en, this message translates to:
  /// **'Lesotho'**
  String get lesotho;

  /// Display name for Liberia
  ///
  /// In en, this message translates to:
  /// **'Liberia'**
  String get liberia;

  /// Display name for Libyan Arab Jamahiriya
  ///
  /// In en, this message translates to:
  /// **'Libyan Arab Jamahiriya'**
  String get libyanArabJamahiriya;

  /// Display name for Liechtenstein
  ///
  /// In en, this message translates to:
  /// **'Liechtenstein'**
  String get liechtenstein;

  /// Display name for Lithuania
  ///
  /// In en, this message translates to:
  /// **'Lithuania'**
  String get lithuania;

  /// Display name for Luxembourg
  ///
  /// In en, this message translates to:
  /// **'Luxembourg'**
  String get luxembourg;

  /// Display name for Macao
  ///
  /// In en, this message translates to:
  /// **'Macao'**
  String get macao;

  /// Display name for Macedonia
  ///
  /// In en, this message translates to:
  /// **'Macedonia'**
  String get macedonia;

  /// Display name for Madagascar
  ///
  /// In en, this message translates to:
  /// **'Madagascar'**
  String get madagascar;

  /// Display name for Malawi
  ///
  /// In en, this message translates to:
  /// **'Malawi'**
  String get malawi;

  /// Display name for Malaysia
  ///
  /// In en, this message translates to:
  /// **'Malaysia'**
  String get malaysia;

  /// Display name for Maldives
  ///
  /// In en, this message translates to:
  /// **'Maldives'**
  String get maldives;

  /// Display name for Mali
  ///
  /// In en, this message translates to:
  /// **'Mali'**
  String get mali;

  /// Display name for Malta
  ///
  /// In en, this message translates to:
  /// **'Malta'**
  String get malta;

  /// Display name for Marshall Islands
  ///
  /// In en, this message translates to:
  /// **'Marshall Islands'**
  String get marshallIslands;

  /// Display name for Martinique
  ///
  /// In en, this message translates to:
  /// **'Martinique'**
  String get martinique;

  /// Display name for Mauritania
  ///
  /// In en, this message translates to:
  /// **'Mauritania'**
  String get mauritania;

  /// Display name for Mauritius
  ///
  /// In en, this message translates to:
  /// **'Mauritius'**
  String get mauritius;

  /// Display name for Mayotte
  ///
  /// In en, this message translates to:
  /// **'Mayotte'**
  String get mayotte;

  /// Display name for Mexico
  ///
  /// In en, this message translates to:
  /// **'Mexico'**
  String get mexico;

  /// Display name for Micronesia, Federated States of Micronesia
  ///
  /// In en, this message translates to:
  /// **'Micronesia, Federated States of Micronesia'**
  String get micronesiaFederatedStatesofMicronesia;

  /// Display name for Moldova
  ///
  /// In en, this message translates to:
  /// **'Moldova'**
  String get moldova;

  /// Display name for Monaco
  ///
  /// In en, this message translates to:
  /// **'Monaco'**
  String get monaco;

  /// Display name for Mongolia
  ///
  /// In en, this message translates to:
  /// **'Mongolia'**
  String get mongolia;

  /// Display name for Montenegro
  ///
  /// In en, this message translates to:
  /// **'Montenegro'**
  String get montenegro;

  /// Display name for Montserrat
  ///
  /// In en, this message translates to:
  /// **'Montserrat'**
  String get montserrat;

  /// Display name for Morocco
  ///
  /// In en, this message translates to:
  /// **'Morocco'**
  String get morocco;

  /// Display name for Mozambique
  ///
  /// In en, this message translates to:
  /// **'Mozambique'**
  String get mozambique;

  /// Display name for Myanmar
  ///
  /// In en, this message translates to:
  /// **'Myanmar'**
  String get myanmar;

  /// Display name for Namibia
  ///
  /// In en, this message translates to:
  /// **'Namibia'**
  String get namibia;

  /// Display name for Nauru
  ///
  /// In en, this message translates to:
  /// **'Nauru'**
  String get nauru;

  /// Display name for Nepal
  ///
  /// In en, this message translates to:
  /// **'Nepal'**
  String get nepal;

  /// Display name for Netherlands
  ///
  /// In en, this message translates to:
  /// **'Netherlands'**
  String get netherlands;

  /// Display name for Netherlands Antilles
  ///
  /// In en, this message translates to:
  /// **'Netherlands Antilles'**
  String get netherlandsAntilles;

  /// Display name for New Caledonia
  ///
  /// In en, this message translates to:
  /// **'New Caledonia'**
  String get newCaledonia;

  /// Display name for New Zealand
  ///
  /// In en, this message translates to:
  /// **'New Zealand'**
  String get newZealand;

  /// Display name for Nicaragua
  ///
  /// In en, this message translates to:
  /// **'Nicaragua'**
  String get nicaragua;

  /// Display name for Niger
  ///
  /// In en, this message translates to:
  /// **'Niger'**
  String get niger;

  /// Display name for Nigeria
  ///
  /// In en, this message translates to:
  /// **'Nigeria'**
  String get nigeria;

  /// Display name for Niue
  ///
  /// In en, this message translates to:
  /// **'Niue'**
  String get niue;

  /// Display name for Norfolk Island
  ///
  /// In en, this message translates to:
  /// **'Norfolk Island'**
  String get norfolkIsland;

  /// Display name for Northern Mariana Islands
  ///
  /// In en, this message translates to:
  /// **'Northern Mariana Islands'**
  String get northernMarianaIslands;

  /// Display name for Norway
  ///
  /// In en, this message translates to:
  /// **'Norway'**
  String get norway;

  /// Display name for Oman
  ///
  /// In en, this message translates to:
  /// **'Oman'**
  String get oman;

  /// Display name for Pakistan
  ///
  /// In en, this message translates to:
  /// **'Pakistan'**
  String get pakistan;

  /// Display name for Palau
  ///
  /// In en, this message translates to:
  /// **'Palau'**
  String get palau;

  /// Display name for Palestinian Territory, Occupied
  ///
  /// In en, this message translates to:
  /// **'Palestinian Territory, Occupied'**
  String get palestinianTerritoryOccupied;

  /// Display name for Panama
  ///
  /// In en, this message translates to:
  /// **'Panama'**
  String get panama;

  /// Display name for Papua New Guinea
  ///
  /// In en, this message translates to:
  /// **'Papua New Guinea'**
  String get papuaNewGuinea;

  /// Display name for Paraguay
  ///
  /// In en, this message translates to:
  /// **'Paraguay'**
  String get paraguay;

  /// Display name for Peru
  ///
  /// In en, this message translates to:
  /// **'Peru'**
  String get peru;

  /// Display name for Philippines
  ///
  /// In en, this message translates to:
  /// **'Philippines'**
  String get philippines;

  /// Display name for Pitcairn
  ///
  /// In en, this message translates to:
  /// **'Pitcairn'**
  String get pitcairn;

  /// Display name for Poland
  ///
  /// In en, this message translates to:
  /// **'Poland'**
  String get poland;

  /// Display name for Portugal
  ///
  /// In en, this message translates to:
  /// **'Portugal'**
  String get portugal;

  /// Display name for Puerto Rico
  ///
  /// In en, this message translates to:
  /// **'Puerto Rico'**
  String get puertoRico;

  /// Display name for Qatar
  ///
  /// In en, this message translates to:
  /// **'Qatar'**
  String get qatar;

  /// Display name for Romania
  ///
  /// In en, this message translates to:
  /// **'Romania'**
  String get romania;

  /// Display name for Russia
  ///
  /// In en, this message translates to:
  /// **'Russia'**
  String get russia;

  /// Display name for Rwanda
  ///
  /// In en, this message translates to:
  /// **'Rwanda'**
  String get rwanda;

  /// Display name for Reunion
  ///
  /// In en, this message translates to:
  /// **'Reunion'**
  String get reunion;

  /// Display name for Saint Barthelemy
  ///
  /// In en, this message translates to:
  /// **'Saint Barthelemy'**
  String get saintBarthelemy;

  /// Display name for Saint Helena, Ascension and Tristan Da Cunha
  ///
  /// In en, this message translates to:
  /// **'Saint Helena, Ascension and Tristan Da Cunha'**
  String get saintHelenaAscensionandTristanDaCunha;

  /// Display name for Saint Kitts and Nevis
  ///
  /// In en, this message translates to:
  /// **'Saint Kitts and Nevis'**
  String get saintKittsandNevis;

  /// Display name for Saint Lucia
  ///
  /// In en, this message translates to:
  /// **'Saint Lucia'**
  String get saintLucia;

  /// Display name for Saint Martin
  ///
  /// In en, this message translates to:
  /// **'Saint Martin'**
  String get saintMartin;

  /// Display name for Saint Pierre and Miquelon
  ///
  /// In en, this message translates to:
  /// **'Saint Pierre and Miquelon'**
  String get saintPierreandMiquelon;

  /// Display name for Saint Vincent and the Grenadines
  ///
  /// In en, this message translates to:
  /// **'Saint Vincent and the Grenadines'**
  String get saintVincentandtheGrenadines;

  /// Display name for Samoa
  ///
  /// In en, this message translates to:
  /// **'Samoa'**
  String get samoa;

  /// Display name for San Marino
  ///
  /// In en, this message translates to:
  /// **'San Marino'**
  String get sanMarino;

  /// Display name for Sao Tome and Principe
  ///
  /// In en, this message translates to:
  /// **'Sao Tome and Principe'**
  String get saoTomeandPrincipe;

  /// Display name for Saudi Arabia
  ///
  /// In en, this message translates to:
  /// **'Saudi Arabia'**
  String get saudiArabia;

  /// Display name for Senegal
  ///
  /// In en, this message translates to:
  /// **'Senegal'**
  String get senegal;

  /// Display name for Serbia
  ///
  /// In en, this message translates to:
  /// **'Serbia'**
  String get serbia;

  /// Display name for Seychelles
  ///
  /// In en, this message translates to:
  /// **'Seychelles'**
  String get seychelles;

  /// Display name for Sierra Leone
  ///
  /// In en, this message translates to:
  /// **'Sierra Leone'**
  String get sierraLeone;

  /// Display name for Singapore
  ///
  /// In en, this message translates to:
  /// **'Singapore'**
  String get singapore;

  /// Display name for Slovakia
  ///
  /// In en, this message translates to:
  /// **'Slovakia'**
  String get slovakia;

  /// Display name for Slovenia
  ///
  /// In en, this message translates to:
  /// **'Slovenia'**
  String get slovenia;

  /// Display name for Solomon Islands
  ///
  /// In en, this message translates to:
  /// **'Solomon Islands'**
  String get solomonIslands;

  /// Display name for Somalia
  ///
  /// In en, this message translates to:
  /// **'Somalia'**
  String get somalia;

  /// Display name for South Africa
  ///
  /// In en, this message translates to:
  /// **'South Africa'**
  String get southAfrica;

  /// Display name for South Sudan
  ///
  /// In en, this message translates to:
  /// **'South Sudan'**
  String get southSudan;

  /// Display name for South Georgia and the South Sandwich Islands
  ///
  /// In en, this message translates to:
  /// **'South Georgia and the South Sandwich Islands'**
  String get southGeorgiaandtheSouthSandwichIslands;

  /// Display name for Spain
  ///
  /// In en, this message translates to:
  /// **'Spain'**
  String get spain;

  /// Display name for Sri Lanka
  ///
  /// In en, this message translates to:
  /// **'Sri Lanka'**
  String get sriLanka;

  /// Display name for Sudan
  ///
  /// In en, this message translates to:
  /// **'Sudan'**
  String get sudan;

  /// Display name for Suriname
  ///
  /// In en, this message translates to:
  /// **'Suriname'**
  String get suriname;

  /// Display name for Svalbard and Jan Mayen
  ///
  /// In en, this message translates to:
  /// **'Svalbard and Jan Mayen'**
  String get svalbardandJanMayen;

  /// Display name for Swaziland
  ///
  /// In en, this message translates to:
  /// **'Swaziland'**
  String get swaziland;

  /// Display name for Sweden
  ///
  /// In en, this message translates to:
  /// **'Sweden'**
  String get sweden;

  /// Display name for Switzerland
  ///
  /// In en, this message translates to:
  /// **'Switzerland'**
  String get switzerland;

  /// Display name for Syrian Arab Republic
  ///
  /// In en, this message translates to:
  /// **'Syrian Arab Republic'**
  String get syrianArabRepublic;

  /// Display name for Taiwan
  ///
  /// In en, this message translates to:
  /// **'Taiwan'**
  String get taiwan;

  /// Display name for Tajikistan
  ///
  /// In en, this message translates to:
  /// **'Tajikistan'**
  String get tajikistan;

  /// Display name for Tanzania, United Republic of Tanzania
  ///
  /// In en, this message translates to:
  /// **'Tanzania, United Republic of Tanzania'**
  String get tanzaniaUnitedRepublicofTanzania;

  /// Display name for Thailand
  ///
  /// In en, this message translates to:
  /// **'Thailand'**
  String get thailand;

  /// Display name for Timor-Leste
  ///
  /// In en, this message translates to:
  /// **'Timor-Leste'**
  String get timorLeste;

  /// Display name for Togo
  ///
  /// In en, this message translates to:
  /// **'Togo'**
  String get togo;

  /// Display name for Tokelau
  ///
  /// In en, this message translates to:
  /// **'Tokelau'**
  String get tokelau;

  /// Display name for Tonga
  ///
  /// In en, this message translates to:
  /// **'Tonga'**
  String get tonga;

  /// Display name for Trinidad and Tobago
  ///
  /// In en, this message translates to:
  /// **'Trinidad and Tobago'**
  String get trinidadandTobago;

  /// Display name for Tunisia
  ///
  /// In en, this message translates to:
  /// **'Tunisia'**
  String get tunisia;

  /// Display name for Turkey
  ///
  /// In en, this message translates to:
  /// **'Turkey'**
  String get turkey;

  /// Display name for Turkmenistan
  ///
  /// In en, this message translates to:
  /// **'Turkmenistan'**
  String get turkmenistan;

  /// Display name for Turks and Caicos Islands
  ///
  /// In en, this message translates to:
  /// **'Turks and Caicos Islands'**
  String get turksandCaicosIslands;

  /// Display name for Tuvalu
  ///
  /// In en, this message translates to:
  /// **'Tuvalu'**
  String get tuvalu;

  /// Display name for Uganda
  ///
  /// In en, this message translates to:
  /// **'Uganda'**
  String get uganda;

  /// Display name for Ukraine
  ///
  /// In en, this message translates to:
  /// **'Ukraine'**
  String get ukraine;

  /// Display name for United Arab Emirates
  ///
  /// In en, this message translates to:
  /// **'United Arab Emirates'**
  String get unitedArabEmirates;

  /// Display name for United Kingdom
  ///
  /// In en, this message translates to:
  /// **'United Kingdom'**
  String get unitedKingdom;

  /// Display name for United States
  ///
  /// In en, this message translates to:
  /// **'United States'**
  String get unitedStates;

  /// Display name for Uruguay
  ///
  /// In en, this message translates to:
  /// **'Uruguay'**
  String get uruguay;

  /// Display name for Uzbekistan
  ///
  /// In en, this message translates to:
  /// **'Uzbekistan'**
  String get uzbekistan;

  /// Display name for Vanuatu
  ///
  /// In en, this message translates to:
  /// **'Vanuatu'**
  String get vanuatu;

  /// Display name for Venezuela, Bolivarian Republic of Venezuela
  ///
  /// In en, this message translates to:
  /// **'Venezuela, Bolivarian Republic of Venezuela'**
  String get venezuelaBolivarianRepublicofVenezuela;

  /// Display name for Vietnam
  ///
  /// In en, this message translates to:
  /// **'Vietnam'**
  String get vietnam;

  /// Display name for Virgin IslandsBritish
  ///
  /// In en, this message translates to:
  /// **'Virgin IslandsBritish'**
  String get virginIslandsBritish;

  /// Display name for Virgin IslandsUS
  ///
  /// In en, this message translates to:
  /// **'Virgin IslandsUS'**
  String get virginIslandsUS;

  /// Display name for Wallis and Futuna
  ///
  /// In en, this message translates to:
  /// **'Wallis and Futuna'**
  String get wallisandFutuna;

  /// Display name for Yemen
  ///
  /// In en, this message translates to:
  /// **'Yemen'**
  String get yemen;

  /// Display name for Zambia
  ///
  /// In en, this message translates to:
  /// **'Zambia'**
  String get zambia;

  /// Display name for Zimbabwe
  ///
  /// In en, this message translates to:
  /// **'Zimbabwe'**
  String get zimbabwe;
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
