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
  'browserPackageName': ?instance.browserPackageName,
  'nonce': ?instance.nonce,
  'language': ?instance.language,
  'loginHint': ?instance.loginHint,
  'prompt': ?instance.prompt
      ?.map((e) => _$CognitoSignInWithWebUIPromptEnumMap[e]!)
      .toList(),
  'resource': ?instance.resource,
};

const _$CognitoSignInWithWebUIPromptEnumMap = {
  CognitoSignInWithWebUIPrompt.none: 'none',
  CognitoSignInWithWebUIPrompt.login: 'login',
  CognitoSignInWithWebUIPrompt.selectAccount: 'select_account',
  CognitoSignInWithWebUIPrompt.consent: 'consent',
};
