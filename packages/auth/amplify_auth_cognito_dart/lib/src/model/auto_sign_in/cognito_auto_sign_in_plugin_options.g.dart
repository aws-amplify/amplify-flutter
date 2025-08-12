// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_auto_sign_in_plugin_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoAutoSignInPluginOptions _$CognitoAutoSignInPluginOptionsFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CognitoAutoSignInPluginOptions', json, ($checkedConvert) {
  final val = CognitoAutoSignInPluginOptions(
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

Map<String, dynamic> _$CognitoAutoSignInPluginOptionsToJson(
  CognitoAutoSignInPluginOptions instance,
) => <String, dynamic>{'clientMetadata': instance.clientMetadata};
