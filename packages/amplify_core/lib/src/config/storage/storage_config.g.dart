// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'storage_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StorageConfig _$StorageConfigFromJson(Map<String, dynamic> json) =>
    StorageConfig(
      plugins: AmplifyPluginRegistry.pluginConfigsFromJson(json['plugins']),
    );

Map<String, dynamic> _$StorageConfigToJson(StorageConfig instance) =>
    <String, dynamic>{
      'plugins': instance.plugins.map((k, e) => MapEntry(k, e.toJson())),
    };
