// GENERATED CODE - DO NOT MODIFY BY HAND

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
  StorageAccessLevel.private: 'private',
  StorageAccessLevel.protected: 'protected',
};
