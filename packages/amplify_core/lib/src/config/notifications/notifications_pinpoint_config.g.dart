// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'notifications_pinpoint_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationsPinpointPluginConfig _$NotificationsPinpointPluginConfigFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'NotificationsPinpointPluginConfig',
      json,
      ($checkedConvert) {
        final val = NotificationsPinpointPluginConfig(
          appId: $checkedConvert('appId', (v) => v as String),
          region: $checkedConvert('region', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$NotificationsPinpointPluginConfigToJson(
        NotificationsPinpointPluginConfig instance) =>
    <String, dynamic>{
      'appId': instance.appId,
      'region': instance.region,
    };
