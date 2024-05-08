// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'password_policy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PasswordPolicy _$PasswordPolicyFromJson(Map<String, dynamic> json) =>
    PasswordPolicy(
      minLength: json['min_length'] as int?,
      requireNumbers: json['require_numbers'] as bool?,
      requireLowercase: json['require_lowercase'] as bool?,
      requireUppercase: json['require_uppercase'] as bool?,
      requireSymbols: json['require_symbols'] as bool?,
    );

Map<String, dynamic> _$PasswordPolicyToJson(PasswordPolicy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('min_length', instance.minLength);
  writeNotNull('require_numbers', instance.requireNumbers);
  writeNotNull('require_lowercase', instance.requireLowercase);
  writeNotNull('require_uppercase', instance.requireUppercase);
  writeNotNull('require_symbols', instance.requireSymbols);
  return val;
}
