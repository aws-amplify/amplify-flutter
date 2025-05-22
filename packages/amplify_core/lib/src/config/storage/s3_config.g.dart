// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 's3_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

S3PluginConfig _$S3PluginConfigFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'S3PluginConfig',
      json,
      ($checkedConvert) {
        final val = S3PluginConfig(
          bucket: $checkedConvert('bucket', (v) => v as String),
          region: $checkedConvert('region', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$S3PluginConfigToJson(S3PluginConfig instance) =>
    <String, dynamic>{
      'bucket': instance.bucket,
      'region': instance.region,
    };
