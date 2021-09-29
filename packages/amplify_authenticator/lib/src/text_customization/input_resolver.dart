/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the 'License').
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the 'license' file accompanying this file. This file is distributed
 * on an 'AS IS' BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:amplify_authenticator/src/text_customization/resolver_typedef.dart';

class InputResolver {
  static const _validationMessage = ' field must not be blank';

  /// Title of username field
  StringResolver username_title = (_) => 'Username*';

  /// Hint of username field
  StringResolver username_hint = (_) => 'Enter your username';

  /// Username field is empty validation failure
  StringResolver username_empty = (_) => 'Username $_validationMessage';

  /// Title of password field
  StringResolver password_title = (_) => 'Password*';

  /// Hint of password field
  StringResolver password_hint = (_) => 'Enter your password';

  StringResolver password_confirmation_title = (_) => 'Confirm Password*';

  /// Password field is empty validation failure
  StringResolver password_empty = (_) => 'Password $_validationMessage';

  /// Password requirements not met validation failure
  StringResolver password_requirements_unmet = (_) => 'Passwords must include:';

  /// First part of string describing a password that is too short, to be followed by minimum length
  StringResolver password_at_least = (_) => 'at least';

  /// Second part of string describing a password that is too short, preceeded by by minimum length
  StringResolver password_characters = (_) => 'characters';

  /// Password uppercase character validation failure
  StringResolver password_requires_uppercase = (_) => 'uppercase character(s)';

  /// Password lowercase character validation failure
  StringResolver password_requires_lowercase = (_) => 'lowercase character(s)';

  /// Hint of password confirmation field
  StringResolver password_confirmation_hint = (_) => "Re-enter your password";

  /// Password number character validation failure
  StringResolver password_requires_numbers = (_) => 'numbers(s)';

  /// Password symbol character validation failure
  StringResolver password_requires_symbols = (_) => 'symbols(s)';

  /// Title of email field
  StringResolver email_title = (_) => 'Email*';

  /// Hint of email field
  StringResolver email_hint = (_) => 'Enter your email';

  /// Email field is empty validation failure
  StringResolver email_empty = (_) => 'Email $_validationMessage';

  /// Title of phone number field
  StringResolver phone_number_title = (_) => 'Phone Number*';

  /// Hint of phone number field
  StringResolver phone_number_hint = (_) => 'Enter your phone number';

  /// Phone number field is empty validation failure
  StringResolver phone_number_empty = (_) => 'Phone number $_validationMessage';

  /// Title of verification code field
  StringResolver verification_code_title = (_) => 'Verification code*';

  /// Hint of verification code field
  StringResolver verification_code_hint = (_) => 'Enter your verification code';

  /// Verification code field is empty validation failure
  StringResolver verification_code_empty =
      (_) => 'Verification code $_validationMessage';

  /// Title of field accepting email or phone_number
  StringResolver email_phone_number_title = (_) => 'Email or Phone Number*';

  /// Hint of field accepting email or phone_number
  StringResolver email_phone_number_hint =
      (_) => 'Enter your email or phone number';

  /// Email/phone number field is empty validation failure
  StringResolver email_phone_number_empty =
      (_) => 'Email/phone number $_validationMessage';

  /// Title of address field
  StringResolver address_title = (_) => 'Address*';

  /// Hint of address field
  StringResolver address_hint = (_) => 'Enter your address';

  /// Address field is empty validation failure
  StringResolver address_empty = (_) => 'Address $_validationMessage';

  /// Title of birthdate field
  StringResolver birthdate_title = (_) => 'Birthdate*';

  /// Hint of birthdate field
  StringResolver birthdate_hint = (_) => 'Enter your birthdate';

  /// Address field is empty validation failure
  StringResolver birthdate_empty = (_) => 'Birthdate $_validationMessage';

  /// Title of family_name field
  StringResolver family_name_title = (_) => 'Family Name*';

  /// Hint of family_name field
  StringResolver family_name_hint = (_) => 'Enter your family name';

  /// Family name field is empty validation failure
  StringResolver family_name_empty = (_) => 'Family name $_validationMessage';

  /// Title of middle_name field
  StringResolver middle_name_title = (_) => 'Middle Name*';

  /// Hint of middle_name field
  StringResolver middle_name_hint = (_) => 'Enter your middle name';

  /// Middle name field is empty validation failure
  StringResolver middle_name_empty = (_) => 'Middle name $_validationMessage';

  /// Title of gender field
  StringResolver gender_title = (_) => 'Gender*';

  /// Hint of gender field
  StringResolver gender_hint = (_) => 'Enter your gender';

