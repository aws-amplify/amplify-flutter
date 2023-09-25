// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: deprecated_member_use_from_same_package

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
          ? const LoggingConstraints()
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
  val['loggingConstraints'] = instance.loggingConstraints.toJson();
  return val;
}

DefaultRemoteConfiguration _$DefaultRemoteConfigurationFromJson(
        Map<String, dynamic> json) =>
    DefaultRemoteConfiguration(
      endpoint: json['endpoint'] as String,
      refreshIntervalInSeconds:
          json['refreshIntervalInSeconds'] as int? ?? 1200,
    );

Map<String, dynamic> _$DefaultRemoteConfigurationToJson(
        DefaultRemoteConfiguration instance) =>
    <String, dynamic>{
      'endpoint': instance.endpoint,
      'refreshIntervalInSeconds': instance.refreshIntervalInSeconds,
    };

LoggingConstraints _$LoggingConstraintsFromJson(Map<String, dynamic> json) =>
    LoggingConstraints(
      defaultLogLevel:
          $enumDecodeNullable(_$LogLevelEnumMap, json['defaultLogLevel']) ??
              LogLevel.error,
      categoryLogLevel:
          (json['categoryLogLevel'] as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(k, $enumDecode(_$LogLevelEnumMap, e)),
              ) ??
              const {},
      userLogLevel: (json['userLogLevel'] as Map<String, dynamic>?)?.map(
            (k, e) =>
                MapEntry(k, UserLogLevel.fromJson(e as Map<String, dynamic>)),
          ) ??
          const {},
    );

Map<String, dynamic> _$LoggingConstraintsToJson(LoggingConstraints instance) =>
    <String, dynamic>{
      'defaultLogLevel': _$LogLevelEnumMap[instance.defaultLogLevel]!,
      'categoryLogLevel': instance.categoryLogLevel
          .map((k, e) => MapEntry(k, _$LogLevelEnumMap[e]!)),
      'userLogLevel':
          instance.userLogLevel.map((k, e) => MapEntry(k, e.toJson())),
    };

const _$LogLevelEnumMap = {
  LogLevel.verbose: 'VERBOSE',
  LogLevel.debug: 'DEBUG',
  LogLevel.info: 'INFO',
  LogLevel.warn: 'WARN',
  LogLevel.error: 'ERROR',
  LogLevel.none: 'NONE',
};

UserLogLevel _$UserLogLevelFromJson(Map<String, dynamic> json) => UserLogLevel(
      defaultLogLevel:
          $enumDecodeNullable(_$LogLevelEnumMap, json['defaultLogLevel']) ??
              LogLevel.error,
      categoryLogLevel:
          (json['categoryLogLevel'] as Map<String, dynamic>?)?.map(
                (k, e) => MapEntry(k, e as String),
              ) ??
              const {},
    );

Map<String, dynamic> _$UserLogLevelToJson(UserLogLevel instance) =>
    <String, dynamic>{
      'defaultLogLevel': _$LogLevelEnumMap[instance.defaultLogLevel]!,
      'categoryLogLevel': instance.categoryLogLevel,
    };
