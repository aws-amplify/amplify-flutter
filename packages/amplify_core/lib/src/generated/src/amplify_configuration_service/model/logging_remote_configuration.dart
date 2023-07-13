// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_core.amplify_configuration_service.model.logging_remote_configuration; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'logging_remote_configuration.g.dart';

abstract class LoggingRemoteConfiguration
    with _i1.AWSEquatable<LoggingRemoteConfiguration>
    implements
        Built<LoggingRemoteConfiguration, LoggingRemoteConfigurationBuilder> {
  factory LoggingRemoteConfiguration({
    required Uri endpoint,
    int? refreshInterval,
  }) {
    refreshInterval ??= 1200;
    return _$LoggingRemoteConfiguration._(
      endpoint: endpoint,
      refreshInterval: refreshInterval,
    );
  }

  factory LoggingRemoteConfiguration.build(
          [void Function(LoggingRemoteConfigurationBuilder) updates]) =
      _$LoggingRemoteConfiguration;

  const LoggingRemoteConfiguration._();

  static const List<_i2.SmithySerializer<LoggingRemoteConfiguration>>
      serializers = [LoggingRemoteConfigurationSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(LoggingRemoteConfigurationBuilder b) {
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
    final helper = newBuiltValueToStringHelper('LoggingRemoteConfiguration')
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

class LoggingRemoteConfigurationSerializer
    extends _i2.StructuredSmithySerializer<LoggingRemoteConfiguration> {
  const LoggingRemoteConfigurationSerializer()
      : super('LoggingRemoteConfiguration');

  @override
  Iterable<Type> get types => const [
        LoggingRemoteConfiguration,
        _$LoggingRemoteConfiguration,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  LoggingRemoteConfiguration deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LoggingRemoteConfigurationBuilder();
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
    LoggingRemoteConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final LoggingRemoteConfiguration(:endpoint, :refreshInterval) = object;
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
