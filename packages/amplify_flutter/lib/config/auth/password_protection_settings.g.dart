// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_protection_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PasswordProtectionSettings _$PasswordProtectionSettingsFromJson(
    Map<String, dynamic> json) {
  return PasswordProtectionSettings(
    passwordPolicyMinLength: json['passwordPolicyMinLength'] as int?,
    passwordPolicyCharacters:
        (json['passwordPolicyCharacters'] as List<dynamic>?)
            ?.map((e) => _$enumDecode(_$PasswordPolicyCharactersEnumMap, e))
            .toList(),
  );
}

Map<String, dynamic> _$PasswordProtectionSettingsToJson(
        PasswordProtectionSettings instance) =>
    <String, dynamic>{
      'passwordPolicyMinLength': instance.passwordPolicyMinLength,
      'passwordPolicyCharacters': instance.passwordPolicyCharacters
          ?.map((e) => _$PasswordPolicyCharactersEnumMap[e])
          .toList(),
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$PasswordPolicyCharactersEnumMap = {
  PasswordPolicyCharacters.REQUIRES_LOWERCASE: 'REQUIRES_LOWERCASE',
  PasswordPolicyCharacters.REQUIRES_UPPERCASE: 'REQUIRES_UPPERCASE',
  PasswordPolicyCharacters.REQUIRES_NUMBERS: 'REQUIRES_NUMBERS',
  PasswordPolicyCharacters.REQUIRES_SYMBOLS: 'REQUIRES_SYMBOLS',
};
