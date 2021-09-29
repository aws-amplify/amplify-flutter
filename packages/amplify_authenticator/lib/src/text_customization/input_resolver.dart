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

import 'package:amplify_authenticator/src/text_customization/resolver.dart';
import 'package:flutter/material.dart';

enum InputResolverKey {
  username_title,
  username_hint,
  username_empty,
  password_title,
  password_hint,
  password_confirmation_title,
  password_empty,
  password_requirements_unmet,
  password_at_least,
  password_characters,
  password_requires_uppercase,
  password_requires_lowercase,
  password_confirmation_hint,
  password_requires_numbers,
  password_requires_symbols,
  email_title,
  email_hint,
  email_empty,
  phone_number_title,
  phone_number_hint,
  phone_number_empty,
  verification_code_title,
  verification_code_hint,
  verification_code_empty,
  email_phone_number_title,
  email_phone_number_hint,
  email_phone_number_empty,
  address_title,
  address_hint,
  address_empty,
  birthdate_title,
  birthdate_hint,
  birthdate_empty,
  family_name_title,
  family_name_hint,
  family_name_empty,
  middle_name_title,
  middle_name_hint,
  middle_name_empty,
  gender_title,
  gender_hint,
  gender_empty,
  locale_title,
  locale_hint,
  locale_empty,
  given_name_title,
  given_name_hint,
  given_name_empty,
  name_title,
  name_hint,
  name_empty,
  nickname_title,
  nickname_hint,
  nickname_empty,
  preferred_username_title,
  preferred_username_hint,
  preferred_username_empty,
  picture_title,
  picture_hint,
  picture_empty,
  profile_title,
  profile_hint,
  profile_empty,
  updated_at_title,
  updated_at_hint,
  updated_at_empty,
  website_title,
  website_hint,
  website_empty,
  zoneinfo_title,
  zoneinfo_hint,
  zoneinfo_empty,
}

abstract class InputResolver extends Resolver<InputResolverKey> {
  const InputResolver();

  /// Title of username field
  String username_title(BuildContext context);

  /// Hint of username field
  String username_hint(BuildContext context);

  /// Username field is empty validation failure
  String username_empty(BuildContext context);

  /// Title of password field
  String password_title(BuildContext context);

  /// Hint of password field
  String password_hint(BuildContext context);

  /// Title of confirm password field
  String password_confirmation_title(BuildContext context);

  /// Password field is empty validation failure
  String password_empty(BuildContext context);

  /// Password requirements not met validation failure
  String password_requirements_unmet(BuildContext context);

  /// First part of string describing a password that is too short, to be followed by minimum length
  String password_at_least(BuildContext context);

  /// Second part of string describing a password that is too short, preceeded by by minimum length
  String password_characters(BuildContext context);

  /// Password uppercase character validation failure
  String password_requires_uppercase(BuildContext context);

  /// Password lowercase character validation failure
  String password_requires_lowercase(BuildContext context);

  /// Hint of password confirmation field
  String password_confirmation_hint(BuildContext context);

  /// Password number character validation failure
  String password_requires_numbers(BuildContext context);

  /// Password symbol character validation failure
  String password_requires_symbols(BuildContext context);

  /// Title of email field
  String email_title(BuildContext context);

  /// Hint of email field
  String email_hint(BuildContext context);

  /// Email field is empty validation failure
  String email_empty(BuildContext context);

  /// Title of phone number field
  String phone_number_title(BuildContext context);

  /// Hint of phone number field
  String phone_number_hint(BuildContext context);

  /// Phone number field is empty validation failure
  String phone_number_empty(BuildContext context);

  /// Title of verification code field
  String verification_code_title(BuildContext context);

  /// Hint of verification code field
  String verification_code_hint(BuildContext context);

  /// Verification code field is empty validation failure
  String verification_code_empty(BuildContext context);

  /// Title of field accepting email or phone_number
  String email_phone_number_title(BuildContext context);

  /// Hint of field accepting email or phone_number
  String email_phone_number_hint(BuildContext context);

  /// Email/phone number field is empty validation failure
  String email_phone_number_empty(BuildContext context);

  /// Title of address field
  String address_title(BuildContext context);

  /// Hint of address field
  String address_hint(BuildContext context);

  /// Address field is empty validation failure
  String address_empty(BuildContext context);

  /// Title of birthdate field
  String birthdate_title(BuildContext context);

  /// Hint of birthdate field
  String birthdate_hint(BuildContext context);

  /// Address field is empty validation failure
  String birthdate_empty(BuildContext context);

  /// Title of family_name field
  String family_name_title(BuildContext context);

  /// Hint of family_name field
  String family_name_hint(BuildContext context);

  /// Family name field is empty validation failure
  String family_name_empty(BuildContext context);