  /// Gender field is empty validation failure
  StringResolver gender_empty = (_) => 'Gender $_validationMessage';

  /// Title of locale field
  StringResolver locale_title = (_) => 'Locale*';

  /// Hint of locale field
  StringResolver locale_hint = (_) => 'Enter your locale';

  /// Locale field is empty validation failure
  StringResolver locale_empty = (_) => 'Locale $_validationMessage';

  /// Title of given_name field
  StringResolver given_name_title = (_) => 'Given Name*';

  /// Hint of given_name field
  StringResolver given_name_hint = (_) => 'Enter your given name';

  /// Given name field is empty validation failure
  StringResolver given_name_empty = (_) => 'Given name $_validationMessage';

  /// Title of name field
  StringResolver name_title = (_) => 'Name*';

  /// Hint of name field
  StringResolver name_hint = (_) => 'Enter your name';

  /// Name field is empty validation failure
  StringResolver name_empty = (_) => 'Name $_validationMessage';

  /// Title of nickname field
  StringResolver nickname_title = (_) => 'Nickname*';

  /// Hint of nickname field
  StringResolver nickname_hint = (_) => 'Enter your nickname';

  /// Nickname field is empty validation failure
  StringResolver nickname_empty = (_) => 'Nickname $_validationMessage';

  /// Title of preferred_username_ field
  StringResolver preferred_username_title = (_) => 'Preferred Username*';

  /// Hint of preferred_username_ field
  StringResolver preferred_username_hint =
      (_) => 'Enter your preferred username';

  /// Preferred username field is empty validation failure
  StringResolver preferred_username_empty =
      (_) => 'Preferred username $_validationMessage';

  /// Title of picture field
  StringResolver picture_title = (_) => 'Picture*';

  /// Hint of picture field
  StringResolver picture_hint = (_) => 'Enter the location for your picture';

  /// Picture field is empty validation failure
  StringResolver picture_empty = (_) => 'Picture $_validationMessage';

  /// Title of profile field
  StringResolver profile_title = (_) => 'Profile*';

  /// Hint of profile field
  StringResolver profile_hint = (_) => 'Enter your profile';

  /// Profile field is empty validation failure
  StringResolver profile_empty = (_) => 'Profile $_validationMessage';

  /// Title of updated_at field
  StringResolver updated_at_title = (_) => 'Updated at*';

  /// Hint of updated_at field
  StringResolver updated_at_hint = (_) => 'Enter the last change date';

  /// Updated at field is empty validation failure
  StringResolver updated_at_empty = (_) => 'Updated at $_validationMessage';

  /// Title of website field
  StringResolver website_title = (_) => 'Website*';

  /// Hint of website field
  StringResolver website_hint = (_) => 'Enter your website';

  /// Website field is empty validation failure
  StringResolver website_empty = (_) => 'Website $_validationMessage';

  /// Title of zoneinfo field
  StringResolver zoneinfo_title = (_) => 'ZoneInfo*';

  /// Hint of website field
  StringResolver zoneinfo_hint = (_) => 'Enter your zoneinfo';

  /// Zoneinfo field is empty validation failure
  StringResolver zoneinfo_empty = (_) => 'Zoneinfo $_validationMessage';

