// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storage_plugin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoragePlugin _$StoragePluginFromJson(Map<String, dynamic> json) {
  return StoragePlugin(
    bucket: json['bucket'] as String?,
    region: json['region'] as String?,
    defaultAccessLevel: json['defaultAccessLevel'] as String?,
  );
}

Map<String, dynamic> _$StoragePluginToJson(StoragePlugin instance) =>
    <String, dynamic>{
      'bucket': instance.bucket,
      'region': instance.region,
      'defaultAccessLevel': instance.defaultAccessLevel,
    };