  /// Title of middle_name field
  String middle_name_title(BuildContext context);

  /// Hint of middle_name field
  String middle_name_hint(BuildContext context);

  /// Middle name field is empty validation failure
  String middle_name_empty(BuildContext context);

  /// Title of gender field
  String gender_title(BuildContext context);

  /// Hint of gender field
  String gender_hint(BuildContext context);

  /// Gender field is empty validation failure
  String gender_empty(BuildContext context);

  /// Title of locale field
  String locale_title(BuildContext context);

  /// Hint of locale field
  String locale_hint(BuildContext context);

  /// Locale field is empty validation failure
  String locale_empty(BuildContext context);

  /// Title of given_name field
  String given_name_title(BuildContext context);

  /// Hint of given_name field
  String given_name_hint(BuildContext context);

  /// Given name field is empty validation failure
  String given_name_empty(BuildContext context);

  /// Title of name field
  String name_title(BuildContext context);

  /// Hint of name field
  String name_hint(BuildContext context);

  /// Name field is empty validation failure
  String name_empty(BuildContext context);

  /// Title of nickname field
  String nickname_title(BuildContext context);

  /// Hint of nickname field
  String nickname_hint(BuildContext context);

  /// Nickname field is empty validation failure
  String nickname_empty(BuildContext context);

  /// Title of preferred_username_ field
  String preferred_username_title(BuildContext context);

  /// Hint of preferred_username_ field
  String preferred_username_hint(BuildContext context);

  /// Preferred username field is empty validation failure
  String preferred_username_empty(BuildContext context);

  /// Title of picture field
  String picture_title(BuildContext context);

  /// Hint of picture field
  String picture_hint(BuildContext context);

  /// Picture field is empty validation failure
  String picture_empty(BuildContext context);

  /// Title of profile field
  String profile_title(BuildContext context);

  /// Hint of profile field
  String profile_hint(BuildContext context);

  /// Profile field is empty validation failure
  String profile_empty(BuildContext context);

  /// Title of updated_at field
  String updated_at_title(BuildContext context);

  /// Hint of updated_at field
  String updated_at_hint(BuildContext context);

  /// Updated at field is empty validation failure
  String updated_at_empty(BuildContext context);

  /// Title of website field
  String website_title(BuildContext context);

  /// Hint of website field
  String website_hint(BuildContext context);

  /// Website field is empty validation failure
  String website_empty(BuildContext context);

  /// Title of zoneinfo field
  String zoneinfo_title(BuildContext context);

  /// Hint of website field
  String zoneinfo_hint(BuildContext context);

  /// Zoneinfo field is empty validation failure
  String zoneinfo_empty(BuildContext context);

