// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'pinpoint_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PinpointPluginConfig _$PinpointPluginConfigFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PinpointPluginConfig',
      json,
      ($checkedConvert) {
        final val = PinpointPluginConfig(
          pinpointAnalytics: $checkedConvert('pinpointAnalytics',
              (v) => PinpointAnalytics.fromJson(v as Map<String, dynamic>)),
          pinpointTargeting: $checkedConvert('pinpointTargeting',
              (v) => PinpointTargeting.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$PinpointPluginConfigToJson(
        PinpointPluginConfig instance) =>
    <String, dynamic>{
      'pinpointAnalytics': instance.pinpointAnalytics.toJson(),
      'pinpointTargeting': instance.pinpointTargeting.toJson(),
    };

PinpointAnalytics _$PinpointAnalyticsFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PinpointAnalytics',
      json,
      ($checkedConvert) {
        final val = PinpointAnalytics(
          appId: $checkedConvert('appId', (v) => v as String),
          region: $checkedConvert('region', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$PinpointAnalyticsToJson(PinpointAnalytics instance) =>
    <String, dynamic>{
      'appId': instance.appId,
      'region': instance.region,
    };

PinpointTargeting _$PinpointTargetingFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PinpointTargeting',
      json,
      ($checkedConvert) {
        final val = PinpointTargeting(
          region: $checkedConvert('region', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$PinpointTargetingToJson(PinpointTargeting instance) =>
    <String, dynamic>{
      'region': instance.region,
    };
