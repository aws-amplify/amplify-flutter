// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'auth_outputs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthOutputs _$AuthOutputsFromJson(Map<String, dynamic> json) => AuthOutputs(
      awsRegion: json['aws_region'] as String,
      userPoolId: json['user_pool_id'] as String,
      userPoolClientId: json['user_pool_client_id'] as String,
      identityPoolId: json['identity_pool_id'] as String?,
      passwordPolicy: json['password_policy'] == null
          ? null
          : PasswordPolicy.fromJson(
              json['password_policy'] as Map<String, dynamic>),
      oauth: json['oauth'] == null
          ? null
          : OAuthOutputs.fromJson(json['oauth'] as Map<String, dynamic>),
      standardRequiredAttributes: (json['standard_required_attributes']
              as List<dynamic>?)
          ?.map((e) =>
              const CognitoUserAttributeKeyConverter().fromJson(e as String))
          .toList(),
      usernameAttributes: (json['username_attributes'] as List<dynamic>?)
          ?.map((e) =>
              const CognitoUserAttributeKeyConverter().fromJson(e as String))
          .toList(),
      userVerificationTypes: (json['user_verification_types'] as List<dynamic>?)
          ?.map((e) =>
              const CognitoUserAttributeKeyConverter().fromJson(e as String))
          .toList(),
      unauthenticatedIdentitiesEnabled:
          json['unauthenticated_identities_enabled'] as bool? ?? true,
      mfaConfiguration: $enumDecodeNullable(
          _$MfaEnforcementEnumMap, json['mfa_configuration']),
      mfaMethods: (json['mfa_methods'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$MfaMethodEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$AuthOutputsToJson(AuthOutputs instance) {
  final val = <String, dynamic>{
    'aws_region': instance.awsRegion,
    'user_pool_id': instance.userPoolId,
    'user_pool_client_id': instance.userPoolClientId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('identity_pool_id', instance.identityPoolId);
  writeNotNull('password_policy', instance.passwordPolicy?.toJson());
  writeNotNull('oauth', instance.oauth?.toJson());
  writeNotNull(
      'standard_required_attributes',
      instance.standardRequiredAttributes
          ?.map(const CognitoUserAttributeKeyConverter().toJson)
          .toList());
  writeNotNull(
      'username_attributes',
      instance.usernameAttributes
          ?.map(const CognitoUserAttributeKeyConverter().toJson)
          .toList());
  writeNotNull(
      'user_verification_types',
      instance.userVerificationTypes
          ?.map(const CognitoUserAttributeKeyConverter().toJson)
          .toList());
  val['unauthenticated_identities_enabled'] =
      instance.unauthenticatedIdentitiesEnabled;
  writeNotNull(
      'mfa_configuration', _$MfaEnforcementEnumMap[instance.mfaConfiguration]);
  writeNotNull('mfa_methods',
      instance.mfaMethods?.map((e) => _$MfaMethodEnumMap[e]!).toList());
  return val;
}

const _$MfaEnforcementEnumMap = {
  MfaEnforcement.optional: 'OPTIONAL',
  MfaEnforcement.on: 'REQUIRED',
  MfaEnforcement.off: 'NONE',
};

const _$MfaMethodEnumMap = {
  MfaMethod.sms: 'SMS',
  MfaMethod.totp: 'TOTP',
};
