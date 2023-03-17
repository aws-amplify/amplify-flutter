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
        CognitoUpdateUserAttributeOptions instance) =>
    <String, dynamic>{
      'clientMetadata': instance.clientMetadata,
    };

CognitoUpdateUserAttributePluginOptions
    _$CognitoUpdateUserAttributePluginOptionsFromJson(
            Map<String, dynamic> json) =>
        CognitoUpdateUserAttributePluginOptions(
          clientMetadata:
              (json['clientMetadata'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
        );

Map<String, dynamic> _$CognitoUpdateUserAttributePluginOptionsToJson(
        CognitoUpdateUserAttributePluginOptions instance) =>
    <String, dynamic>{
      'clientMetadata': instance.clientMetadata,
    };
