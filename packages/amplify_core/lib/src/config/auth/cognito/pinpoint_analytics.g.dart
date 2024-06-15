// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'pinpoint_analytics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CognitoPinpointAnalyticsConfig _$CognitoPinpointAnalyticsConfigFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'CognitoPinpointAnalyticsConfig',
      json,
      ($checkedConvert) {
        final val = CognitoPinpointAnalyticsConfig(
          appId: $checkedConvert('AppId', (v) => v as String),
          region: $checkedConvert('Region', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'appId': 'AppId', 'region': 'Region'},
    );

Map<String, dynamic> _$CognitoPinpointAnalyticsConfigToJson(
        CognitoPinpointAnalyticsConfig instance) =>
    <String, dynamic>{
      'AppId': instance.appId,
      'Region': instance.region,
    };
