// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_confirm_reset_password_plugin_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoConfirmResetPasswordPluginOptions
    _$CognitoConfirmResetPasswordPluginOptionsFromJson(
            Map<String, dynamic> json) =>
        CognitoConfirmResetPasswordPluginOptions(
          clientMetadata:
              (json['clientMetadata'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
        );

Map<String, dynamic> _$CognitoConfirmResetPasswordPluginOptionsToJson(
        CognitoConfirmResetPasswordPluginOptions instance) =>
    <String, dynamic>{
      'clientMetadata': instance.clientMetadata,
    };
