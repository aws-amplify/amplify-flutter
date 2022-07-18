// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_sign_up_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoSignUpOptions _$CognitoSignUpOptionsFromJson(
        Map<String, dynamic> json) =>
    CognitoSignUpOptions._(
      userAttributes: _userAttributesFromJson(json['userAttributes'] as Map?),
      validationData: (json['validationData'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      clientMetadata: (json['clientMetadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$CognitoSignUpOptionsToJson(
    CognitoSignUpOptions instance) {
  final val = <String, dynamic>{
    'userAttributes': instance.userAttributes,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('validationData', instance.validationData);
  writeNotNull('clientMetadata', instance.clientMetadata);
  return val;
}
