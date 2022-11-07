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

import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter/material.dart';

import 'authenticator_localizations.dart';
import 'resolver.dart';

enum InputField {
  username,
  password,
  newPassword,
  passwordConfirmation,
  verificationCode,
  customAuthChallenge,
  address,
  birthdate,
  email,
  familyName,
  gender,
  givenName,
  // locale,
  middleName,
  name,
  nickname,
  phoneNumber,
  // picture,
  preferredUsername,
  // profile,
  // zoneinfo,
  // updatedAt,
  // website,
  rememberDevice,
  usernameType
}

enum InputResolverKeyType {
  title,
  hint,
  confirmHint,
  empty,
  usernameRequirements,
  passwordRequirements,
  format,
  mismatch
}

class InputResolverKey {
  const InputResolverKey._(
    this.type, {
    required this.field,
    this.unmetPasswordRequirements,
  });

  final InputResolverKeyType type;
  final InputField field;
  final PasswordProtectionSettings? unmetPasswordRequirements;

  static const usernameTitle = InputResolverKey._(
    InputResolverKeyType.title,
    field: InputField.username,
  );
  static const usernameHint = InputResolverKey._(
    InputResolverKeyType.hint,
    field: InputField.username,
  );
  static const usernameEmpty = InputResolverKey._(
    InputResolverKeyType.empty,
    field: InputField.username,
  );
  static const usernameRequirementsUnmet = InputResolverKey._(
    InputResolverKeyType.usernameRequirements,
    field: InputField.username,
  );
  static const passwordTitle = InputResolverKey._(
    InputResolverKeyType.title,
    field: InputField.password,
  );
  static const passwordHint = InputResolverKey._(
    InputResolverKeyType.hint,
    field: InputField.password,
  );
  static const passwordEmpty = InputResolverKey._(
    InputResolverKeyType.empty,
    field: InputField.password,
  );
  static const newPasswordTitle = InputResolverKey._(
    InputResolverKeyType.title,
    field: InputField.newPassword,
  );
  static const newPasswordHint = InputResolverKey._(
    InputResolverKeyType.hint,
    field: InputField.newPassword,
  );
  static const passwordConfirmationTitle = InputResolverKey._(
    InputResolverKeyType.title,
    field: InputField.passwordConfirmation,
  );
  static const passwordConfirmationHint = InputResolverKey._(
    InputResolverKeyType.confirmHint,
    field: InputField.passwordConfirmation,
  );
  static const passwordConfirmationEmpty = InputResolverKey._(
    InputResolverKeyType.empty,
    field: InputField.passwordConfirmation,
  );
  static const passwordsDoNotMatch = InputResolverKey._(
    InputResolverKeyType.mismatch,
    field: InputField.passwordConfirmation,
  );
  const InputResolverKey.passwordRequirementsUnmet(
    PasswordProtectionSettings requirements,
  ) : this._(
          InputResolverKeyType.passwordRequirements,
          field: InputField.password,
          unmetPasswordRequirements: requirements,
        );
  static const emailTitle = InputResolverKey._(
    InputResolverKeyType.title,
    field: InputField.email,
  );
  static const emailHint = InputResolverKey._(
    InputResolverKeyType.hint,
    field: InputField.email,
  );
  static const emailEmpty = InputResolverKey._(
    InputResolverKeyType.empty,
    field: InputField.email,
  );
  static const emailFormat = InputResolverKey._(
    InputResolverKeyType.format,
    field: InputField.email,
  );
  static const phoneNumberTitle = InputResolverKey._(
    InputResolverKeyType.title,
    field: InputField.phoneNumber,
  );
  static const phoneNumberHint = InputResolverKey._(
    InputResolverKeyType.hint,
    field: InputField.phoneNumber,
  );
  static const phoneNumberEmpty = InputResolverKey._(
    InputResolverKeyType.empty,
    field: InputField.phoneNumber,
  );
  static const phoneNumberFormat = InputResolverKey._(
    InputResolverKeyType.format,
    field: InputField.phoneNumber,
  );

  static const customAuthChallengeTitle = InputResolverKey._(
    InputResolverKeyType.title,
    field: InputField.customAuthChallenge,
  );

  static const customAuthChallengeHint = InputResolverKey._(
    InputResolverKeyType.hint,
    field: InputField.customAuthChallenge,
  );

