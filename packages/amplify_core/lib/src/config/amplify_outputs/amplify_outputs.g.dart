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
      data: _dataFromJson(json['data'] as Map<String, Object?>?),
      restApi: (json['rest_api'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, RestApiOutputs.fromJson(e as Map<String, dynamic>)),
      ),
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
  writeNotNull('data', _dataToJson(instance.data));
  writeNotNull(
      'rest_api', instance.restApi?.map((k, e) => MapEntry(k, e.toJson())));
  writeNotNull('notifications', instance.notifications?.toJson());
  writeNotNull('storage', instance.storage?.toJson());
  writeNotNull('custom', instance.custom);
  return val;
}
