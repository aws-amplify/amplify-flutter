// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'amplify_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AmplifyConfig _$AmplifyConfigFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'AmplifyConfig',
  json,
  ($checkedConvert) {
    final val = AmplifyConfig(
      userAgent: $checkedConvert(
        'UserAgent',
        (v) => v as String? ?? 'aws-amplify-cli/2.0',
      ),
      version: $checkedConvert('Version', (v) => v as String? ?? '1.0'),
      api: $checkedConvert(
        'api',
        (v) => v == null ? null : ApiConfig.fromJson(v as Map<String, dynamic>),
      ),
      analytics: $checkedConvert(
        'analytics',
        (v) => v == null
            ? null
            : AnalyticsConfig.fromJson(v as Map<String, dynamic>),
      ),
      auth: $checkedConvert(
        'auth',
        (v) =>
            v == null ? null : AuthConfig.fromJson(v as Map<String, dynamic>),
      ),
      notifications: $checkedConvert(
        'notifications',
        (v) => v == null
            ? null
            : NotificationsConfig.fromJson(v as Map<String, dynamic>),
      ),
      storage: $checkedConvert(
        'storage',
        (v) => v == null
            ? null
            : StorageConfig.fromJson(v as Map<String, dynamic>),
      ),
    );
    return val;
  },
  fieldKeyMap: const {'userAgent': 'UserAgent', 'version': 'Version'},
);

Map<String, dynamic> _$AmplifyConfigToJson(AmplifyConfig instance) =>
    <String, dynamic>{
      'UserAgent': instance.userAgent,
      'Version': instance.version,
      if (instance.api?.toJson() case final value?) 'api': value,
      if (instance.analytics?.toJson() case final value?) 'analytics': value,
      if (instance.auth?.toJson() case final value?) 'auth': value,
      if (instance.notifications?.toJson() case final value?)
        'notifications': value,
      if (instance.storage?.toJson() case final value?) 'storage': value,
    };
