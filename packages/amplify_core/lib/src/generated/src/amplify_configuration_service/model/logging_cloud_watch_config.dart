// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.logging_cloud_watch_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_core/amplify_config.dart' as _i2;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/amplify_logging_constraints.dart'
    as _i4;
import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/logging_remote_config.dart'
    as _i3;
import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i5;

part 'logging_cloud_watch_config.g.dart';

abstract class LoggingCloudWatchConfig
    with _i1.AWSEquatable<LoggingCloudWatchConfig>
    implements Built<LoggingCloudWatchConfig, LoggingCloudWatchConfigBuilder> {
  factory LoggingCloudWatchConfig({
    required String logGroupName,
    required String region,
    bool? enable,
    _i2.LocalStorageSize? localStoreMaxSize,
    Duration? flushInterval,
    _i3.LoggingRemoteConfig? defaultRemoteConfiguration,
    _i4.AmplifyLoggingConstraints? loggingConstraints,
  }) {
    enable ??= true;
    localStoreMaxSize ??= const _i2.LocalStorageSize.MB(5);
    flushInterval ??= const Duration(seconds: 60);
    return _$LoggingCloudWatchConfig._(
      logGroupName: logGroupName,
      region: region,
      enable: enable,
      localStoreMaxSize: localStoreMaxSize.inMegabytes,
      flushInterval: flushInterval.inSeconds,
      defaultRemoteConfiguration: defaultRemoteConfiguration,
      loggingConstraints: loggingConstraints,
    );
  }

  factory LoggingCloudWatchConfig.build(
          [void Function(LoggingCloudWatchConfigBuilder) updates]) =
      _$LoggingCloudWatchConfig;

  const LoggingCloudWatchConfig._();

  static const List<_i5.SmithySerializer<LoggingCloudWatchConfig>> serializers =
      [LoggingCloudWatchConfigSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LoggingCloudWatchConfigBuilder b) {
    b
      ..enable = true
      ..localStoreMaxSize = 5
      ..flushInterval = 60;
  }

  String get logGroupName;
  String get region;
  bool get enable;
  int get localStoreMaxSize;
  int get flushInterval;
  _i3.LoggingRemoteConfig? get defaultRemoteConfiguration;
  _i4.AmplifyLoggingConstraints? get loggingConstraints;
  @override
  List<Object?> get props => [
        logGroupName,
        region,
        enable,
        localStoreMaxSize,
        flushInterval,
        defaultRemoteConfiguration,
        loggingConstraints,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LoggingCloudWatchConfig')
      ..add(
        'logGroupName',
        logGroupName,
      )
      ..add(
        'region',
        region,
      )
      ..add(
        'enable',
        enable,
      )
      ..add(
        'localStoreMaxSize',
        localStoreMaxSize,
      )
      ..add(
        'flushInterval',
        flushInterval,
      )
      ..add(
        'defaultRemoteConfiguration',
        defaultRemoteConfiguration,
      )
      ..add(
        'loggingConstraints',
        loggingConstraints,
      );
    return helper.toString();
  }
}

class LoggingCloudWatchConfigSerializer
    extends _i5.StructuredSmithySerializer<LoggingCloudWatchConfig> {
  const LoggingCloudWatchConfigSerializer() : super('LoggingCloudWatchConfig');

  @override
  Iterable<Type> get types => const [
        LoggingCloudWatchConfig,
        _$LoggingCloudWatchConfig,
      ];
  @override
  Iterable<_i5.ShapeId> get supportedProtocols => const [
        _i5.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  LoggingCloudWatchConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LoggingCloudWatchConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'defaultRemoteConfiguration':
          result.defaultRemoteConfiguration.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i3.LoggingRemoteConfig),
          ) as _i3.LoggingRemoteConfig));
        case 'enable':
          result.enable = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'flushInterval':
          result.flushInterval = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'localStoreMaxSize':
          result.localStoreMaxSize = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'logGroupName':
          result.logGroupName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'loggingConstraints':
          result.loggingConstraints.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(_i4.AmplifyLoggingConstraints),
          ) as _i4.AmplifyLoggingConstraints));
        case 'region':
          result.region = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    LoggingCloudWatchConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final LoggingCloudWatchConfig(
      :defaultRemoteConfiguration,
      :enable,
      :flushInterval,
      :localStoreMaxSize,
      :logGroupName,
      :loggingConstraints,
      :region
    ) = object;
    result$.addAll([
      'enable',
      serializers.serialize(
        enable,
        specifiedType: const FullType(bool),
      ),
      'flushInterval',
      serializers.serialize(
        flushInterval,
        specifiedType: const FullType(int),
      ),
      'localStoreMaxSize',
      serializers.serialize(
        localStoreMaxSize,
        specifiedType: const FullType(int),
      ),
      'logGroupName',
      serializers.serialize(
        logGroupName,
        specifiedType: const FullType(String),
      ),
      'region',
      serializers.serialize(
        region,
        specifiedType: const FullType(String),
      ),
    ]);
    if (defaultRemoteConfiguration != null) {
      result$
        ..add('defaultRemoteConfiguration')
        ..add(serializers.serialize(
          defaultRemoteConfiguration,
          specifiedType: const FullType(_i3.LoggingRemoteConfig),
        ));
    }
    if (loggingConstraints != null) {
      result$
        ..add('loggingConstraints')
        ..add(serializers.serialize(
          loggingConstraints,
          specifiedType: const FullType(_i4.AmplifyLoggingConstraints),
        ));
    }
    return result$;
  }
}
