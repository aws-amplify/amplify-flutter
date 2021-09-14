// GENERATED CODE - DO NOT MODIFY BY HAND

part of 's3_transfer_utility_auth_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

S3TransferUtilityAuthConfig _$S3TransferUtilityAuthConfigFromJson(
    Map<String, dynamic> json) {
  return S3TransferUtilityAuthConfig(
    bucket: json['Bucket'] as String?,
    region: json['Region'] as String?,
  );
}

Map<String, dynamic> _$S3TransferUtilityAuthConfigToJson(
        S3TransferUtilityAuthConfig instance) =>
    <String, dynamic>{
      'Bucket': instance.bucket,
      'Region': instance.region,
    };