  // ignore: public_member_api_docs
  InputResolver(
      {StringResolver? username_title,
      StringResolver? username_hint,
      StringResolver? username_empty,
      StringResolver? password_title,
      StringResolver? password_hint,
      StringResolver? password_empty,
      StringResolver? password_requirements_unmet,
      StringResolver? password_requires_uppercase,
      StringResolver? password_requires_lowercase,
      StringResolver? password_requires_numbers,
      StringResolver? password_requires_symbols,
      StringResolver? email_title,
      StringResolver? email_hint,
      StringResolver? email_empty,
      StringResolver? phone_number_title,
      StringResolver? phone_number_hint,
      StringResolver? phone_number_empty,
      StringResolver? verification_code_title,
      StringResolver? verification_code_hint,
      StringResolver? verification_code_empty,
      StringResolver? email_phone_number_title,
      StringResolver? email_phone_number_hint,
      StringResolver? email_phone_number_empty,
      StringResolver? address_title,
      StringResolver? address_hint,
      StringResolver? address_empty,
      StringResolver? birthdate_title,
      StringResolver? birthdate_hint,
      StringResolver? birthdate_empty,
      StringResolver? family_name_title,
      StringResolver? family_name_hint,
      StringResolver? family_name_empty,
      StringResolver? middle_name_title,
      StringResolver? middle_name_hint,
      StringResolver? middle_name_empty,
      StringResolver? gender_title,
      StringResolver? gender_hint,
      StringResolver? gender_empty,
      StringResolver? locale_title,
      StringResolver? locale_hint,
      StringResolver? locale_empty,
      StringResolver? given_name_title,
      StringResolver? given_name_hint,
      StringResolver? given_name_empty,
      StringResolver? name_title,
      StringResolver? name_hint,
      StringResolver? name_empty,
      StringResolver? nickname_title,
      StringResolver? nickname_hint,
      StringResolver? nickname_empty,
      StringResolver? preferred_username_title,
      StringResolver? preferred_username_hint,
      StringResolver? preferred_username_empty,
      StringResolver? picture_title,
      StringResolver? picture_hint,
      StringResolver? picture_empty,
      StringResolver? profile_title,
      StringResolver? profile_hint,
      StringResolver? profile_empty,
      StringResolver? updated_at_title,
      StringResolver? updated_at_hint,
      StringResolver? updated_at_empty,
      StringResolver? website_title,
      StringResolver? website_hint,
      StringResolver? website_empty,
      StringResolver? zoneinfo_title,
      StringResolver? zoneinfo_hint,
      StringResolver? zoneinfo_empty}) {
    this.username_title = username_title ?? this.username_title;
    this.username_hint = username_hint ?? this.username_hint;
    this.username_empty = username_empty ?? this.username_empty;
    this.password_title = password_title ?? this.password_title;
    this.password_hint = password_hint ?? this.password_hint;
    this.password_empty = password_empty ?? this.password_empty;
    this.password_requirements_unmet =
        password_requirements_unmet ?? this.password_requirements_unmet;
    this.password_requires_lowercase =
        password_requires_lowercase ?? this.password_requires_lowercase;
    this.password_requires_uppercase =
        password_requires_uppercase ?? this.password_requires_uppercase;
    this.password_requires_numbers =
        password_requires_numbers ?? this.password_requires_numbers;
    this.password_requires_symbols =
        password_requires_symbols ?? this.password_requires_symbols;
    this.email_title = email_title ?? this.email_title;
    this.email_hint = email_hint ?? this.email_hint;
    this.phone_number_title = phone_number_title ?? this.phone_number_title;
    this.phone_number_hint = phone_number_hint ?? this.phone_number_hint;
    this.verification_code_title =
        verification_code_title ?? this.verification_code_title;
    this.verification_code_hint =
        verification_code_hint ?? this.verification_code_hint;
    this.email_phone_number_title =
        email_phone_number_title ?? this.email_phone_number_title;
    this.email_phone_number_hint =
        email_phone_number_hint ?? this.email_phone_number_hint;
    this.address_title = address_title ?? this.address_title;
    this.address_hint = address_hint ?? this.address_hint;
    this.birthdate_title = birthdate_title ?? this.birthdate_title;
    this.birthdate_hint = birthdate_hint ?? this.birthdate_hint;
    this.family_name_title = family_name_title ?? this.family_name_title;
    this.family_name_hint = family_name_hint ?? this.family_name_hint;
    this.middle_name_title = middle_name_title ?? this.middle_name_title;
    this.family_name_hint = family_name_hint ?? this.family_name_hint;
    this.gender_title = gender_title ?? this.gender_title;
    this.gender_hint = gender_hint ?? this.gender_hint;
    this.locale_title = locale_title ?? this.locale_title;
    this.locale_hint = locale_hint ?? this.locale_hint;
    this.given_name_title = given_name_title ?? this.given_name_title;
    this.given_name_hint = given_name_hint ?? this.given_name_hint;
    this.name_title = name_title ?? this.name_title;
    this.name_hint = name_hint ?? this.name_hint;
    this.nickname_title = nickname_title ?? this.nickname_title;
    this.nickname_hint = nickname_hint ?? this.nickname_hint;
    this.preferred_username_title =
        preferred_username_title ?? this.preferred_username_title;
    this.preferred_username_hint =
        preferred_username_hint ?? this.preferred_username_hint;
    this.picture_title = picture_title ?? this.picture_title;
    this.picture_hint = picture_hint ?? this.picture_hint;
    this.profile_title = profile_title ?? this.profile_title;
    this.profile_hint = profile_hint ?? this.profile_hint;
    this.updated_at_title = updated_at_title ?? this.updated_at_title;
    this.updated_at_hint = updated_at_hint ?? this.updated_at_hint;
    this.website_title = website_title ?? this.website_title;
    this.website_hint = website_hint ?? this.website_hint;
    this.zoneinfo_title = zoneinfo_title ?? this.zoneinfo_title;
    this.zoneinfo_hint = zoneinfo_hint ?? this.zoneinfo_hint;
  }
}
