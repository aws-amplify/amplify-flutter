// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_reset_password_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoResetPasswordOptions _$CognitoResetPasswordOptionsFromJson(
        Map<String, dynamic> json) =>
    CognitoResetPasswordOptions(
      clientMetadata: (json['clientMetadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$CognitoResetPasswordOptionsToJson(
    CognitoResetPasswordOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('clientMetadata', instance.clientMetadata);
  return val;
}
