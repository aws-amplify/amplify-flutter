// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

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
