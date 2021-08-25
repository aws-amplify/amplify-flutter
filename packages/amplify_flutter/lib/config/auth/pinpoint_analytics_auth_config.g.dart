// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pinpoint_analytics_auth_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PinpointAnalyticsAuthConfig _$PinpointAnalyticsAuthConfigFromJson(
    Map<String, dynamic> json) {
  return PinpointAnalyticsAuthConfig(
    appId: json['AppId'] as String,
    region: json['Region'] as String,
  );
}

Map<String, dynamic> _$PinpointAnalyticsAuthConfigToJson(
        PinpointAnalyticsAuthConfig instance) =>
    <String, dynamic>{
      'AppId': instance.appId,
      'Region': instance.region,
    };
