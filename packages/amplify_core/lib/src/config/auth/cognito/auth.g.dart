// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoAuthConfig _$CognitoAuthConfigFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CognitoAuthConfig', json, ($checkedConvert) {
      final val = CognitoAuthConfig(
        oAuth: $checkedConvert(
          'OAuth',
          (v) => v == null
              ? null
              : CognitoOAuthConfig.fromJson(v as Map<String, dynamic>),
        ),
        socialProviders: $checkedConvert(
          'socialProviders',
          (v) => (v as List<dynamic>?)
              ?.map((e) => $enumDecode(_$SocialProviderEnumMap, e))
              .toList(),
        ),
        usernameAttributes: $checkedConvert(
          'usernameAttributes',
          (v) => (v as List<dynamic>?)
              ?.map(
                (e) => const CognitoUserAttributeKeyToUpperCaseConverter()
                    .fromJson(e as String),
              )
              .toList(),
        ),
        signupAttributes: $checkedConvert(
          'signupAttributes',
          (v) => (v as List<dynamic>?)
              ?.map(
                (e) => const CognitoUserAttributeKeyToUpperCaseConverter()
                    .fromJson(e as String),
              )
              .toList(),
        ),
        passwordProtectionSettings: $checkedConvert(
          'passwordProtectionSettings',
          (v) => v == null
              ? null
              : PasswordProtectionSettings.fromJson(v as Map<String, dynamic>),
        ),
        mfaConfiguration: $checkedConvert(
          'mfaConfiguration',
          (v) => $enumDecodeNullable(_$MfaConfigurationEnumMap, v),
        ),
        mfaTypes: $checkedConvert(
          'mfaTypes',
          (v) => (v as List<dynamic>?)
              ?.map((e) => $enumDecode(_$MfaTypeEnumMap, e))
              .toList(),
        ),
        verificationMechanisms: $checkedConvert(
          'verificationMechanisms',
          (v) => (v as List<dynamic>?)
              ?.map(
                (e) => const CognitoUserAttributeKeyToUpperCaseConverter()
                    .fromJson(e as String),
              )
              .toList(),
        ),
      );
      return val;
    }, fieldKeyMap: const {'oAuth': 'OAuth'});

Map<String, dynamic> _$CognitoAuthConfigToJson(
  CognitoAuthConfig instance,
) => <String, dynamic>{
  if (instance.oAuth?.toJson() case final value?) 'OAuth': value,
  if (instance.socialProviders?.map((e) => _$SocialProviderEnumMap[e]!).toList()
      case final value?)
    'socialProviders': value,
  if (instance.usernameAttributes
          ?.map(const CognitoUserAttributeKeyToUpperCaseConverter().toJson)
          .toList()
      case final value?)
    'usernameAttributes': value,
  if (instance.signupAttributes
          ?.map(const CognitoUserAttributeKeyToUpperCaseConverter().toJson)
          .toList()
      case final value?)
    'signupAttributes': value,
  if (instance.passwordProtectionSettings?.toJson() case final value?)
    'passwordProtectionSettings': value,
  if (_$MfaConfigurationEnumMap[instance.mfaConfiguration] case final value?)
    'mfaConfiguration': value,
  if (instance.mfaTypes?.map((e) => _$MfaTypeEnumMap[e]!).toList()
      case final value?)
    'mfaTypes': value,
  if (instance.verificationMechanisms
          ?.map(const CognitoUserAttributeKeyToUpperCaseConverter().toJson)
          .toList()
      case final value?)
    'verificationMechanisms': value,
};

const _$SocialProviderEnumMap = {
  SocialProvider.facebook: 'FACEBOOK',
  SocialProvider.google: 'GOOGLE',
  SocialProvider.amazon: 'AMAZON',
  SocialProvider.apple: 'APPLE',
};

const _$MfaConfigurationEnumMap = {
  MfaConfiguration.optional: 'OPTIONAL',
  MfaConfiguration.on: 'ON',
  MfaConfiguration.off: 'OFF',
};

const _$MfaTypeEnumMap = {
  MfaType.sms: 'SMS',
  MfaType.totp: 'TOTP',
  MfaType.email: 'EMAIL',
};
