// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'credentials_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoIdentityCredentialsProvider _$CognitoIdentityCredentialsProviderFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'CognitoIdentityCredentialsProvider',
      json,
      ($checkedConvert) {
        final val = CognitoIdentityCredentialsProvider(
          poolId: $checkedConvert('PoolId', (v) => v as String),
          region: $checkedConvert('Region', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'poolId': 'PoolId', 'region': 'Region'},
    );

Map<String, dynamic> _$CognitoIdentityCredentialsProviderToJson(
        CognitoIdentityCredentialsProvider instance) =>
    <String, dynamic>{
      'PoolId': instance.poolId,
      'Region': instance.region,
    };
