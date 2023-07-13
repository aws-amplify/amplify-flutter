// GENERATED CODE - DO NOT MODIFY BY HAND

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
