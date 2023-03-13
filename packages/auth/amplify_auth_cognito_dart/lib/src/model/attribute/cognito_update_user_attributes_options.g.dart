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
        CognitoUpdateUserAttributesOptions instance) =>
    <String, dynamic>{
      'clientMetadata': instance.clientMetadata,
    };

CognitoUpdateUserAttributesPluginOptions
    _$CognitoUpdateUserAttributesPluginOptionsFromJson(
            Map<String, dynamic> json) =>
        CognitoUpdateUserAttributesPluginOptions(
          clientMetadata:
              (json['clientMetadata'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
        );

Map<String, dynamic> _$CognitoUpdateUserAttributesPluginOptionsToJson(
        CognitoUpdateUserAttributesPluginOptions instance) =>
    <String, dynamic>{
      'clientMetadata': instance.clientMetadata,
    };
