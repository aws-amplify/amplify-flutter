// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_resend_sign_up_code_plugin_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoResendSignUpCodePluginOptions
    _$CognitoResendSignUpCodePluginOptionsFromJson(Map<String, dynamic> json) =>
        CognitoResendSignUpCodePluginOptions(
          clientMetadata:
              (json['clientMetadata'] as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  ) ??
                  const {},
        );

Map<String, dynamic> _$CognitoResendSignUpCodePluginOptionsToJson(
        CognitoResendSignUpCodePluginOptions instance) =>
    <String, dynamic>{
      'clientMetadata': instance.clientMetadata,
    };
