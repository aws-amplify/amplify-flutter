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
  usernameTitle,
  usernameHint,
  usernameEmpty,
  passwordTitle,
  passwordHint,
  passwordEmpty,
  passwordConfirmationTitle,
  passwordConfirmationHint,
  passwordRequirementsUnmet,
  passwordAtLeast,
  passwordCharacters,
  passwordRequiresUppercase,
  passwordRequiresLowercase,
  passwordRequiresNumbers,
  passwordRequiresSymbols,
  emailTitle,
  emailHint,
  emailEmpty,
  phoneNumberTitle,
  phoneNumberHint,
  phoneNumberEmpty,
  verificationCodeTitle,
  verificationCodeHint,
  verificationCodeEmpty,
  emailPhoneNumberTitle,
  emailPhoneNumberHint,
  emailPhoneNumberEmpty,
  addressTitle,
  addressHint,
  addressEmpty,
  birthdateTitle,
  birthdateHint,
  birthdateEmpty,
  familyNameTitle,
  familyNameHint,
  familyNameEmpty,
  middleNameTitle,
  middleNameHint,
  middleNameEmpty,
  genderTitle,
  genderHint,
  genderEmpty,
  localeTitle,
  localeHint,
  localeEmpty,
  givenNameTitle,
  givenNameHint,
  givenNameEmpty,
  nameTitle,
  nameHint,
  nameEmpty,
  nicknameTitle,
  nicknameHint,
  nicknameEmpty,
  preferredUsernameTitle,
  preferredUsernameHint,
  preferredUsernameEmpty,
  pictureTitle,
  pictureHint,
  pictureEmpty,
  profileTitle,
  profileHint,
  profileEmpty,
  updatedAtTitle,
  updatedAtHint,
  updatedAtEmpty,
  websiteTitle,
  websiteHint,
  websiteEmpty,
  zoneinfoTitle,
  zoneinfoHint,
  zoneinfoEmpty,
}

abstract class InputResolver extends Resolver<InputResolverKey> {
  const InputResolver();

  /// Title of username field
  String usernameTitle(BuildContext context);

  /// Hint of username field
  String usernameHint(BuildContext context);

  /// Username field is empty validation failure
  String usernameEmpty(BuildContext context);

  /// Title of password field
  String passwordTitle(BuildContext context);

  /// Hint of password field
  String passwordHint(BuildContext context);

  /// Title of confirm password field
  String passwordConfirmationTitle(BuildContext context);

  /// Hint of password confirmation field
  String passwordConfirmationHint(BuildContext context);

  /// Password field is empty validation failure
  String passwordEmpty(BuildContext context);

  /// Password requirements not met validation failure
  String passwordRequirementsUnmet(BuildContext context);

  /// First part of string describing a password that is too short, to be followed by minimum length
  String passwordAtLeast(BuildContext context);

  /// Second part of string describing a password that is too short, preceeded by by minimum length
  String passwordCharacters(BuildContext context);

  /// First part of string describing a password that is too short, to be followed by minimum length
  StringResolver password_at_least = (_) => 'at least';

  /// Second part of string describing a password that is too short, preceeded by by minimum length
  StringResolver password_characters = (_) => 'characters';

  /// Password uppercase character validation failure
  String passwordRequiresUppercase(BuildContext context);

  /// Password lowercase character validation failure
  String passwordRequiresLowercase(BuildContext context);

  /// Password number character validation failure
  String passwordRequiresNumbers(BuildContext context);

  /// Password symbol character validation failure
  String passwordRequiresSymbols(BuildContext context);

  /// Password number character validation failure
  StringResolver password_requires_numbers = (_) => 'numbers(s)';

  /// Password symbol character validation failure
  StringResolver password_requires_symbols = (_) => 'symbols(s)';

  /// Title of email field
  String emailTitle(BuildContext context);

  /// Hint of email field
  String emailHint(BuildContext context);

  /// Email field is empty validation failure
  String emailEmpty(BuildContext context);

  /// Title of phone number field
  String phoneNumberTitle(BuildContext context);

  /// Hint of phone number field
  String phoneNumberHint(BuildContext context);

