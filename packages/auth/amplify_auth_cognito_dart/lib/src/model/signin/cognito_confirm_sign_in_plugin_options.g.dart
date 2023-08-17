// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_confirm_sign_in_plugin_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoConfirmSignInPluginOptions _$CognitoConfirmSignInPluginOptionsFromJson(
        Map<String, dynamic> json) =>
    CognitoConfirmSignInPluginOptions(
      clientMetadata: (json['clientMetadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      userAttributes: _$JsonConverterFromJson<Map<String, String>,
              Map<CognitoUserAttributeKey, String>>(json['userAttributes'],
          const CognitoUserAttributeMapConverter().fromJson),
      friendlyDeviceName: json['friendlyDeviceName'] as String?,
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
