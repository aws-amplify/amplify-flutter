// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_update_user_attributes_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoUpdateUserAttributesOptions _$CognitoUpdateUserAttributesOptionsFromJson(
        Map<String, dynamic> json) =>
    CognitoUpdateUserAttributesOptions(
      clientMetadata: (json['clientMetadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$CognitoUpdateUserAttributesOptionsToJson(
    CognitoUpdateUserAttributesOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('clientMetadata', instance.clientMetadata);
  return val;
}