  /// Phone number field is empty validation failure
  String phoneNumberEmpty(BuildContext context);

  /// Title of verification code field
  String verificationCodeTitle(BuildContext context);

  /// Hint of verification code field
  String verificationCodeHint(BuildContext context);

  /// Verification code field is empty validation failure
  String verificationCodeEmpty(BuildContext context);

  /// Title of field accepting email or phone_number
  String emailPhoneNumberTitle(BuildContext context);

  /// Hint of field accepting email or phone_number
  String emailPhoneNumberHint(BuildContext context);

  /// Email/phone number field is empty validation failure
  String emailPhoneNumberEmpty(BuildContext context);

  /// Title of address field
  String addressTitle(BuildContext context);

  /// Hint of address field
  String addressHint(BuildContext context);

  /// Address field is empty validation failure
  String addressEmpty(BuildContext context);

  /// Title of birthdate field
  String birthdateTitle(BuildContext context);

  /// Hint of birthdate field
  String birthdateHint(BuildContext context);

  /// Address field is empty validation failure
  String birthdateEmpty(BuildContext context);

  /// Title of family_name field
  String familyNameTitle(BuildContext context);

  /// Hint of family_name field
  String familyNameHint(BuildContext context);

  /// Family name field is empty validation failure
  String familyNameEmpty(BuildContext context);

  /// Title of middle_name field
  String middleNameTitle(BuildContext context);

  /// Hint of middle_name field
  String middleNameHint(BuildContext context);

  /// Middle name field is empty validation failure
  String middleNameEmpty(BuildContext context);

  /// Title of gender field
  String genderTitle(BuildContext context);

  /// Hint of gender field
  String genderHint(BuildContext context);

  /// Gender field is empty validation failure
  String genderEmpty(BuildContext context);

  /// Title of locale field
  String localeTitle(BuildContext context);

  /// Hint of locale field
  String localeHint(BuildContext context);

  /// Locale field is empty validation failure
  String localeEmpty(BuildContext context);

  /// Title of given_name field
  String givenNameTitle(BuildContext context);

  /// Hint of given_name field
  String givenNameHint(BuildContext context);

  /// Given name field is empty validation failure
  String givenNameEmpty(BuildContext context);

  /// Title of name field
  String nameTitle(BuildContext context);

  /// Hint of name field
  String nameHint(BuildContext context);

  /// Name field is empty validation failure
  String nameEmpty(BuildContext context);

  /// Title of nickname field
  String nicknameTitle(BuildContext context);

  /// Hint of nickname field
  String nicknameHint(BuildContext context);

  /// Nickname field is empty validation failure
  String nicknameEmpty(BuildContext context);

  /// Title of preferred_username_ field
  String preferredUsernameTitle(BuildContext context);

  /// Hint of preferred_username_ field
  String preferredUsernameHint(BuildContext context);

  /// Preferred username field is empty validation failure
  String preferredUsernameEmpty(BuildContext context);

  /// Title of picture field
  String pictureTitle(BuildContext context);

  /// Hint of picture field
  String pictureHint(BuildContext context);

  /// Picture field is empty validation failure
  String pictureEmpty(BuildContext context);

  /// Title of profile field
  String profileTitle(BuildContext context);

  /// Hint of profile field
  String profileHint(BuildContext context);

  /// Profile field is empty validation failure
  String profileEmpty(BuildContext context);

  /// Title of updated_at field
  String updatedAtTitle(BuildContext context);

  /// Hint of updated_at field
  String updatedAtHint(BuildContext context);

  /// Updated at field is empty validation failure
  String updatedAtEmpty(BuildContext context);

  /// Title of website field
  String websiteTitle(BuildContext context);

  /// Hint of website field
  String websiteHint(BuildContext context);

  /// Website field is empty validation failure
  String websiteEmpty(BuildContext context);

  /// Title of zoneinfo field
  String zoneinfoTitle(BuildContext context);

  /// Hint of website field
  String zoneinfoHint(BuildContext context);

  /// Zoneinfo field is empty validation failure
  String zoneinfoEmpty(BuildContext context);