  static const verificationCodeTitle = InputResolverKey._(
    InputResolverKeyType.title,
    field: InputField.verificationCode,
  );
  static const verificationCodeHint = InputResolverKey._(
    InputResolverKeyType.hint,
    field: InputField.verificationCode,
  );
  static const verificationCodeEmpty = InputResolverKey._(
    InputResolverKeyType.empty,
    field: InputField.verificationCode,
  );
  static const verificationCodeFormat = InputResolverKey._(
    InputResolverKeyType.format,
    field: InputField.verificationCode,
  );
  static const addressTitle = InputResolverKey._(
    InputResolverKeyType.title,
    field: InputField.address,
  );
  static const addressHint = InputResolverKey._(
    InputResolverKeyType.hint,
    field: InputField.address,
  );
  static const addressEmpty = InputResolverKey._(
    InputResolverKeyType.empty,
    field: InputField.address,
  );
  static const birthdateTitle = InputResolverKey._(
    InputResolverKeyType.title,
    field: InputField.birthdate,
  );
  static const birthdateHint = InputResolverKey._(
    InputResolverKeyType.hint,
    field: InputField.birthdate,
  );
  static const birthdateEmpty = InputResolverKey._(
    InputResolverKeyType.empty,
    field: InputField.birthdate,
  );
  static const familyNameTitle = InputResolverKey._(
    InputResolverKeyType.title,
    field: InputField.familyName,
  );
  static const familyNameHint = InputResolverKey._(
    InputResolverKeyType.hint,
    field: InputField.familyName,
  );
  static const familyNameEmpty = InputResolverKey._(
    InputResolverKeyType.empty,
    field: InputField.familyName,
  );
  static const middleNameTitle = InputResolverKey._(
    InputResolverKeyType.title,
    field: InputField.middleName,
  );
  static const middleNameHint = InputResolverKey._(
    InputResolverKeyType.hint,
    field: InputField.middleName,
  );
  static const middleNameEmpty = InputResolverKey._(
    InputResolverKeyType.empty,
    field: InputField.middleName,
  );
  static const genderTitle = InputResolverKey._(
    InputResolverKeyType.title,
    field: InputField.gender,
  );
  static const genderHint = InputResolverKey._(
    InputResolverKeyType.hint,
    field: InputField.gender,
  );
  static const genderEmpty = InputResolverKey._(
    InputResolverKeyType.empty,
    field: InputField.gender,
  );
  // static const localeTitle = InputResolverKey._(
  //   _InputResolverKey.title,
  //   attribute: InputField.locale,
  // );
  // static const localeHint = InputResolverKey._(
  //   _InputResolverKey.hint,
  //   attribute: InputField.locale,
  // );
  // static const localeEmpty = InputResolverKey._(
  //   _InputResolverKey.empty,
  //   attribute: InputField.locale,
  // );
  static const givenNameTitle = InputResolverKey._(
    InputResolverKeyType.title,
    field: InputField.givenName,
  );
  static const givenNameHint = InputResolverKey._(
    InputResolverKeyType.hint,
    field: InputField.givenName,
  );
  static const givenNameEmpty = InputResolverKey._(
    InputResolverKeyType.empty,
    field: InputField.givenName,
  );
  static const nameTitle = InputResolverKey._(
    InputResolverKeyType.title,
    field: InputField.name,
  );
  static const nameHint = InputResolverKey._(
    InputResolverKeyType.hint,
    field: InputField.name,
  );
  static const nameEmpty = InputResolverKey._(
    InputResolverKeyType.empty,
    field: InputField.name,
  );
  static const nicknameTitle = InputResolverKey._(
    InputResolverKeyType.title,
    field: InputField.nickname,
  );
  static const nicknameHint = InputResolverKey._(
    InputResolverKeyType.hint,
    field: InputField.nickname,
  );
  static const nicknameEmpty = InputResolverKey._(
    InputResolverKeyType.empty,
    field: InputField.nickname,
  );
  static const preferredUsernameTitle = InputResolverKey._(
    InputResolverKeyType.title,
    field: InputField.preferredUsername,
  );
  static const preferredUsernameHint = InputResolverKey._(
    InputResolverKeyType.hint,
    field: InputField.preferredUsername,
  );
  static const preferredUsernameEmpty = InputResolverKey._(
    InputResolverKeyType.empty,
    field: InputField.preferredUsername,
  );
  // static const pictureTitle = InputResolverKey._(
  //   _InputResolverKey.title,
  //   attribute: InputField.picture,
  // );
  // static const pictureHint = InputResolverKey._(
  //   _InputResolverKey.hint,
  //   attribute: InputField.picture,
  // );
  // static const pictureEmpty = InputResolverKey._(
  //   _InputResolverKey.empty,
  //   attribute: InputField.picture,
  // );
  // static const profileTitle = InputResolverKey._(
  //   _InputResolverKey.title,
  //   attribute: InputField.profile,
  // );
  // static const profileHint = InputResolverKey._(
  //   _InputResolverKey.hint,
  //   attribute: InputField.profile,
  // );
  // static const profileEmpty = InputResolverKey._(
  //   _InputResolverKey.empty,
  //   attribute: InputField.profile,
  // );
  // static const updatedAtTitle = InputResolverKey._(
  //   _InputResolverKey.title,
  //   attribute: InputField.updatedAt,
  // );
  // static const updatedAtHint = InputResolverKey._(
  //   _InputResolverKey.hint,
  //   attribute: InputField.updatedAt,
  // );
  // static const updatedAtEmpty = InputResolverKey._(
  //   _InputResolverKey.empty,
  //   attribute: InputField.updatedAt,
  // );
  // static const websiteTitle = InputResolverKey._(
  //   _InputResolverKey.title,
  //   attribute: InputField.website,
  // );
  // static const websiteHint = InputResolverKey._(
  //   _InputResolverKey.hint,
  //   attribute: InputField.website,
  // );
  // static const websiteEmpty = InputResolverKey._(
  //   _InputResolverKey.empty,
  //   attribute: InputField.website,
  // );
  // static const zoneinfoTitle = InputResolverKey._(
  //   _InputResolverKey.title,
  //   attribute: InputField.zoneinfo,
  // );
  // static const zoneinfoHint = InputResolverKey._(
  //   _InputResolverKey.hint,
  //   attribute: InputField.zoneinfo,
  // );
  // static const zoneinfoEmpty = InputResolverKey._(
  //   _InputResolverKey.empty,
  //   attribute: InputField.zoneinfo,
  // );
  static const rememberDevice = InputResolverKey._(
    InputResolverKeyType.title,
    field: InputField.rememberDevice,
  );

