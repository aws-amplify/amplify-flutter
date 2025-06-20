// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'amplify_outputs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AmplifyOutputs _$AmplifyOutputsFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('AmplifyOutputs', json, ($checkedConvert) {
  final val = AmplifyOutputs(
    schema: $checkedConvert('schema', (v) => v as String?),
    version: $checkedConvert('version', (v) => v as String),
    analytics: $checkedConvert(
      'analytics',
      (v) => v == null
          ? null
          : AnalyticsOutputs.fromJson(v as Map<String, dynamic>),
    ),
    auth: $checkedConvert(
      'auth',
      (v) => v == null ? null : AuthOutputs.fromJson(v as Map<String, dynamic>),
    ),
    data: $checkedConvert(
      'data',
      (v) => _dataFromJson(v as Map<String, Object?>?),
    ),
    restApi: $checkedConvert(
      'rest_api',
      (v) => (v as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, RestApiOutputs.fromJson(e as Map<String, dynamic>)),
      ),
    ),
    notifications: $checkedConvert(
      'notifications',
      (v) => v == null
          ? null
          : NotificationsOutputs.fromJson(v as Map<String, dynamic>),
    ),
    storage: $checkedConvert(
      'storage',
      (v) =>
          v == null ? null : StorageOutputs.fromJson(v as Map<String, dynamic>),
    ),
    custom: $checkedConvert('custom', (v) => v as Map<String, dynamic>?),
  );
  return val;
}, fieldKeyMap: const {'restApi': 'rest_api'});

Map<String, dynamic> _$AmplifyOutputsToJson(AmplifyOutputs instance) =>
    <String, dynamic>{
      if (instance.schema case final value?) 'schema': value,
      'version': instance.version,
      if (instance.analytics?.toJson() case final value?) 'analytics': value,
      if (instance.auth?.toJson() case final value?) 'auth': value,
      if (_dataToJson(instance.data) case final value?) 'data': value,
      if (instance.notifications?.toJson() case final value?)
        'notifications': value,
      if (instance.storage?.toJson() case final value?) 'storage': value,
      if (instance.custom case final value?) 'custom': value,
    };
