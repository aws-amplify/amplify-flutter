// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amplify_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AmplifyConfig _$AmplifyConfigFromJson(Map<String, dynamic> json) {
  return AmplifyConfig(
    userAgent: json['UserAgent'] as String?,
    version: json['Version'] as String?,
    analytics: json['analytics'] == null
        ? null
        : AnalyticsConfig.fromJson(json['analytics'] as Map<String, dynamic>),
    api: json['api'] == null
        ? null
        : ApiConfig.fromJson(json['api'] as Map<String, dynamic>),
    auth: json['auth'] == null
        ? null
        : AuthConfig.fromJson(json['auth'] as Map<String, dynamic>),
    storage: json['storage'] == null
        ? null
        : StorageConfig.fromJson(json['storage'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AmplifyConfigToJson(AmplifyConfig instance) =>
    <String, dynamic>{
      'UserAgent': instance.userAgent,
      'Version': instance.version,
      'analytics': instance.analytics,
      'api': instance.api,
      'auth': instance.auth,
      'storage': instance.storage,
    };
