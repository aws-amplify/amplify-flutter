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

import 'package:amplify_authenticator/src/l10n/generated/input_localizations.dart';
import 'package:amplify_flutter/src/config/auth/password_protection_settings.dart';
import 'package:flutter/material.dart';

import 'resolver.dart';

enum InputField {
  username,
  password,
  passwordConfirmation,
  verificationCode,
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
}

enum InputResolverKeyType {
  title,
  hint,
  empty,
  passwordRequirements,
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
  static const passwordConfirmationTitle = InputResolverKey._(
    InputResolverKeyType.title,
    field: InputField.passwordConfirmation,
  );
  static const passwordConfirmationHint = InputResolverKey._(
    InputResolverKeyType.hint,
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
}

class InputResolver extends Resolver<InputResolverKey> {
  const InputResolver();

  String title(BuildContext context, InputField field) {
    switch (field) {
      case InputField.username:
        return AuthenticatorInputLocalizations.of(context).username;
      case InputField.password:
        return AuthenticatorInputLocalizations.of(context).password;
      case InputField.passwordConfirmation:
        return AuthenticatorInputLocalizations.of(context).passwordConfirmation;
      case InputField.verificationCode:
        return AuthenticatorInputLocalizations.of(context).verificationCode;
      case InputField.address:
        return AuthenticatorInputLocalizations.of(context).address;
      case InputField.birthdate:
        return AuthenticatorInputLocalizations.of(context).birthdate;
      case InputField.email:
        return AuthenticatorInputLocalizations.of(context).email;
      case InputField.familyName:
        return AuthenticatorInputLocalizations.of(context).familyName;
      case InputField.gender:
        return AuthenticatorInputLocalizations.of(context).gender;
      case InputField.givenName:
        return AuthenticatorInputLocalizations.of(context).givenName;
      // case InputField.locale:
      //   return AuthenticatorInputLocalizations.of(context).locale;
      case InputField.middleName:
        return AuthenticatorInputLocalizations.of(context).middleName;
      case InputField.name:
        return AuthenticatorInputLocalizations.of(context).name;
      case InputField.nickname:
        return AuthenticatorInputLocalizations.of(context).nickname;
      case InputField.phoneNumber:
        return AuthenticatorInputLocalizations.of(context).phoneNumber;
      // case InputField.picture:
      //   // TODO: Handle this case.
      //   break;
      case InputField.preferredUsername:
        return AuthenticatorInputLocalizations.of(context).preferredUsername;
      // case InputField.profile:
      //   // TODO: Handle this case.
      //   break;
      // case InputField.zoneinfo:
      //   // TODO: Handle this case.
      //   break;
      // case InputField.updatedAt:
      //   // TODO: Handle this case.
      //   break;
      // case InputField.website:
      //   // TODO: Handle this case.
      //   break;
    }
  }

  String hint(BuildContext context, InputField field) {
    final fieldName = title(context, field);
    // Recase to lower case
    final lowercasedFieldName = fieldName.splitMapJoin(' ', onMatch: (match) {
      return match.group(0)!.toLowerCase();
    });
    if (field == InputField.passwordConfirmation) {
      return AuthenticatorInputLocalizations.of(context)
          .promptRefill(lowercasedFieldName);
    }
    return AuthenticatorInputLocalizations.of(context)
        .promptFill(lowercasedFieldName);
  }

  String empty(BuildContext context, InputField field) {
    return AuthenticatorInputLocalizations.of(context)
        .warnEmpty(title(context, field));
  }

  String passwordRequires(
    BuildContext context,
    PasswordProtectionSettings requirements,
  ) {
    var minLength = requirements.passwordPolicyMinLength;
    var characterReqs = requirements.passwordPolicyCharacters;
    if (minLength == null && (characterReqs == null || characterReqs.isEmpty)) {
      return '';
    }
    var sb = StringBuffer();
    sb.writeln(
      AuthenticatorInputLocalizations.of(context).passwordRequirementsPreamble,
    );
    if (minLength != null) {
      var atLeast = AuthenticatorInputLocalizations.of(context)
          .passwordRequirementsAtLeast(minLength, '');
      sb.writeln('* $atLeast');
    }
    if (characterReqs != null) {
      for (var characterReq in characterReqs) {
        var characterType = AuthenticatorInputLocalizations.of(context)
            .passwordRequirementsCharacterType(characterReq);
        var atLeast = AuthenticatorInputLocalizations.of(context)
            .passwordRequirementsAtLeast(1, characterType);
        sb.writeln('* $atLeast');
      }
    }
    return sb.toString();
  }

  @override
  String resolve(BuildContext context, InputResolverKey key) {
    switch (key.type) {
      case InputResolverKeyType.title:
        return title(context, key.field);
      case InputResolverKeyType.hint:
        return hint(context, key.field);
      case InputResolverKeyType.empty:
        return empty(context, key.field);
      case InputResolverKeyType.passwordRequirements:
        return passwordRequires(context, key.unmetPasswordRequirements!);
    }
  }
}
