// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library amplify_core.amplify_configuration_service.model.analytics_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/analytics_pinpoint_config.dart'
    as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

/// The Amplify Analytics category configuration.
sealed class AnalyticsConfig extends _i1.SmithyUnion<AnalyticsConfig> {
  const AnalyticsConfig._();

  factory AnalyticsConfig.pinpoint({
    required String appId,
    required String region,
    Duration? autoFlushEventsInterval,
  }) =>
      AnalyticsConfigPinpoint$(_i2.AnalyticsPinpointConfig(
        appId: appId,
        region: region,
        autoFlushEventsInterval: autoFlushEventsInterval,
      ));

  const factory AnalyticsConfig.sdkUnknown(
    String name,
    Object value,
  ) = AnalyticsConfigSdkUnknown$;

  static const List<_i1.SmithySerializer<AnalyticsConfig>> serializers = [
    AnalyticsConfigSerializer()
  ];

  /// The Amplify Analytics Pinpoint plugin configuration.
  _i2.AnalyticsPinpointConfig? get pinpoint => null;
  @override
  Object get value => (pinpoint)!;
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'AnalyticsConfig');
    if (pinpoint != null) {
      helper.add(
        r'pinpoint',
        pinpoint,
      );
    }
    return helper.toString();
  }
}

final class AnalyticsConfigPinpoint$ extends AnalyticsConfig {
  const AnalyticsConfigPinpoint$(this.pinpoint) : super._();

  @override
  final _i2.AnalyticsPinpointConfig pinpoint;

  @override
  String get name => 'pinpoint';
}

final class AnalyticsConfigSdkUnknown$ extends AnalyticsConfig {
  const AnalyticsConfigSdkUnknown$(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class AnalyticsConfigSerializer
    extends _i1.StructuredSmithySerializer<AnalyticsConfig> {
  const AnalyticsConfigSerializer() : super('AnalyticsConfig');

  @override
  Iterable<Type> get types => const [
        AnalyticsConfig,
        AnalyticsConfigPinpoint$,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  AnalyticsConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final [key as String, value as Object] = serialized.toList();
    switch (key) {
      case 'pinpoint':
        return AnalyticsConfigPinpoint$((serializers.deserialize(
          value,
          specifiedType: const FullType(_i2.AnalyticsPinpointConfig),
        ) as _i2.AnalyticsPinpointConfig));
    }
    return AnalyticsConfig.sdkUnknown(
      key,
      value,
    );
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AnalyticsConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return [
      object.name,
      switch (object) {
        AnalyticsConfigPinpoint$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i2.AnalyticsPinpointConfig),
          ),
        AnalyticsConfigSdkUnknown$(:final value) => value,
      },
    ];
  }
}
