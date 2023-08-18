// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.analytics_pinpoint_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'analytics_pinpoint_config.g.dart';

/// The Amplify Analytics Pinpoint plugin configuration.
abstract class AnalyticsPinpointConfig
    with _i1.AWSEquatable<AnalyticsPinpointConfig>
    implements Built<AnalyticsPinpointConfig, AnalyticsPinpointConfigBuilder> {
  /// The Amplify Analytics Pinpoint plugin configuration.
  factory AnalyticsPinpointConfig({
    required String appId,
    required String region,
    Duration? autoFlushEventsInterval,
  }) {
    autoFlushEventsInterval ??= const Duration(seconds: 30);
    return _$AnalyticsPinpointConfig._(
      appId: appId,
      region: region,
      autoFlushEventsInterval: autoFlushEventsInterval.inSeconds,
    );
  }

  /// The Amplify Analytics Pinpoint plugin configuration.
  factory AnalyticsPinpointConfig.build(
          [void Function(AnalyticsPinpointConfigBuilder) updates]) =
      _$AnalyticsPinpointConfig;

  const AnalyticsPinpointConfig._();

  static const List<_i2.SmithySerializer<AnalyticsPinpointConfig>> serializers =
      [AnalyticsPinpointConfigSerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(AnalyticsPinpointConfigBuilder b) {
    b.autoFlushEventsInterval = 30;
  }

  /// The Pinpoint application ID.
  String get appId;

  /// The Pinpoint application region.
  String get region;

  /// The rate at which recorded events should be flushed to Pinpoint.
  int get autoFlushEventsInterval;
  @override
  List<Object?> get props => [
        appId,
        region,
        autoFlushEventsInterval,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('AnalyticsPinpointConfig')
      ..add(
        'appId',
        appId,
      )
      ..add(
        'region',
        region,
      )
      ..add(
        'autoFlushEventsInterval',
        autoFlushEventsInterval,
      );
    return helper.toString();
  }
}

class AnalyticsPinpointConfigSerializer
    extends _i2.StructuredSmithySerializer<AnalyticsPinpointConfig> {
  const AnalyticsPinpointConfigSerializer() : super('AnalyticsPinpointConfig');

  @override
  Iterable<Type> get types => const [
        AnalyticsPinpointConfig,
        _$AnalyticsPinpointConfig,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  AnalyticsPinpointConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnalyticsPinpointConfigBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'appId':
          result.appId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'autoFlushEventsInterval':
          result.autoFlushEventsInterval = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
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
    AnalyticsPinpointConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[];
    final AnalyticsPinpointConfig(:appId, :autoFlushEventsInterval, :region) =
        object;
    result$.addAll([
      'appId',
      serializers.serialize(
        appId,
        specifiedType: const FullType(String),
      ),
      'autoFlushEventsInterval',
      serializers.serialize(
        autoFlushEventsInterval,
        specifiedType: const FullType(int),
      ),
      'region',
      serializers.serialize(
        region,
        specifiedType: const FullType(String),
      ),
    ]);
    return result$;
  }
}