  @override
  String resolve(BuildContext context, InputResolverKey key) {
    switch (key) {
      case InputResolverKey.usernameTitle:
        return usernameTitle(context);
      case InputResolverKey.usernameHint:
        return usernameHint(context);
      case InputResolverKey.usernameEmpty:
        return usernameEmpty(context);
      case InputResolverKey.passwordTitle:
        return passwordTitle(context);
      case InputResolverKey.passwordHint:
        return passwordHint(context);
      case InputResolverKey.passwordEmpty:
        return passwordEmpty(context);
      case InputResolverKey.passwordConfirmationTitle:
        return passwordConfirmationTitle(context);
      case InputResolverKey.passwordConfirmationHint:
        return passwordConfirmationHint(context);
      case InputResolverKey.passwordRequirementsUnmet:
        return passwordRequirementsUnmet(context);
      case InputResolverKey.passwordAtLeast:
        return passwordAtLeast(context);
      case InputResolverKey.passwordCharacters:
        return passwordCharacters(context);
      case InputResolverKey.passwordRequiresUppercase:
        return passwordRequiresUppercase(context);
      case InputResolverKey.passwordRequiresLowercase:
        return passwordRequiresLowercase(context);
      case InputResolverKey.passwordRequiresNumbers:
        return passwordRequiresNumbers(context);
      case InputResolverKey.passwordRequiresSymbols:
        return passwordRequiresSymbols(context);
      case InputResolverKey.emailTitle:
        return emailTitle(context);
      case InputResolverKey.emailHint:
        return emailHint(context);
      case InputResolverKey.emailEmpty:
        return emailEmpty(context);
      case InputResolverKey.phoneNumberTitle:
        return phoneNumberTitle(context);
      case InputResolverKey.phoneNumberHint:
        return phoneNumberHint(context);
      case InputResolverKey.phoneNumberEmpty:
        return phoneNumberEmpty(context);
      case InputResolverKey.verificationCodeTitle:
        return verificationCodeTitle(context);
      case InputResolverKey.verificationCodeHint:
        return verificationCodeHint(context);
      case InputResolverKey.verificationCodeEmpty:
        return verificationCodeEmpty(context);
      case InputResolverKey.emailPhoneNumberTitle:
        return emailPhoneNumberTitle(context);
      case InputResolverKey.emailPhoneNumberHint:
        return emailPhoneNumberHint(context);
      case InputResolverKey.emailPhoneNumberEmpty:
        return emailPhoneNumberEmpty(context);
      case InputResolverKey.addressTitle:
        return addressTitle(context);
      case InputResolverKey.addressHint:
        return addressHint(context);
      case InputResolverKey.addressEmpty:
        return addressEmpty(context);
      case InputResolverKey.birthdateTitle:
        return birthdateTitle(context);
      case InputResolverKey.birthdateHint:
        return birthdateHint(context);
      case InputResolverKey.birthdateEmpty:
        return birthdateEmpty(context);
      case InputResolverKey.familyNameTitle:
        return familyNameTitle(context);
      case InputResolverKey.familyNameHint:
        return familyNameHint(context);
      case InputResolverKey.familyNameEmpty:
        return familyNameEmpty(context);
      case InputResolverKey.middleNameTitle:
        return middleNameTitle(context);
      case InputResolverKey.middleNameHint:
        return middleNameHint(context);
      case InputResolverKey.middleNameEmpty:
        return middleNameEmpty(context);
      case InputResolverKey.genderTitle:
        return genderTitle(context);
      case InputResolverKey.genderHint:
        return genderHint(context);
      case InputResolverKey.genderEmpty:
        return genderEmpty(context);
      case InputResolverKey.localeTitle:
        return localeTitle(context);
      case InputResolverKey.localeHint:
        return localeHint(context);
      case InputResolverKey.localeEmpty:
        return localeEmpty(context);
      case InputResolverKey.givenNameTitle:
        return givenNameTitle(context);
      case InputResolverKey.givenNameHint:
        return givenNameHint(context);
      case InputResolverKey.givenNameEmpty:
        return givenNameEmpty(context);
      case InputResolverKey.nameTitle:
        return nameTitle(context);
      case InputResolverKey.nameHint:
        return nameHint(context);
      case InputResolverKey.nameEmpty:
        return nameEmpty(context);
      case InputResolverKey.nicknameTitle:
        return nicknameTitle(context);
      case InputResolverKey.nicknameHint:
        return nicknameHint(context);
      case InputResolverKey.nicknameEmpty:
        return nicknameEmpty(context);
      case InputResolverKey.preferredUsernameTitle:
        return preferredUsernameTitle(context);
      case InputResolverKey.preferredUsernameHint:
        return preferredUsernameHint(context);
      case InputResolverKey.preferredUsernameEmpty:
        return preferredUsernameEmpty(context);
      case InputResolverKey.pictureTitle:
        return pictureTitle(context);
      case InputResolverKey.pictureHint:
        return pictureHint(context);
      case InputResolverKey.pictureEmpty:
        return pictureEmpty(context);
      case InputResolverKey.profileTitle:
        return profileTitle(context);
      case InputResolverKey.profileHint:
        return profileHint(context);
      case InputResolverKey.profileEmpty:
        return profileEmpty(context);
      case InputResolverKey.updatedAtTitle:
        return updatedAtTitle(context);
      case InputResolverKey.updatedAtHint:
        return updatedAtHint(context);
      case InputResolverKey.updatedAtEmpty:
        return updatedAtEmpty(context);
      case InputResolverKey.websiteTitle:
        return websiteTitle(context);
      case InputResolverKey.websiteHint:
        return websiteHint(context);
      case InputResolverKey.websiteEmpty:
        return websiteEmpty(context);
      case InputResolverKey.zoneinfoTitle:
        return zoneinfoTitle(context);
      case InputResolverKey.zoneinfoHint:
        return zoneinfoHint(context);
      case InputResolverKey.zoneinfoEmpty:
        return zoneinfoEmpty(context);
    }
  }
}

