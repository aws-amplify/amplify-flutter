// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.logging_remote_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'logging_remote_config.g.dart';

abstract class LoggingRemoteConfig
    with _i1.AWSEquatable<LoggingRemoteConfig>
    implements Built<LoggingRemoteConfig, LoggingRemoteConfigBuilder> {
  factory LoggingRemoteConfig({
    required Uri endpoint,
    Duration? refreshInterval,
  }) {
    refreshInterval ??= const Duration(seconds: 1200);
    return _$LoggingRemoteConfig._(
      endpoint: endpoint,
      refreshInterval: refreshInterval.inSeconds,
    );
  }

  factory LoggingRemoteConfig.build(
          [void Function(LoggingRemoteConfigBuilder) updates]) =
      _$LoggingRemoteConfig;

  const LoggingRemoteConfig._();

  static const List<_i2.SmithySerializer<LoggingRemoteConfig>> serializers = [
    LoggingRemoteConfigSerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LoggingRemoteConfigBuilder b) {
    b.refreshInterval = 1200;
  }

  /// A valid RFC 3986 URI
  Uri get endpoint;
  int get refreshInterval;
  @override
  List<Object?> get props => [
        endpoint,
        refreshInterval,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('LoggingRemoteConfig')
      ..add(
        'endpoint',
        endpoint,
      )
      ..add(
        'refreshInterval',
        refreshInterval,
      );
    return helper.toString();
  }
}

class LoggingRemoteConfigSerializer
    extends _i2.StructuredSmithySerializer<LoggingRemoteConfig> {
  const LoggingRemoteConfigSerializer() : super('LoggingRemoteConfig');

  @override
  Iterable<Type> get types => const [
        LoggingRemoteConfig,
        _$LoggingRemoteConfig,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  LoggingRemoteConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LoggingRemoteConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'endpoint':
          result.endpoint = (serializers.deserialize(
            value,
            specifiedType: const FullType(Uri),
          ) as Uri);
        case 'refreshInterval':
          result.refreshInterval = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    LoggingRemoteConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final LoggingRemoteConfig(:endpoint, :refreshInterval) = object;
    result$.addAll([
      'endpoint',
      serializers.serialize(
        endpoint,
        specifiedType: const FullType(Uri),
      ),
      'refreshInterval',
      serializers.serialize(
        refreshInterval,
        specifiedType: const FullType(int),
      ),
    ]);
    return result$;
  }
}
