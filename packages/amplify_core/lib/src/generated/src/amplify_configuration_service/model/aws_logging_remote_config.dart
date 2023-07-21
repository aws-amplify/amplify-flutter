// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.aws_logging_remote_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'aws_logging_remote_config.g.dart';

abstract class AWSLoggingRemoteConfig
    with _i1.AWSEquatable<AWSLoggingRemoteConfig>
    implements Built<AWSLoggingRemoteConfig, AWSLoggingRemoteConfigBuilder> {
  factory AWSLoggingRemoteConfig({
    required Uri endpoint,
    Duration? refreshInterval,
  }) {
    refreshInterval ??= const Duration(seconds: 1200);
    return _$AWSLoggingRemoteConfig._(
      endpoint: endpoint,
      refreshInterval: refreshInterval.inSeconds,
    );
  }

  factory AWSLoggingRemoteConfig.build(
          [void Function(AWSLoggingRemoteConfigBuilder) updates]) =
      _$AWSLoggingRemoteConfig;

  const AWSLoggingRemoteConfig._();

  static const List<_i2.SmithySerializer<AWSLoggingRemoteConfig>> serializers =
      [AWSLoggingRemoteConfigSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AWSLoggingRemoteConfigBuilder b) {
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
    final helper = newBuiltValueToStringHelper('AWSLoggingRemoteConfig')
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

class AWSLoggingRemoteConfigSerializer
    extends _i2.StructuredSmithySerializer<AWSLoggingRemoteConfig> {
  const AWSLoggingRemoteConfigSerializer() : super('AWSLoggingRemoteConfig');

  @override
  Iterable<Type> get types => const [
        AWSLoggingRemoteConfig,
        _$AWSLoggingRemoteConfig,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  AWSLoggingRemoteConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AWSLoggingRemoteConfigBuilder();
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
    AWSLoggingRemoteConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AWSLoggingRemoteConfig(:endpoint, :refreshInterval) = object;
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
