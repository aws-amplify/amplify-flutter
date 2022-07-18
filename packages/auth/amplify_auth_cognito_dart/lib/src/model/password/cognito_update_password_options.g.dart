// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_update_password_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoUpdatePasswordOptions _$CognitoUpdatePasswordOptionsFromJson(
        Map<String, dynamic> json) =>
    CognitoUpdatePasswordOptions(
      clientMetadata: (json['clientMetadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$CognitoUpdatePasswordOptionsToJson(
    CognitoUpdatePasswordOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('clientMetadata', instance.clientMetadata);
  return val;
}
