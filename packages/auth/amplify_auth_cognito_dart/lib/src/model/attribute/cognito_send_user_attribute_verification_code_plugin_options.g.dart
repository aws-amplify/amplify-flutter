// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_send_user_attribute_verification_code_plugin_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoSendUserAttributeVerificationCodePluginOptions
    _$CognitoSendUserAttributeVerificationCodePluginOptionsFromJson(
            Map<String, dynamic> json) =>
        CognitoSendUserAttributeVerificationCodePluginOptions(
          clientMetadata:
              (json['clientMetadata'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
        );

Map<String, dynamic>
    _$CognitoSendUserAttributeVerificationCodePluginOptionsToJson(
            CognitoSendUserAttributeVerificationCodePluginOptions instance) =>
        <String, dynamic>{
          'clientMetadata': instance.clientMetadata,
        };
