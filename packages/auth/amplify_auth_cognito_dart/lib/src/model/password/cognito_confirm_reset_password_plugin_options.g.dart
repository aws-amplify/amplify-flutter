// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_confirm_reset_password_plugin_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoConfirmResetPasswordPluginOptions
    _$CognitoConfirmResetPasswordPluginOptionsFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'CognitoConfirmResetPasswordPluginOptions',
          json,
          ($checkedConvert) {
            final val = CognitoConfirmResetPasswordPluginOptions(
              clientMetadata: $checkedConvert(
                  'clientMetadata',
                  (v) => (v as Map<String, dynamic>?)?.map(
                        (k, e) => MapEntry(k, e as String),
                      )),
            );
            return val;
          },
        );

Map<String, dynamic> _$CognitoConfirmResetPasswordPluginOptionsToJson(
        CognitoConfirmResetPasswordPluginOptions instance) =>
    <String, dynamic>{
      'clientMetadata': instance.clientMetadata,
    };