class DefaultInputResolver extends InputResolver {
  static const _validationMessage = ' field must not be blank';

  const DefaultInputResolver();

  @override
  String usernameTitle(BuildContext context) => 'Username*';

  @override
  String usernameHint(BuildContext context) => 'Enter your username';

  @override
  String usernameEmpty(BuildContext context) => 'Username $_validationMessage';

  @override
  String passwordTitle(BuildContext context) => 'Password*';

  @override
  String passwordHint(BuildContext context) => 'Enter your password';

  @override
  String passwordConfirmationTitle(BuildContext context) => 'Confirm Password*';

  @override
  String passwordConfirmationHint(BuildContext context) =>
      'Re-enter your password';

  @override
  String passwordEmpty(BuildContext context) => 'Password $_validationMessage';

  @override
  String passwordRequirementsUnmet(BuildContext context) =>
      'Passwords must include:';

  @override
  String passwordAtLeast(BuildContext context) => 'at least';

  @override
  String passwordCharacters(BuildContext context) => 'characters';

  @override
  String passwordRequiresUppercase(BuildContext context) =>
      'uppercase character(s)';

  @override
  String passwordRequiresLowercase(BuildContext context) =>
      'lowercase character(s)';

  @override
  String passwordRequiresNumbers(BuildContext context) => 'numbers(s)';

  @override
  String passwordRequiresSymbols(BuildContext context) => 'symbols(s)';

  @override
  String emailTitle(BuildContext context) => 'Email*';

  @override
  String emailHint(BuildContext context) => 'Enter your email';

  @override
  String emailEmpty(BuildContext context) => 'Email $_validationMessage';

  @override
  String phoneNumberTitle(BuildContext context) => 'Phone Number*';

  @override
  String phoneNumberHint(BuildContext context) => 'Enter your phone number';

  @override
  String phoneNumberEmpty(BuildContext context) =>
      'Phone number $_validationMessage';

  @override
  String verificationCodeTitle(BuildContext context) => 'Verification code*';

  @override
  String verificationCodeHint(BuildContext context) =>
      'Enter your verification code';

  @override
  String verificationCodeEmpty(BuildContext context) =>
      'Verification code $_validationMessage';

