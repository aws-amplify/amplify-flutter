// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plugin_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoggingConstraint _$LoggingConstraintFromJson(Map<String, dynamic> json) =>
    LoggingConstraint(
      defaultLogLevel:
          $enumDecodeNullable(_$LogLevelEnumMap, json['defaultLogLevel']) ??
              LogLevel.error,
      categoryLogLevel:
          (json['categoryLogLevel'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, $enumDecode(_$LogLevelEnumMap, e)),
      ),
      userLogLevel: (json['userLogLevel'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, UserLogLevel.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$LoggingConstraintToJson(LoggingConstraint instance) =>
    <String, dynamic>{
      'defaultLogLevel': _$LogLevelEnumMap[instance.defaultLogLevel]!,
      'categoryLogLevel': instance.categoryLogLevel
          ?.map((k, e) => MapEntry(k, _$LogLevelEnumMap[e]!)),
      'userLogLevel': instance.userLogLevel,
    };

const _$LogLevelEnumMap = {
  LogLevel.verbose: 'verbose',
  LogLevel.debug: 'debug',
  LogLevel.info: 'info',
  LogLevel.warn: 'warn',
  LogLevel.error: 'error',
  LogLevel.none: 'none',
};

UserLogLevel _$UserLogLevelFromJson(Map<String, dynamic> json) => UserLogLevel(
      defaultLogLevel:
          $enumDecodeNullable(_$LogLevelEnumMap, json['defaultLogLevel']),
      categoryLogLevel:
          (json['categoryLogLevel'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, $enumDecode(_$LogLevelEnumMap, e)),
      ),
    );

Map<String, dynamic> _$UserLogLevelToJson(UserLogLevel instance) =>
    <String, dynamic>{
      'defaultLogLevel': _$LogLevelEnumMap[instance.defaultLogLevel],
      'categoryLogLevel': instance.categoryLogLevel
          ?.map((k, e) => MapEntry(k, _$LogLevelEnumMap[e]!)),
    };