  @override
  String resolve(BuildContext context, InputResolverKey key) {
    switch (key) {
      case InputResolverKey.username_title:
        return username_title(context);
      case InputResolverKey.username_hint:
        return username_hint(context);
      case InputResolverKey.username_empty:
        return username_empty(context);
      case InputResolverKey.password_title:
        return password_title(context);
      case InputResolverKey.password_hint:
        return password_hint(context);
      case InputResolverKey.password_confirmation_title:
        return password_confirmation_title(context);
      case InputResolverKey.password_empty:
        return password_empty(context);
      case InputResolverKey.password_requirements_unmet:
        return password_requirements_unmet(context);
      case InputResolverKey.password_at_least:
        return password_at_least(context);
      case InputResolverKey.password_characters:
        return password_characters(context);
      case InputResolverKey.password_requires_uppercase:
        return password_requires_uppercase(context);
      case InputResolverKey.password_requires_lowercase:
        return password_requires_lowercase(context);
      case InputResolverKey.password_confirmation_hint:
        return password_confirmation_hint(context);
      case InputResolverKey.password_requires_numbers:
        return password_requires_numbers(context);
      case InputResolverKey.password_requires_symbols:
        return password_requires_symbols(context);
      case InputResolverKey.email_title:
        return email_title(context);
      case InputResolverKey.email_hint:
        return email_hint(context);
      case InputResolverKey.email_empty:
        return email_empty(context);
      case InputResolverKey.phone_number_title:
        return phone_number_title(context);
      case InputResolverKey.phone_number_hint:
        return phone_number_hint(context);
      case InputResolverKey.phone_number_empty:
        return phone_number_empty(context);
      case InputResolverKey.verification_code_title:
        return verification_code_title(context);
      case InputResolverKey.verification_code_hint:
        return verification_code_hint(context);
      case InputResolverKey.verification_code_empty:
        return verification_code_empty(context);
      case InputResolverKey.email_phone_number_title:
        return email_phone_number_title(context);
      case InputResolverKey.email_phone_number_hint:
        return email_phone_number_hint(context);
      case InputResolverKey.email_phone_number_empty:
        return email_phone_number_empty(context);
      case InputResolverKey.address_title:
        return address_title(context);
      case InputResolverKey.address_hint:
        return address_hint(context);
      case InputResolverKey.address_empty:
        return address_empty(context);
      case InputResolverKey.birthdate_title:
        return birthdate_title(context);
      case InputResolverKey.birthdate_hint:
        return birthdate_hint(context);
      case InputResolverKey.birthdate_empty:
        return birthdate_empty(context);
      case InputResolverKey.family_name_title:
        return family_name_title(context);
      case InputResolverKey.family_name_hint:
        return family_name_hint(context);
      case InputResolverKey.family_name_empty:
        return family_name_empty(context);
      case InputResolverKey.middle_name_title:
        return middle_name_title(context);
      case InputResolverKey.middle_name_hint:
        return middle_name_hint(context);
      case InputResolverKey.middle_name_empty:
        return middle_name_empty(context);
      case InputResolverKey.gender_title:
        return gender_title(context);
      case InputResolverKey.gender_hint:
        return gender_hint(context);
      case InputResolverKey.gender_empty:
        return gender_empty(context);
      case InputResolverKey.locale_title:
        return locale_title(context);
      case InputResolverKey.locale_hint:
        return locale_hint(context);
      case InputResolverKey.locale_empty:
        return locale_empty(context);
      case InputResolverKey.given_name_title:
        return given_name_title(context);
      case InputResolverKey.given_name_hint:
        return given_name_hint(context);
      case InputResolverKey.given_name_empty:
        return given_name_empty(context);
      case InputResolverKey.name_title:
        return name_title(context);
      case InputResolverKey.name_hint:
        return name_hint(context);
      case InputResolverKey.name_empty:
        return name_empty(context);
      case InputResolverKey.nickname_title:
        return nickname_title(context);
      case InputResolverKey.nickname_hint:
        return nickname_hint(context);
      case InputResolverKey.nickname_empty:
        return nickname_empty(context);
      case InputResolverKey.preferred_username_title:
        return preferred_username_title(context);
      case InputResolverKey.preferred_username_hint:
        return preferred_username_hint(context);
      case InputResolverKey.preferred_username_empty:
        return preferred_username_empty(context);
      case InputResolverKey.picture_title:
        return picture_title(context);
      case InputResolverKey.picture_hint:
        return picture_hint(context);
      case InputResolverKey.picture_empty:
        return picture_empty(context);
      case InputResolverKey.profile_title:
        return profile_title(context);
      case InputResolverKey.profile_hint:
        return profile_hint(context);
      case InputResolverKey.profile_empty:
        return profile_empty(context);
      case InputResolverKey.updated_at_title:
        return updated_at_title(context);
      case InputResolverKey.updated_at_hint:
        return updated_at_hint(context);
      case InputResolverKey.updated_at_empty:
        return updated_at_empty(context);
      case InputResolverKey.website_title:
        return website_title(context);
      case InputResolverKey.website_hint:
        return website_hint(context);
      case InputResolverKey.website_empty:
        return website_empty(context);
      case InputResolverKey.zoneinfo_title:
        return zoneinfo_title(context);
      case InputResolverKey.zoneinfo_hint:
        return zoneinfo_hint(context);
      case InputResolverKey.zoneinfo_empty:
        return zoneinfo_empty(context);
    }
  }
}

class DefaultInputResolver extends InputResolver {
  static const _validationMessage = ' field must not be blank';

  const DefaultInputResolver();

  @override
  String username_title(BuildContext context) => 'Username*';

  @override
  String username_hint(BuildContext context) => 'Enter your username';

  @override
  String username_empty(BuildContext context) => 'Username $_validationMessage';

  @override
  String password_title(BuildContext context) => 'Password*';

  @override
  String password_hint(BuildContext context) => 'Enter your password';

  String password_confirmation_title(BuildContext context) =>
      'Confirm Password*';

  @override
  String password_empty(BuildContext context) => 'Password $_validationMessage';

  @override
  String password_requirements_unmet(BuildContext context) =>
      'Passwords must include:';

  @override
  String password_at_least(BuildContext context) => 'at least';

  @override
  String password_characters(BuildContext context) => 'characters';

  @override
  String password_requires_uppercase(BuildContext context) =>
      'uppercase character(s)';

  @override
  String password_requires_lowercase(BuildContext context) =>
      'lowercase character(s)';

  @override
  String password_confirmation_hint(BuildContext context) =>
      "Re-enter your password";

  @override
  String password_requires_numbers(BuildContext context) => 'numbers(s)';

  @override
  String password_requires_symbols(BuildContext context) => 'symbols(s)';