  @override
  String emailPhoneNumberTitle(BuildContext context) =>
      'Email or Phone Number*';

  @override
  String emailPhoneNumberHint(BuildContext context) =>
      'Enter your email or phone number';

  @override
  String emailPhoneNumberEmpty(BuildContext context) =>
      'Email/phone number $_validationMessage';

  @override
  String addressTitle(BuildContext context) => 'Address*';

  @override
  String addressHint(BuildContext context) => 'Enter your address';

  @override
  String addressEmpty(BuildContext context) => 'Address $_validationMessage';

  @override
  String birthdateTitle(BuildContext context) => 'Birthdate*';

  @override
  String birthdateHint(BuildContext context) => 'Enter your birthdate';

  @override
  String birthdateEmpty(BuildContext context) =>
      'Birthdate $_validationMessage';

  @override
  String familyNameTitle(BuildContext context) => 'Family Name*';

  @override
  String familyNameHint(BuildContext context) => 'Enter your family name';

  @override
  String familyNameEmpty(BuildContext context) =>
      'Family name $_validationMessage';

  @override
  String middleNameTitle(BuildContext context) => 'Middle Name*';

  @override
  String middleNameHint(BuildContext context) => 'Enter your middle name';

  @override
  String middleNameEmpty(BuildContext context) =>
      'Middle name $_validationMessage';

  @override
  String genderTitle(BuildContext context) => 'Gender*';

  @override
  String genderHint(BuildContext context) => 'Enter your gender';

  @override
  String genderEmpty(BuildContext context) => 'Gender $_validationMessage';

  @override
  String localeTitle(BuildContext context) => 'Locale*';

  @override
  String localeHint(BuildContext context) => 'Enter your locale';

  @override
  String localeEmpty(BuildContext context) => 'Locale $_validationMessage';

  @override
  String givenNameTitle(BuildContext context) => 'Given Name*';

  @override
  String givenNameHint(BuildContext context) => 'Enter your given name';

  @override
  String givenNameEmpty(BuildContext context) =>
      'Given name $_validationMessage';

  @override
  String nameTitle(BuildContext context) => 'Name*';

  @override
  String nameHint(BuildContext context) => 'Enter your name';

  @override
  String nameEmpty(BuildContext context) => 'Name $_validationMessage';

  @override
  String nicknameTitle(BuildContext context) => 'Nickname*';

  @override
  String nicknameHint(BuildContext context) => 'Enter your nickname';

  @override
  String nicknameEmpty(BuildContext context) => 'Nickname $_validationMessage';

  @override
  String preferredUsernameTitle(BuildContext context) => 'Preferred Username*';

  @override
  String preferredUsernameHint(BuildContext context) =>
      'Enter your preferred username';

  @override
  String preferredUsernameEmpty(BuildContext context) =>
      'Preferred username $_validationMessage';

  @override
  String pictureTitle(BuildContext context) => 'Picture*';

  @override
  String pictureHint(BuildContext context) =>
      'Enter the location for your picture';

  @override
  String pictureEmpty(BuildContext context) => 'Picture $_validationMessage';

  @override
  String profileTitle(BuildContext context) => 'Profile*';

  @override
  String profileHint(BuildContext context) => 'Enter your profile';

  @override
  String profileEmpty(BuildContext context) => 'Profile $_validationMessage';

  @override
  String updatedAtTitle(BuildContext context) => 'Updated at*';

  @override
  String updatedAtHint(BuildContext context) => 'Enter the last change date';

  @override
  String updatedAtEmpty(BuildContext context) =>
      'Updated at $_validationMessage';

  @override
  String websiteTitle(BuildContext context) => 'Website*';

  @override
  String websiteHint(BuildContext context) => 'Enter your website';

  @override
  String websiteEmpty(BuildContext context) => 'Website $_validationMessage';

  @override
  String zoneinfoTitle(BuildContext context) => 'ZoneInfo*';

  @override
  String zoneinfoHint(BuildContext context) => 'Enter your zoneinfo';

  @override
  String zoneinfoEmpty(BuildContext context) => 'Zoneinfo $_validationMessage';
}
