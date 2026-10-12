// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_fetch_auth_session_plugin_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoFetchAuthSessionPluginOptions
_$CognitoFetchAuthSessionPluginOptionsFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CognitoFetchAuthSessionPluginOptions', json, (
      $checkedConvert,
    ) {
      final val = CognitoFetchAuthSessionPluginOptions(
        clientMetadata: $checkedConvert(
          'clientMetadata',
          (v) =>
              (v as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(k, e as String),
              ) ??
              const {},
        ),
      );
      return val;
    });

Map<String, dynamic> _$CognitoFetchAuthSessionPluginOptionsToJson(
  CognitoFetchAuthSessionPluginOptions instance,
) => <String, dynamic>{'clientMetadata': instance.clientMetadata};
