// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_confirm_sign_up_plugin_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoConfirmSignUpPluginOptions _$CognitoConfirmSignUpPluginOptionsFromJson(
        Map<String, dynamic> json) =>
    CognitoConfirmSignUpPluginOptions(
      clientMetadata: (json['clientMetadata'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
    );

Map<String, dynamic> _$CognitoConfirmSignUpPluginOptionsToJson(
        CognitoConfirmSignUpPluginOptions instance) =>
    <String, dynamic>{
      'clientMetadata': instance.clientMetadata,
    };
