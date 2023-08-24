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
      .map((e) => _$PasswordPolicyCharactersEnumMap[e]!)
      .toList();
  return val;
}

const _$PasswordPolicyCharactersEnumMap = {
  PasswordPolicyCharacters.requiresLowercase: 'REQUIRES_LOWERCASE',
  PasswordPolicyCharacters.requiresUppercase: 'REQUIRES_UPPERCASE',
  PasswordPolicyCharacters.requiresNumbers: 'REQUIRES_NUMBERS',
  PasswordPolicyCharacters.requiresSymbols: 'REQUIRES_SYMBOLS',
};
