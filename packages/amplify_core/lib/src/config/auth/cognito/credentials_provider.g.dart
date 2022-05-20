// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credentials_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoIdentityCredentialsProvider _$CognitoIdentityCredentialsProviderFromJson(
        Map<String, dynamic> json) =>
    CognitoIdentityCredentialsProvider(
      poolId: json['PoolId'] as String,
      region: json['Region'] as String,
    );

Map<String, dynamic> _$CognitoIdentityCredentialsProviderToJson(
        CognitoIdentityCredentialsProvider instance) =>
    <String, dynamic>{
      'PoolId': instance.poolId,
      'Region': instance.region,
    };
