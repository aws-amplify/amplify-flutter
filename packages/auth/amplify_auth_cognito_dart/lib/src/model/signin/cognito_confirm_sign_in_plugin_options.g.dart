// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_confirm_sign_in_plugin_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoConfirmSignInPluginOptions _$CognitoConfirmSignInPluginOptionsFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'CognitoConfirmSignInPluginOptions',
      json,
      ($checkedConvert) {
        final val = CognitoConfirmSignInPluginOptions(
          clientMetadata: $checkedConvert(
              'clientMetadata',
              (v) => (v as Map<String, dynamic>?)?.map(
                    (k, e) => MapEntry(k, e as String),
                  )),
          userAttributes: $checkedConvert(
              'userAttributes',
              (v) => _$JsonConverterFromJson<Map<String, String>,
                      Map<CognitoUserAttributeKey, String>>(
                  v, const CognitoUserAttributeMapConverter().fromJson)),
          friendlyDeviceName:
              $checkedConvert('friendlyDeviceName', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$CognitoConfirmSignInPluginOptionsToJson(
    CognitoConfirmSignInPluginOptions instance) {
  final val = <String, dynamic>{
    'clientMetadata': instance.clientMetadata,
    'userAttributes': const CognitoUserAttributeMapConverter()
        .toJson(instance.userAttributes),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('friendlyDeviceName', instance.friendlyDeviceName);
  return val;
}

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);
