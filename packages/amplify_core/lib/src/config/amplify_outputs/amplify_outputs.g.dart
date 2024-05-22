// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'amplify_outputs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AmplifyOutputs _$AmplifyOutputsFromJson(Map<String, dynamic> json) =>
    AmplifyOutputs(
      schema: json['schema'] as String?,
      version: json['version'] as String,
      analytics: json['analytics'] == null
          ? null
          : AnalyticsOutputs.fromJson(
              json['analytics'] as Map<String, dynamic>),
      auth: json['auth'] == null
          ? null
          : AuthOutputs.fromJson(json['auth'] as Map<String, dynamic>),
      data: json['data'] == null
          ? null
          : DataOutputs.fromJson(json['data'] as Map<String, dynamic>),
      notifications: json['notifications'] == null
          ? null
          : NotificationsOutputs.fromJson(
              json['notifications'] as Map<String, dynamic>),
      storage: json['storage'] == null
          ? null
          : StorageOutputs.fromJson(json['storage'] as Map<String, dynamic>),
      custom: json['custom'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$AmplifyOutputsToJson(AmplifyOutputs instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('schema', instance.schema);
  val['version'] = instance.version;
  writeNotNull('analytics', instance.analytics?.toJson());
  writeNotNull('auth', instance.auth?.toJson());
  writeNotNull('data', instance.data?.toJson());
  writeNotNull('notifications', instance.notifications?.toJson());
  writeNotNull('storage', instance.storage?.toJson());
  writeNotNull('custom', instance.custom);
  return val;
}
