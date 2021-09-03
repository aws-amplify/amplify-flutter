// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_block_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthBlockConfig _$AuthBlockConfigFromJson(Map<String, dynamic> json) {
  return AuthBlockConfig(
    oAuth: json['OAuth'] == null
        ? null
        : OAuthConfig.fromJson(json['OAuth'] as Map<String, dynamic>),
    loginMechanisms: (json['loginMechanisms'] as List<dynamic>?)
        ?.map((e) => _$enumDecode(_$LoginMechanismsEnumMap, e))
        .toList(),
    mfaConfiguration: _$enumDecodeNullable(
        _$MfaConfigurationEnumMap, json['mfaConfiguration']),
    passwordProtectionSettings: json['passwordProtectionSettings'] == null
        ? null
        : PasswordProtectionSettings.fromJson(
            json['passwordProtectionSettings'] as Map<String, dynamic>),
    signupAttributes: (json['signupAttributes'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    mfaTypes: _$enumDecodeNullable(_$MfaTypesEnumMap, json['mfaTypes']),
    authenticationFlowType: json['authenticationFlowType'] as String?,
  );
}

Map<String, dynamic> _$AuthBlockConfigToJson(AuthBlockConfig instance) =>
    <String, dynamic>{
      'OAuth': instance.oAuth,
      'loginMechanisms': instance.loginMechanisms
          ?.map((e) => _$LoginMechanismsEnumMap[e])
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

const _$LoginMechanismsEnumMap = {
  LoginMechanisms.email: 'EMAIL',
  LoginMechanisms.phoneNumber: 'PHONE_NUMBER',
  LoginMechanisms.PreferredUsername: 'PREFERRED_USERNAME',
  LoginMechanisms.Facebook: 'FACEBOOK',
  LoginMechanisms.Google: 'GOOGLE',
  LoginMechanisms.Amazon: 'AMAZON',
  LoginMechanisms.Apple: 'APPLE',
};

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
  MfaConfiguration.Optional: 'OPTIONAL',
  MfaConfiguration.On: 'ON',
  MfaConfiguration.Off: 'OFF',
};

const _$MfaTypesEnumMap = {
  MfaTypes.sms: 'SMS',
  MfaTypes.totp: 'TOTP',
};
