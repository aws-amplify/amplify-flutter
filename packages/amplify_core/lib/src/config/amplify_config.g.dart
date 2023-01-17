// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

part of 'amplify_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AmplifyConfig _$AmplifyConfigFromJson(Map<String, dynamic> json) =>
    AmplifyConfig(
      userAgent: json['UserAgent'] as String? ?? 'aws-amplify-cli/2.0',
      version: json['Version'] as String? ?? '1.0',
      api: json['api'] == null
          ? null
          : ApiConfig.fromJson(json['api'] as Map<String, dynamic>),
      analytics: json['analytics'] == null
          ? null
          : AnalyticsConfig.fromJson(json['analytics'] as Map<String, dynamic>),
      auth: json['auth'] == null
          ? null
          : AuthConfig.fromJson(json['auth'] as Map<String, dynamic>),
      storage: json['storage'] == null
          ? null
          : StorageConfig.fromJson(json['storage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AmplifyConfigToJson(AmplifyConfig instance) {
  final val = <String, dynamic>{
    'UserAgent': instance.userAgent,
    'Version': instance.version,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('api', instance.api?.toJson());
  writeNotNull('analytics', instance.analytics?.toJson());
  writeNotNull('auth', instance.auth?.toJson());
  writeNotNull('storage', instance.storage?.toJson());
  return val;
}
