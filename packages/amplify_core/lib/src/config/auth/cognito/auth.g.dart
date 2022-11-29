// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoAuthConfig _$CognitoAuthConfigFromJson(Map<String, dynamic> json) =>
    CognitoAuthConfig(
      oAuth: json['OAuth'] == null
          ? null
          : CognitoOAuthConfig.fromJson(json['OAuth'] as Map<String, dynamic>),
      authenticationFlowType: $enumDecodeNullable(
          _$AuthenticationFlowTypeEnumMap, json['authenticationFlowType'],
          unknownValue: JsonKey.nullForUndefinedEnumValue),
      socialProviders: (json['socialProviders'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$SocialProviderEnumMap, e))
          .toList(),
      usernameAttributes: (json['usernameAttributes'] as List<dynamic>?)
          ?.map((e) =>
              const CognitoUserAttributeKeyConverter().fromJson(e as String))
          .toList(),
      signupAttributes: (json['signupAttributes'] as List<dynamic>?)
          ?.map((e) =>
              const CognitoUserAttributeKeyConverter().fromJson(e as String))
          .toList(),
      passwordProtectionSettings: json['passwordProtectionSettings'] == null
          ? null
          : PasswordProtectionSettings.fromJson(
              json['passwordProtectionSettings'] as Map<String, dynamic>),
      mfaConfiguration: $enumDecodeNullable(
          _$MfaConfigurationEnumMap, json['mfaConfiguration']),
      mfaTypes: (json['mfaTypes'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$MfaTypeEnumMap, e))
          .toList(),
      verificationMechanisms: (json['verificationMechanisms'] as List<dynamic>?)
          ?.map((e) =>
              const CognitoUserAttributeKeyConverter().fromJson(e as String))
          .toList(),
      loginMechanism: (json['loginMechanism'] as List<dynamic>?)
          ?.map((e) =>
              const CognitoUserAttributeKeyConverter().fromJson(e as String))
          .toList(),
      loginMechanisms: (json['loginMechanisms'] as List<dynamic>?)
          ?.map((e) =>
              const CognitoUserAttributeKeyConverter().fromJson(e as String))
          .toList(),
    );

Map<String, dynamic> _$CognitoAuthConfigToJson(CognitoAuthConfig instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('OAuth', instance.oAuth?.toJson());
  writeNotNull('authenticationFlowType',
      _$AuthenticationFlowTypeEnumMap[instance.authenticationFlowType]);
  writeNotNull(
      'socialProviders',
      instance.socialProviders
          ?.map((e) => _$SocialProviderEnumMap[e]!)
          .toList());
  writeNotNull(
      'loginMechanism',
      instance.loginMechanism
          ?.map(const CognitoUserAttributeKeyConverter().toJson)
          .toList());
  writeNotNull(
      'loginMechanisms',
      instance.loginMechanisms
          ?.map(const CognitoUserAttributeKeyConverter().toJson)
          .toList());
  writeNotNull(
      'usernameAttributes',
      instance.usernameAttributes
          ?.map(const CognitoUserAttributeKeyConverter().toJson)
          .toList());
  writeNotNull(
      'signupAttributes',
      instance.signupAttributes
          ?.map(const CognitoUserAttributeKeyConverter().toJson)
          .toList());
  writeNotNull('passwordProtectionSettings',
      instance.passwordProtectionSettings?.toJson());
  writeNotNull(
      'mfaConfiguration', _$MfaConfigurationEnumMap[instance.mfaConfiguration]);
  writeNotNull(
      'mfaTypes', instance.mfaTypes?.map((e) => _$MfaTypeEnumMap[e]!).toList());
  writeNotNull(
      'verificationMechanisms',
      instance.verificationMechanisms
          ?.map(const CognitoUserAttributeKeyConverter().toJson)
          .toList());
  return val;
}

const _$AuthenticationFlowTypeEnumMap = {
  AuthenticationFlowType.userSrpAuth: 'USER_SRP_AUTH',
  AuthenticationFlowType.userPasswordAuth: 'USER_PASSWORD_AUTH',
  AuthenticationFlowType.customAuth: 'CUSTOM_AUTH',
  AuthenticationFlowType.customAuthWithSrp: 'CUSTOM_AUTH_WITH_SRP',
  AuthenticationFlowType.customAuthWithoutSrp: 'CUSTOM_AUTH_WITHOUT_SRP',
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
};
