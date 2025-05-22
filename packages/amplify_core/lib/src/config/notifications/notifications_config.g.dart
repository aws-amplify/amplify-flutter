// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'notifications_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationsConfig _$NotificationsConfigFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'NotificationsConfig',
      json,
      ($checkedConvert) {
        final val = NotificationsConfig(
          plugins: $checkedConvert(
              'plugins', (v) => AmplifyPluginRegistry.pluginConfigsFromJson(v)),
        );
        return val;
      },
    );

Map<String, dynamic> _$NotificationsConfigToJson(
        NotificationsConfig instance) =>
    <String, dynamic>{
      'plugins': instance.plugins.map((k, e) => MapEntry(k, e.toJson())),
    };
