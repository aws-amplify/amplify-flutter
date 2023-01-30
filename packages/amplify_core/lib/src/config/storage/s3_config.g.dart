// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 's3_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

S3PluginConfig _$S3PluginConfigFromJson(Map<String, dynamic> json) =>
    S3PluginConfig(
      bucket: json['bucket'] as String,
      region: json['region'] as String,
      defaultAccessLevel: $enumDecodeNullable(
              _$StorageAccessLevelEnumMap, json['defaultAccessLevel']) ??
          StorageAccessLevel.guest,
    );

Map<String, dynamic> _$S3PluginConfigToJson(S3PluginConfig instance) =>
    <String, dynamic>{
      'bucket': instance.bucket,
      'region': instance.region,
      'defaultAccessLevel':
          _$StorageAccessLevelEnumMap[instance.defaultAccessLevel]!,
    };

const _$StorageAccessLevelEnumMap = {
  StorageAccessLevel.guest: 'guest',
  StorageAccessLevel.protected: 'protected',
  StorageAccessLevel.private: 'private',
};
