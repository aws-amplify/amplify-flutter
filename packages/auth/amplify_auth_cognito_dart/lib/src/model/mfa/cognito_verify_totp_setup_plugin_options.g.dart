// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_verify_totp_setup_plugin_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoVerifyTotpSetupPluginOptions
_$CognitoVerifyTotpSetupPluginOptionsFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CognitoVerifyTotpSetupPluginOptions', json, (
      $checkedConvert,
    ) {
      final val = CognitoVerifyTotpSetupPluginOptions(
        friendlyDeviceName: $checkedConvert(
          'friendlyDeviceName',
          (v) => v as String?,
        ),
      );
      return val;
    });

Map<String, dynamic> _$CognitoVerifyTotpSetupPluginOptionsToJson(
  CognitoVerifyTotpSetupPluginOptions instance,
) => <String, dynamic>{
  if (instance.friendlyDeviceName case final value?)
    'friendlyDeviceName': value,
};
