//
// Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License").
// You may not use this file except in compliance with the License.
// A copy of the License is located at
//
//  http://aws.amazon.com/apache2.0
//
// or in the "license" file accompanying this file. This file is distributed
// on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
// express or implied. See the License for the specific language governing
// permissions and limitations under the License.
//

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_protection_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PasswordProtectionSettings _$PasswordProtectionSettingsFromJson(
        Map<String, dynamic> json) =>
    PasswordProtectionSettings(
      passwordPolicyMinLength: const _PasswordPolicyMinLengthConverter()
          .fromJson(json['passwordPolicyMinLength']),
      passwordPolicyCharacters: (json['passwordPolicyCharacters']
                  as List<dynamic>?)
              ?.map((e) => $enumDecode(_$PasswordPolicyCharactersEnumMap, e))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$PasswordProtectionSettingsToJson(
    PasswordProtectionSettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'passwordPolicyMinLength',
      const _PasswordPolicyMinLengthConverter()
          .toJson(instance.passwordPolicyMinLength));
  val['passwordPolicyCharacters'] = instance.passwordPolicyCharacters
      .map((e) => _$PasswordPolicyCharactersEnumMap[e])
      .toList();
  return val;
}

const _$PasswordPolicyCharactersEnumMap = {
  PasswordPolicyCharacters.requiresLowercase: 'REQUIRES_LOWERCASE',
  PasswordPolicyCharacters.requiresUppercase: 'REQUIRES_UPPERCASE',
  PasswordPolicyCharacters.requiresNumbers: 'REQUIRES_NUMBERS',
  PasswordPolicyCharacters.requiresSymbols: 'REQUIRES_SYMBOLS',
};
