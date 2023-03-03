// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_sign_up_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoSignUpOptions _$CognitoSignUpOptionsFromJson(
        Map<String, dynamic> json) =>
    CognitoSignUpOptions(
      userAttributes: json['userAttributes'] == null
          ? const {}
          : const CognitoUserAttributeMapConverter()
              .fromJson(json['userAttributes'] as Map<String, String>),
      validationData: (json['validationData'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      clientMetadata: (json['clientMetadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$CognitoSignUpOptionsToJson(
        CognitoSignUpOptions instance) =>
    <String, dynamic>{
      'userAttributes': const CognitoUserAttributeMapConverter()
          .toJson(instance.userAttributes),
      'validationData': instance.validationData,
      'clientMetadata': instance.clientMetadata,
    };

CognitoSignUpPluginOptions _$CognitoSignUpPluginOptionsFromJson(
        Map<String, dynamic> json) =>
    CognitoSignUpPluginOptions(
      clientMetadata: (json['clientMetadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      validationData: (json['validationData'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$CognitoSignUpPluginOptionsToJson(
        CognitoSignUpPluginOptions instance) =>
    <String, dynamic>{
      'clientMetadata': instance.clientMetadata,
      'validationData': instance.validationData,
    };
