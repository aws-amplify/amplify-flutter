// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_update_user_attributes_plugin_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoUpdateUserAttributesPluginOptions
    _$CognitoUpdateUserAttributesPluginOptionsFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          'CognitoUpdateUserAttributesPluginOptions',
          json,
          ($checkedConvert) {
            final val = CognitoUpdateUserAttributesPluginOptions(
              clientMetadata: $checkedConvert(
                  'clientMetadata',
                  (v) => (v as Map<String, dynamic>?)?.map(
                        (k, e) => MapEntry(k, e as String),
                      )),
            );
            return val;
          },
        );

Map<String, dynamic> _$CognitoUpdateUserAttributesPluginOptionsToJson(
        CognitoUpdateUserAttributesPluginOptions instance) =>
    <String, dynamic>{
      'clientMetadata': instance.clientMetadata,
    };
