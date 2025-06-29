// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'user_pool.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoUserPoolConfig _$CognitoUserPoolConfigFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'CognitoUserPoolConfig',
  json,
  ($checkedConvert) {
    final val = CognitoUserPoolConfig(
      poolId: $checkedConvert('PoolId', (v) => v as String),
      appClientId: $checkedConvert('AppClientId', (v) => v as String),
      appClientSecret: $checkedConvert('AppClientSecret', (v) => v as String?),
      region: $checkedConvert('Region', (v) => v as String),
      hostedUI: $checkedConvert(
        'HostedUI',
        (v) => v == null
            ? null
            : CognitoOAuthConfig.fromJson(v as Map<String, dynamic>),
      ),
      endpoint: $checkedConvert('Endpoint', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'poolId': 'PoolId',
    'appClientId': 'AppClientId',
    'appClientSecret': 'AppClientSecret',
    'region': 'Region',
    'hostedUI': 'HostedUI',
    'endpoint': 'Endpoint',
  },
);

Map<String, dynamic> _$CognitoUserPoolConfigToJson(
  CognitoUserPoolConfig instance,
) => <String, dynamic>{
  'PoolId': instance.poolId,
  'AppClientId': instance.appClientId,
  if (instance.appClientSecret case final value?) 'AppClientSecret': value,
  'Region': instance.region,
  if (instance.hostedUI?.toJson() case final value?) 'HostedUI': value,
  if (instance.endpoint case final value?) 'Endpoint': value,
};
