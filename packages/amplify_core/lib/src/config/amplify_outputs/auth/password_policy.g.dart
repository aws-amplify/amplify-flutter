// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'password_policy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PasswordPolicy _$PasswordPolicyFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PasswordPolicy',
      json,
      ($checkedConvert) {
        final val = PasswordPolicy(
          minLength: $checkedConvert('min_length', (v) => v as int?),
          requireNumbers:
              $checkedConvert('require_numbers', (v) => v as bool? ?? false),
          requireLowercase:
              $checkedConvert('require_lowercase', (v) => v as bool? ?? false),
          requireUppercase:
              $checkedConvert('require_uppercase', (v) => v as bool? ?? false),
          requireSymbols:
              $checkedConvert('require_symbols', (v) => v as bool? ?? false),
        );
        return val;
      },
      fieldKeyMap: const {
        'minLength': 'min_length',
        'requireNumbers': 'require_numbers',
        'requireLowercase': 'require_lowercase',
        'requireUppercase': 'require_uppercase',
        'requireSymbols': 'require_symbols'
      },
    );

Map<String, dynamic> _$PasswordPolicyToJson(PasswordPolicy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('min_length', instance.minLength);
  val['require_numbers'] = instance.requireNumbers;
  val['require_lowercase'] = instance.requireLowercase;
  val['require_uppercase'] = instance.requireUppercase;
  val['require_symbols'] = instance.requireSymbols;
  return val;
}