  static const usernameType = InputResolverKey._(
    InputResolverKeyType.title,
    field: InputField.usernameType,
  );

  String resolve(BuildContext context, InputResolver inputResolver) =>
      inputResolver.resolve(context, this);
}

/// The resolver class for input widgets.
///
/// This class is responsible for resolving text to display
/// in input field titles, as well as hints, warnings and other
/// guidance for the end-user.
class InputResolver extends Resolver<InputResolverKey> {
  const InputResolver();

  /// Returns the label that is displayed as the input title.
  ///
  /// In addition to displaying the input title, this method is
  /// used by the default implmentations of the [hint], [empty] and [format] methods
  /// to resolve the base name of the field.
  String title(BuildContext context, InputField field) {
    switch (field) {
      case InputField.username:
        return AuthenticatorLocalizations.inputsOf(context).username;
      case InputField.password:
        return AuthenticatorLocalizations.inputsOf(context).password;
      case InputField.newPassword:
        return AuthenticatorLocalizations.inputsOf(context).newPassword;
      case InputField.passwordConfirmation:
        final attributeName =
            AuthenticatorLocalizations.inputsOf(context).password;
        return AuthenticatorLocalizations.inputsOf(context)
            .confirmAttribute(attributeName);
      case InputField.verificationCode:
        return AuthenticatorLocalizations.inputsOf(context).verificationCode;
      case InputField.customAuthChallenge:
        return AuthenticatorLocalizations.inputsOf(context).customChallenge;
      case InputField.address:
        return AuthenticatorLocalizations.inputsOf(context).address;
      case InputField.birthdate:
        return AuthenticatorLocalizations.inputsOf(context).birthdate;
      case InputField.email:
        return AuthenticatorLocalizations.inputsOf(context).email;
      case InputField.familyName:
        return AuthenticatorLocalizations.inputsOf(context).familyName;
      case InputField.gender:
        return AuthenticatorLocalizations.inputsOf(context).gender;
      case InputField.givenName:
        return AuthenticatorLocalizations.inputsOf(context).givenName;
      // case InputField.locale:
      //   return AuthenticatorLocalizations.inputsOf(context).locale;
      case InputField.middleName:
        return AuthenticatorLocalizations.inputsOf(context).middleName;
      case InputField.name:
        return AuthenticatorLocalizations.inputsOf(context).name;
      case InputField.nickname:
        return AuthenticatorLocalizations.inputsOf(context).nickname;
      case InputField.phoneNumber:
        return AuthenticatorLocalizations.inputsOf(context).phoneNumber;
      // case InputField.picture:
      //   break;
      case InputField.preferredUsername:
        return AuthenticatorLocalizations.inputsOf(context).preferredUsername;
      // case InputField.profile:
      //   break;
      // case InputField.zoneinfo:
      //   break;
      // case InputField.updatedAt:
      //   break;
      // case InputField.website:
      //   break;
      case InputField.rememberDevice:
        return AuthenticatorLocalizations.inputsOf(context).rememberDevice;
      case InputField.usernameType:
        return AuthenticatorLocalizations.inputsOf(context).usernameType;
    }
  }

