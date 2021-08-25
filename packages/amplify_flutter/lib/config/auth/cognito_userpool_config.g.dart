// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cognito_userpool_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoUserPoolConfig _$CognitoUserPoolConfigFromJson(
    Map<String, dynamic> json) {
  return CognitoUserPoolConfig(
    poolId: json['PoolId'] as String,
    appClientId: json['AppClientId'] as String,
    region: json['Region'] as String,
  );
}

Map<String, dynamic> _$CognitoUserPoolConfigToJson(
        CognitoUserPoolConfig instance) =>
    <String, dynamic>{
      'PoolId': instance.poolId,
      'AppClientId': instance.appClientId,
      'Region': instance.region,
    };
