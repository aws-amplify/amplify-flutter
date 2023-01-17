// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'analytics_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnalyticsConfig _$AnalyticsConfigFromJson(Map<String, dynamic> json) =>
    AnalyticsConfig(
      plugins: AmplifyPluginRegistry.pluginConfigsFromJson(json['plugins']),
    );

Map<String, dynamic> _$AnalyticsConfigToJson(AnalyticsConfig instance) =>
    <String, dynamic>{
      'plugins': instance.plugins.map((k, e) => MapEntry(k, e.toJson())),
    };
