// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_plugin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnalyticsPlugin _$AnalyticsPluginFromJson(Map<String, dynamic> json) {
  return AnalyticsPlugin(
    pinpointAnalytics: PinpointAnalyticsConfig.fromJson(
        json['pinpointAnalytics'] as Map<String, dynamic>),
    pinpointTargeting: PinpointTargetingConfig.fromJson(
        json['pinpointTargeting'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AnalyticsPluginToJson(AnalyticsPlugin instance) =>
    <String, dynamic>{
      'pinpointAnalytics': instance.pinpointAnalytics,
      'pinpointTargeting': instance.pinpointTargeting,
    };
