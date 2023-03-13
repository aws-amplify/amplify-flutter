// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_confirm_sign_in_options.dart';

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
    );

Map<String, dynamic> _$CognitoConfirmSignInPluginOptionsToJson(
        CognitoConfirmSignInPluginOptions instance) =>
    <String, dynamic>{
      'clientMetadata': instance.clientMetadata,
      'userAttributes': const CognitoUserAttributeMapConverter()
          .toJson(instance.userAttributes),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);