  /// Returns the label displayed as the input hint.
  String hint(BuildContext context, InputField field) {
    final fieldName = title(context, field);
    final lowercasedFieldName = fieldName.toLowerCase();
    return AuthenticatorLocalizations.inputsOf(context)
        .promptFill(lowercasedFieldName);
  }

  /// Returns the hint text used for confirmation fields where the
  /// user is asked to re-enter information prior to form submission.
  String confirmHint(BuildContext context, InputField field) {
    final fieldName = AuthenticatorLocalizations.inputsOf(context).password;
    final lowercasedFieldName = fieldName.toLowerCase();
    return AuthenticatorLocalizations.inputsOf(context)
        .promptRefill(lowercasedFieldName);
  }

  /// Returns the text displayed when a required field is left empty.
  String empty(BuildContext context, InputField field) {
    return AuthenticatorLocalizations.inputsOf(context)
        .warnEmpty(title(context, field));
  }

  /// Returns the text displayed when a field fails a format validation check,
  /// such as an invalid email format, an invalid confirmation code length, etc.
  String format(BuildContext context, InputField field) {
    return AuthenticatorLocalizations.inputsOf(context)
        .warnInvalidFormat(title(context, field).toLowerCase());
  }

  /// Returns the text displayed when the username requirements are not met
  String usernameRequires(BuildContext context) {
    return AuthenticatorLocalizations.inputsOf(context).usernameRequirements;
  }

  /// Returns the text displayed when a password input does match the password requirements
  /// defined in the amplify configuration.
  String passwordRequires(
    BuildContext context,
    PasswordProtectionSettings requirements,
  ) {
    var minLength = requirements.passwordPolicyMinLength;
    var characterReqs = requirements.passwordPolicyCharacters;
    if (minLength == null && (characterReqs.isEmpty)) {
      return '';
    }
    var sb = StringBuffer();
    sb.writeln(
      AuthenticatorLocalizations.inputsOf(context).passwordRequirementsPreamble,
    );
    if (minLength != null) {
      var atLeast = AuthenticatorLocalizations.inputsOf(context)
          .passwordRequirementsAtLeast(minLength, '');
      sb.writeln('* $atLeast');
    }
    for (var characterReq in characterReqs) {
      var characterType = AuthenticatorLocalizations.inputsOf(context)
          .passwordRequirementsCharacterType(characterReq);
      var atLeast = AuthenticatorLocalizations.inputsOf(context)
          .passwordRequirementsAtLeast(1, characterType);
      sb.writeln('* $atLeast');
    }
    return sb.toString();
  }

  /// Returns text denoting a field as optional.
  String optional(BuildContext context, String title) {
    return AuthenticatorLocalizations.inputsOf(context).optional(title);
  }

  @override
  String resolve(BuildContext context, InputResolverKey key) {
    switch (key.type) {
      case InputResolverKeyType.title:
        return title(context, key.field);
      case InputResolverKeyType.hint:
        return hint(context, key.field);
      case InputResolverKeyType.confirmHint:
        return confirmHint(context, key.field);
      case InputResolverKeyType.empty:
        return empty(context, key.field);
      case InputResolverKeyType.usernameRequirements:
        return usernameRequires(context);
      case InputResolverKeyType.passwordRequirements:
        return passwordRequires(context, key.unmetPasswordRequirements!);
      case InputResolverKeyType.mismatch:
        return AuthenticatorLocalizations.inputsOf(context).passwordsDoNotMatch;
      case InputResolverKeyType.format:
        return format(context, key.field);
    }
  }
}
