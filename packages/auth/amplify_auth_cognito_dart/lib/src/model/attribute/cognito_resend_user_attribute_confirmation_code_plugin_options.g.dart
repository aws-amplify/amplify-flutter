// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_resend_user_attribute_confirmation_code_plugin_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoResendUserAttributeConfirmationCodePluginOptions
    _$CognitoResendUserAttributeConfirmationCodePluginOptionsFromJson(
            Map<String, dynamic> json) =>
        CognitoResendUserAttributeConfirmationCodePluginOptions(
          clientMetadata:
              (json['clientMetadata'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
        );

Map<String, dynamic>
    _$CognitoResendUserAttributeConfirmationCodePluginOptionsToJson(
            CognitoResendUserAttributeConfirmationCodePluginOptions instance) =>
        <String, dynamic>{
          'clientMetadata': instance.clientMetadata,
        };
