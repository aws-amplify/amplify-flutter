// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'logging_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoggingConfig _$LoggingConfigFromJson(Map<String, dynamic> json) =>
    LoggingConfig(
      plugins: AmplifyPluginRegistry.pluginConfigsFromJson(json['plugins']),
    );

Map<String, dynamic> _$LoggingConfigToJson(LoggingConfig instance) =>
    <String, dynamic>{
      'plugins': instance.plugins.map((k, e) => MapEntry(k, e.toJson())),
    };
