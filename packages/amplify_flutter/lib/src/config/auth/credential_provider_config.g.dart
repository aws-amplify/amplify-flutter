// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential_provider_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CredentialProviderConfig _$CredentialProviderConfigFromJson(
    Map<String, dynamic> json) {
  return CredentialProviderConfig(
    poolId: json['PoolId'] as String?,
    region: json['Region'] as String?,
  );
}

Map<String, dynamic> _$CredentialProviderConfigToJson(
        CredentialProviderConfig instance) =>
    <String, dynamic>{
      'PoolId': instance.poolId,
      'Region': instance.region,
    };
