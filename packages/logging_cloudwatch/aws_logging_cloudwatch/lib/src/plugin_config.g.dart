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

Map<String, dynamic> _$LoggingConstraintToJson(LoggingConstraint instance) {
  final val = <String, dynamic>{
    'defaultLogLevel': _$LogLevelEnumMap[instance.defaultLogLevel]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'categoryLogLevel',
      instance.categoryLogLevel
          ?.map((k, e) => MapEntry(k, _$LogLevelEnumMap[e]!)));
  writeNotNull('userLogLevel',
      instance.userLogLevel?.map((k, e) => MapEntry(k, e.toJson())));
  return val;
}

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

Map<String, dynamic> _$UserLogLevelToJson(UserLogLevel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('defaultLogLevel', _$LogLevelEnumMap[instance.defaultLogLevel]);
  writeNotNull(
      'categoryLogLevel',
      instance.categoryLogLevel
          ?.map((k, e) => MapEntry(k, _$LogLevelEnumMap[e]!)));
  return val;
}
