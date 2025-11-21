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
        nonce: $checkedConvert('nonce', (v) => v as String?),
        language: $checkedConvert('language', (v) => v as String?),
        loginHint: $checkedConvert('loginHint', (v) => v as String?),
        prompt: $checkedConvert(
          'prompt',
          (v) => (v as List<dynamic>?)
              ?.map(
                (e) => $enumDecode(_$CognitoSignInWithWebUIPromptEnumMap, e),
              )
              .toList(),
        ),
        resource: $checkedConvert('resource', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$CognitoSignInWithWebUIPluginOptionsToJson(
  CognitoSignInWithWebUIPluginOptions instance,
) => <String, dynamic>{
  'isPreferPrivateSession': instance.isPreferPrivateSession,
  if (instance.browserPackageName case final value?)
    'browserPackageName': value,
  if (instance.nonce case final value?) 'nonce': value,
  if (instance.language case final value?) 'language': value,
  if (instance.loginHint case final value?) 'loginHint': value,
  if (instance.prompt
          ?.map((e) => _$CognitoSignInWithWebUIPromptEnumMap[e]!)
          .toList()
      case final value?)
    'prompt': value,
  if (instance.resource case final value?) 'resource': value,
};

const _$CognitoSignInWithWebUIPromptEnumMap = {
  CognitoSignInWithWebUIPrompt.none: 'none',
  CognitoSignInWithWebUIPrompt.login: 'login',
  CognitoSignInWithWebUIPrompt.selectAccount: 'select_account',
  CognitoSignInWithWebUIPrompt.consent: 'consent',
};
