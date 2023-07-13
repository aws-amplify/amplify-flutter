// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cloudwatch_logging_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CloudWatchPluginConfig _$CloudWatchPluginConfigFromJson(
        Map<String, dynamic> json) =>
    CloudWatchPluginConfig(
      enable: json['enable'] as bool? ?? true,
      logGroupName: json['logGroupName'] as String,
      region: json['region'] as String,
      localStoreMaxSizeInMB: json['localStoreMaxSizeInMB'] as int? ?? 5,
      flushIntervalInSeconds: json['flushIntervalInSeconds'] as int? ?? 60,
      defaultRemoteConfiguration: json['defaultRemoteConfiguration'] == null
          ? null
          : DefaultRemoteConfiguration.fromJson(
              json['defaultRemoteConfiguration'] as Map<String, dynamic>),
      loggingConstraints: json['loggingConstraints'] == null
          ? null
          : LoggingConstraints.fromJson(
              json['loggingConstraints'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CloudWatchPluginConfigToJson(
    CloudWatchPluginConfig instance) {
  final val = <String, dynamic>{
    'enable': instance.enable,
    'logGroupName': instance.logGroupName,
    'region': instance.region,
    'localStoreMaxSizeInMB': instance.localStoreMaxSizeInMB,
    'flushIntervalInSeconds': instance.flushIntervalInSeconds,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('defaultRemoteConfiguration',
      instance.defaultRemoteConfiguration?.toJson());
  writeNotNull('loggingConstraints', instance.loggingConstraints?.toJson());
  return val;
}

DefaultRemoteConfiguration _$DefaultRemoteConfigurationFromJson(
        Map<String, dynamic> json) =>
    DefaultRemoteConfiguration(
      endpoint: json['Endpoint'] as String,
      refreshIntervalInSeconds:
          json['RefreshIntervalInSeconds'] as int? ?? 1200,
    );

Map<String, dynamic> _$DefaultRemoteConfigurationToJson(
        DefaultRemoteConfiguration instance) =>
    <String, dynamic>{
      'Endpoint': instance.endpoint,
      'RefreshIntervalInSeconds': instance.refreshIntervalInSeconds,
    };

LoggingConstraints _$LoggingConstraintsFromJson(Map<String, dynamic> json) =>
    LoggingConstraints(
      defaultLogLevel: json['DefaultLogLevel'] as String? ?? 'ERROR',
      categoryLogLevel:
          (json['CategoryLogLevel'] as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(k, e as String),
              ) ??
              const {},
      userLogLevel: (json['UserLogLevel'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(k, UserLogLevel.fromJson(e as Map<String, dynamic>)),
          ) ??
          const {},
    );

Map<String, dynamic> _$LoggingConstraintsToJson(LoggingConstraints instance) =>
    <String, dynamic>{
      'DefaultLogLevel': instance.defaultLogLevel,
      'CategoryLogLevel': instance.categoryLogLevel,
      'UserLogLevel':
          instance.userLogLevel.map((k, e) => MapEntry(k, e.toJson())),
    };

UserLogLevel _$UserLogLevelFromJson(Map<String, dynamic> json) => UserLogLevel(
      defaultLogLevel: json['DefaultLogLevel'] as String? ?? 'ERROR',
      categoryLogLevel:
          (json['CategoryLogLevel'] as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(k, e as String),
              ) ??
              const {},
    );

Map<String, dynamic> _$UserLogLevelToJson(UserLogLevel instance) =>
    <String, dynamic>{
      'DefaultLogLevel': instance.defaultLogLevel,
      'CategoryLogLevel': instance.categoryLogLevel,
    };
