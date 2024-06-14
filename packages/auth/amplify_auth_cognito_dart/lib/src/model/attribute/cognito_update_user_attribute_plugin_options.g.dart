// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_update_user_attribute_plugin_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoUpdateUserAttributePluginOptions
    _$CognitoUpdateUserAttributePluginOptionsFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'CognitoUpdateUserAttributePluginOptions',
          json,
          ($checkedConvert) {
            final val = CognitoUpdateUserAttributePluginOptions(
              clientMetadata: $checkedConvert(
                  'clientMetadata',
                  (v) => (v as Map<String, dynamic>?)?.map(
                        (k, e) => MapEntry(k, e as String),
                      )),
            );
            return val;
          },
        );

Map<String, dynamic> _$CognitoUpdateUserAttributePluginOptionsToJson(
        CognitoUpdateUserAttributePluginOptions instance) =>
    <String, dynamic>{
      'clientMetadata': instance.clientMetadata,
    };
