// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_sign_in_with_web_ui_plugin_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoSignInWithWebUIPluginOptions
_$CognitoSignInWithWebUIPluginOptionsFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CognitoSignInWithWebUIPluginOptions', json, (
      $checkedConvert,
    ) {
      final val = CognitoSignInWithWebUIPluginOptions(
        isPreferPrivateSession: $checkedConvert(
          'isPreferPrivateSession',
          (v) => v as bool? ?? false,
        ),
        browserPackageName: $checkedConvert(
          'browserPackageName',
          (v) => v as String?,
        ),
      );
      return val;
    });

Map<String, dynamic> _$CognitoSignInWithWebUIPluginOptionsToJson(
  CognitoSignInWithWebUIPluginOptions instance,
) => <String, dynamic>{
  'isPreferPrivateSession': instance.isPreferPrivateSession,
  if (instance.browserPackageName case final value?)
    'browserPackageName': value,
};
