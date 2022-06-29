// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_update_user_attribute_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoUpdateUserAttributeOptions _$CognitoUpdateUserAttributeOptionsFromJson(
        Map<String, dynamic> json) =>
    CognitoUpdateUserAttributeOptions(
      clientMetadata: (json['clientMetadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$CognitoUpdateUserAttributeOptionsToJson(
    CognitoUpdateUserAttributeOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('clientMetadata', instance.clientMetadata);
  return val;
}
