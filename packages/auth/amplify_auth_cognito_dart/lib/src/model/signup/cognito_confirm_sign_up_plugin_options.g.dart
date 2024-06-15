// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_confirm_sign_up_plugin_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoConfirmSignUpPluginOptions _$CognitoConfirmSignUpPluginOptionsFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'CognitoConfirmSignUpPluginOptions',
      json,
      ($checkedConvert) {
        final val = CognitoConfirmSignUpPluginOptions(
          clientMetadata: $checkedConvert(
              'clientMetadata',
              (v) =>
                  (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  ) ??
                  const {}),
        );
        return val;
      },
    );

Map<String, dynamic> _$CognitoConfirmSignUpPluginOptionsToJson(
        CognitoConfirmSignUpPluginOptions instance) =>
    <String, dynamic>{
      'clientMetadata': instance.clientMetadata,
    };
