// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_sign_up_plugin_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoSignUpPluginOptions _$CognitoSignUpPluginOptionsFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'CognitoSignUpPluginOptions',
      json,
      ($checkedConvert) {
        final val = CognitoSignUpPluginOptions(
          clientMetadata: $checkedConvert(
              'clientMetadata',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
          validationData: $checkedConvert(
              'validationData',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
        );
        return val;
      },
    );

Map<String, dynamic> _$CognitoSignUpPluginOptionsToJson(
        CognitoSignUpPluginOptions instance) =>
    <String, dynamic>{
      'clientMetadata': instance.clientMetadata,
      'validationData': instance.validationData,
    };
