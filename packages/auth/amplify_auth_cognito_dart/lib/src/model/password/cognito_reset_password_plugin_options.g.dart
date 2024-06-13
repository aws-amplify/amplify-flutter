// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_reset_password_plugin_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoResetPasswordPluginOptions _$CognitoResetPasswordPluginOptionsFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'CognitoResetPasswordPluginOptions',
      json,
      ($checkedConvert) {
        final val = CognitoResetPasswordPluginOptions(
          clientMetadata: $checkedConvert(
              'clientMetadata',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
        );
        return val;
      },
    );

Map<String, dynamic> _$CognitoResetPasswordPluginOptionsToJson(
        CognitoResetPasswordPluginOptions instance) =>
    <String, dynamic>{
      'clientMetadata': instance.clientMetadata,
    };
