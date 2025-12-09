// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'auth_outputs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthOutputs _$AuthOutputsFromJson(Map<String, dynamic> json) => $checkedCreate(
  'AuthOutputs',
  json,
  ($checkedConvert) {
    final val = AuthOutputs(
      awsRegion: $checkedConvert('aws_region', (v) => v as String),
      userPoolId: $checkedConvert('user_pool_id', (v) => v as String?),
      userPoolClientId: $checkedConvert(
        'user_pool_client_id',
        (v) => v as String?,
      ),
      appClientSecret: $checkedConvert(
        'app_client_secret',
        (v) => v as String?,
      ),
      identityPoolId: $checkedConvert('identity_pool_id', (v) => v as String?),
      passwordPolicy: $checkedConvert(
        'password_policy',
        (v) => v == null
            ? null
            : PasswordPolicy.fromJson(v as Map<String, dynamic>),
      ),
      oauth: $checkedConvert(
        'oauth',
        (v) =>
            v == null ? null : OAuthOutputs.fromJson(v as Map<String, dynamic>),
      ),
      standardRequiredAttributes: $checkedConvert(
        'standard_required_attributes',
        (v) => (v as List<dynamic>?)
            ?.map(
              (e) => const CognitoUserAttributeKeyConverter().fromJson(
                e as String,
              ),
            )
            .toList(),
      ),
      usernameAttributes: $checkedConvert(
        'username_attributes',
        (v) => (v as List<dynamic>?)
            ?.map(
              (e) => const CognitoUserAttributeKeyConverter().fromJson(
                e as String,
              ),
            )
            .toList(),
      ),
      userVerificationTypes: $checkedConvert(
        'user_verification_types',
        (v) => (v as List<dynamic>?)
            ?.map(
              (e) => const CognitoUserAttributeKeyConverter().fromJson(
                e as String,
              ),
            )
            .toList(),
      ),
      unauthenticatedIdentitiesEnabled: $checkedConvert(
        'unauthenticated_identities_enabled',
        (v) => v as bool? ?? true,
      ),
      mfaConfiguration: $checkedConvert(
        'mfa_configuration',
        (v) => $enumDecodeNullable(_$MfaEnforcementEnumMap, v),
      ),
      mfaMethods: $checkedConvert(
        'mfa_methods',
        (v) => (v as List<dynamic>?)
            ?.map((e) => $enumDecode(_$MfaMethodEnumMap, e))
            .toList(),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'awsRegion': 'aws_region',
    'userPoolId': 'user_pool_id',
    'userPoolClientId': 'user_pool_client_id',
    'appClientSecret': 'app_client_secret',
    'identityPoolId': 'identity_pool_id',
    'passwordPolicy': 'password_policy',
    'standardRequiredAttributes': 'standard_required_attributes',
    'usernameAttributes': 'username_attributes',
    'userVerificationTypes': 'user_verification_types',
    'unauthenticatedIdentitiesEnabled': 'unauthenticated_identities_enabled',
    'mfaConfiguration': 'mfa_configuration',
    'mfaMethods': 'mfa_methods',
  },
);

Map<String, dynamic> _$AuthOutputsToJson(AuthOutputs instance) =>
    <String, dynamic>{
      'aws_region': instance.awsRegion,
      'user_pool_id': ?instance.userPoolId,
      'user_pool_client_id': ?instance.userPoolClientId,
      'app_client_secret': ?instance.appClientSecret,
      'identity_pool_id': ?instance.identityPoolId,
      'password_policy': ?instance.passwordPolicy?.toJson(),
      'oauth': ?instance.oauth?.toJson(),
      'standard_required_attributes': ?instance.standardRequiredAttributes
          ?.map(const CognitoUserAttributeKeyConverter().toJson)
          .toList(),
      'username_attributes': ?instance.usernameAttributes
          ?.map(const CognitoUserAttributeKeyConverter().toJson)
          .toList(),
      'user_verification_types': ?instance.userVerificationTypes
          ?.map(const CognitoUserAttributeKeyConverter().toJson)
          .toList(),
      'unauthenticated_identities_enabled':
          instance.unauthenticatedIdentitiesEnabled,
      'mfa_configuration': ?_$MfaEnforcementEnumMap[instance.mfaConfiguration],
      'mfa_methods': ?instance.mfaMethods
          ?.map((e) => _$MfaMethodEnumMap[e]!)
          .toList(),
    };

const _$MfaEnforcementEnumMap = {
  MfaEnforcement.optional: 'OPTIONAL',
  MfaEnforcement.on: 'REQUIRED',
  MfaEnforcement.off: 'NONE',
};

const _$MfaMethodEnumMap = {
  MfaMethod.sms: 'SMS',
  MfaMethod.totp: 'TOTP',
  MfaMethod.email: 'EMAIL',
};
