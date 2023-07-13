// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiConfig _$ApiConfigFromJson(Map<String, dynamic> json) => ApiConfig(
      plugins: AmplifyPluginRegistry.pluginConfigsFromJson(json['plugins']),
    );

Map<String, dynamic> _$ApiConfigToJson(ApiConfig instance) => <String, dynamic>{
      'plugins': instance.plugins.map((k, e) => MapEntry(k, e.toJson())),
    };
