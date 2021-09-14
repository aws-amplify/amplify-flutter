// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storage_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StorageConfig _$StorageConfigFromJson(Map<String, dynamic> json) {
  return StorageConfig(
    (json['plugins'] as Map<String, dynamic>).map(
      (k, e) => MapEntry(k, StoragePlugin.fromJson(e as Map<String, dynamic>)),
    ),
  );
}

Map<String, dynamic> _$StorageConfigToJson(StorageConfig instance) =>
    <String, dynamic>{
      'plugins': instance.plugins,
    };
