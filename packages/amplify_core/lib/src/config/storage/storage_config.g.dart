// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'storage_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StorageConfig _$StorageConfigFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'StorageConfig',
      json,
      ($checkedConvert) {
        final val = StorageConfig(
          plugins: $checkedConvert(
              'plugins', (v) => AmplifyPluginRegistry.pluginConfigsFromJson(v)),
        );
        return val;
      },
    );

Map<String, dynamic> _$StorageConfigToJson(StorageConfig instance) =>
    <String, dynamic>{
      'plugins': instance.plugins.map((k, e) => MapEntry(k, e.toJson())),
    };