  @override
  String email_title(BuildContext context) => 'Email*';

  @override
  String email_hint(BuildContext context) => 'Enter your email';

  @override
  String email_empty(BuildContext context) => 'Email $_validationMessage';

  @override
  String phone_number_title(BuildContext context) => 'Phone Number*';

  @override
  String phone_number_hint(BuildContext context) => 'Enter your phone number';

  @override
  String phone_number_empty(BuildContext context) =>
      'Phone number $_validationMessage';

  @override
  String verification_code_title(BuildContext context) => 'Verification code*';

  @override
  String verification_code_hint(BuildContext context) =>
      'Enter your verification code';

  @override
  String verification_code_empty(BuildContext context) =>
      'Verification code $_validationMessage';

  @override
  String email_phone_number_title(BuildContext context) =>
      'Email or Phone Number*';

  @override
  String email_phone_number_hint(BuildContext context) =>
      'Enter your email or phone number';

  @override
  String email_phone_number_empty(BuildContext context) =>
      'Email/phone number $_validationMessage';

  @override
  String address_title(BuildContext context) => 'Address*';

  @override
  String address_hint(BuildContext context) => 'Enter your address';

  @override
  String address_empty(BuildContext context) => 'Address $_validationMessage';

  @override
  String birthdate_title(BuildContext context) => 'Birthdate*';

  @override
  String birthdate_hint(BuildContext context) => 'Enter your birthdate';

  @override
  String birthdate_empty(BuildContext context) =>
      'Birthdate $_validationMessage';

  @override
  String family_name_title(BuildContext context) => 'Family Name*';

  @override
  String family_name_hint(BuildContext context) => 'Enter your family name';

  @override
  String family_name_empty(BuildContext context) =>
      'Family name $_validationMessage';

  @override
  String middle_name_title(BuildContext context) => 'Middle Name*';

  @override
  String middle_name_hint(BuildContext context) => 'Enter your middle name';

  @override
  String middle_name_empty(BuildContext context) =>
      'Middle name $_validationMessage';

  @override
  String gender_title(BuildContext context) => 'Gender*';

  @override
  String gender_hint(BuildContext context) => 'Enter your gender';

  @override
  String gender_empty(BuildContext context) => 'Gender $_validationMessage';

  @override
  String locale_title(BuildContext context) => 'Locale*';

  @override
  String locale_hint(BuildContext context) => 'Enter your locale';

  @override
  String locale_empty(BuildContext context) => 'Locale $_validationMessage';

  @override
  String given_name_title(BuildContext context) => 'Given Name*';

  @override
  String given_name_hint(BuildContext context) => 'Enter your given name';

  @override
  String given_name_empty(BuildContext context) =>
      'Given name $_validationMessage';

  @override
  String name_title(BuildContext context) => 'Name*';

  @override
  String name_hint(BuildContext context) => 'Enter your name';

  @override
  String name_empty(BuildContext context) => 'Name $_validationMessage';

  @override
  String nickname_title(BuildContext context) => 'Nickname*';

  @override
  String nickname_hint(BuildContext context) => 'Enter your nickname';

  @override
  String nickname_empty(BuildContext context) => 'Nickname $_validationMessage';

  @override
  String preferred_username_title(BuildContext context) =>
      'Preferred Username*';

  @override
  String preferred_username_hint(BuildContext context) =>
      'Enter your preferred username';

  @override
  String preferred_username_empty(BuildContext context) =>
      'Preferred username $_validationMessage';

  @override
  String picture_title(BuildContext context) => 'Picture*';

  @override
  String picture_hint(BuildContext context) =>
      'Enter the location for your picture';

  @override
  String picture_empty(BuildContext context) => 'Picture $_validationMessage';

  @override
  String profile_title(BuildContext context) => 'Profile*';

  @override
  String profile_hint(BuildContext context) => 'Enter your profile';

  @override
  String profile_empty(BuildContext context) => 'Profile $_validationMessage';

  @override
  String updated_at_title(BuildContext context) => 'Updated at*';

  @override
  String updated_at_hint(BuildContext context) => 'Enter the last change date';

  @override
  String updated_at_empty(BuildContext context) =>
      'Updated at $_validationMessage';

  @override
  String website_title(BuildContext context) => 'Website*';

  @override
  String website_hint(BuildContext context) => 'Enter your website';

  @override
  String website_empty(BuildContext context) => 'Website $_validationMessage';

  @override
  String zoneinfo_title(BuildContext context) => 'ZoneInfo*';

  @override
  String zoneinfo_hint(BuildContext context) => 'Enter your zoneinfo';

  @override
  String zoneinfo_empty(BuildContext context) => 'Zoneinfo $_validationMessage';
}
