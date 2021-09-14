// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnalyticsConfig _$AnalyticsConfigFromJson(Map<String, dynamic> json) {
  return AnalyticsConfig(
    (json['plugins'] as Map<String, dynamic>).map(
      (k, e) =>
          MapEntry(k, AnalyticsPlugin.fromJson(e as Map<String, dynamic>)),
    ),
  );
}

Map<String, dynamic> _$AnalyticsConfigToJson(AnalyticsConfig instance) =>
    <String, dynamic>{
      'plugins': instance.plugins,
    };
