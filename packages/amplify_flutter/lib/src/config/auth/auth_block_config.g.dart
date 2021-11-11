// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_block_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthBlockConfig _$AuthBlockConfigFromJson(Map<String, dynamic> json) {
  return AuthBlockConfig(
    authenticationFlowType: json['authenticationFlowType'] as String?,
    oAuth: json['OAuth'] == null
        ? null
        : OAuthConfig.fromJson(json['OAuth'] as Map<String, dynamic>),
    usernameAttributes: ((json['usernameAttributes'] as List<dynamic>?)
          ?..addAll(json['loginMechanism'] as List<dynamic>? ?? const []))
        ?.cast<String>()
        ?.map((e) => CognitoUserAttributeKey.values
            .firstWhereOrNull((attr) => e.toLowerCase() == attr.key))
        ?.whereNotNull()
        .toList(),
    socialProviders: (json['socialProviders'] as List<dynamic>?)
        ?.map((e) => _$enumDecode(_$SocialProvidersEnumMap, e))
        .toList(),
    mfaConfiguration: _$enumDecodeNullable(
        _$MfaConfigurationEnumMap, json['mfaConfiguration']),
    passwordProtectionSettings: json['passwordProtectionSettings'] == null
        ? null
        : PasswordProtectionSettings.fromJson(
            json['passwordProtectionSettings'] as Map<String, dynamic>),
    signupAttributes: (json['signupAttributes'] as List<dynamic>?)
        ?.cast<String>()
        ?.map((e) => CognitoUserAttributeKey.values
            .firstWhereOrNull((attr) => e.toLowerCase() == attr.key))
        ?.whereNotNull()
        .toList(),
    mfaTypes: (json['mfaTypes'] as List<dynamic>?)
        ?.map((e) => _$enumDecode(_$MfaTypesEnumMap, e))
        .toList(),
    verificationMechanisms:
        (json['verificationMechanisms'] as List<dynamic>?)?.cast<String>(),
  );
}

Map<String, dynamic> _$AuthBlockConfigToJson(AuthBlockConfig instance) =>
    <String, dynamic>{
      'OAuth': instance.oAuth,
      'usernameAttributes':
          instance.usernameAttributes?.map((e) => e.toString()).toList(),
      'socialProviders': instance.socialProviders
          ?.map((e) => _$SocialProvidersEnumMap[e])
          .toList(),
      'signupAttributes': instance.signupAttributes,
      'passwordProtectionSettings': instance.passwordProtectionSettings,
      'mfaTypes': _$MfaTypesEnumMap[instance.mfaTypes],
      'mfaConfiguration': _$MfaConfigurationEnumMap[instance.mfaConfiguration],
      'authenticationFlowType': instance.authenticationFlowType,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$MfaConfigurationEnumMap = {
  MfaConfiguration.optional: 'OPTIONAL',
  MfaConfiguration.on: 'ON',
  MfaConfiguration.off: 'OFF',
};

const _$MfaTypesEnumMap = {
  MfaTypes.sms: 'SMS',
  MfaTypes.totp: 'TOTP',
};

const _$SocialProvidersEnumMap = {
  SocialProviders.amazon: 'AMAZON',
  SocialProviders.apple: 'APPLE',
  SocialProviders.facebook: 'FACEBOOK',
  SocialProviders.google: 'GOOGLE',
};
