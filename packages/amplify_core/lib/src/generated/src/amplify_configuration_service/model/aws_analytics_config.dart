// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names

library amplify_core.amplify_configuration_service.model.aws_analytics_config; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:amplify_core/src/generated/src/amplify_configuration_service/model/aws_analytics_pinpoint_config.dart'
    as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

sealed class AWSAnalyticsConfig extends _i1.SmithyUnion<AWSAnalyticsConfig> {
  const AWSAnalyticsConfig._();

  factory AWSAnalyticsConfig.pinpoint({
    required String appId,
    required String region,
    int? autoFlushEventsInterval,
  }) =>
      AWSAnalyticsConfigPinpoint$(_i2.AWSAnalyticsPinpointConfig(
        appId: appId,
        region: region,
        autoFlushEventsInterval: autoFlushEventsInterval,
      ));

  const factory AWSAnalyticsConfig.sdkUnknown(
    String name,
    Object value,
  ) = AWSAnalyticsConfigSdkUnknown$;

  static const List<_i1.SmithySerializer<AWSAnalyticsConfig>> serializers = [
    AWSAnalyticsConfigSerializer()
  ];

  _i2.AWSAnalyticsPinpointConfig? get pinpoint => null;
  @override
  Object get value => (pinpoint)!;
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(r'AWSAnalyticsConfig');
    if (pinpoint != null) {
      helper.add(
        r'pinpoint',
        pinpoint,
      );
    }
    return helper.toString();
  }
}

final class AWSAnalyticsConfigPinpoint$ extends AWSAnalyticsConfig {
  const AWSAnalyticsConfigPinpoint$(this.pinpoint) : super._();

  @override
  final _i2.AWSAnalyticsPinpointConfig pinpoint;

  @override
  String get name => 'pinpoint';
}

final class AWSAnalyticsConfigSdkUnknown$ extends AWSAnalyticsConfig {
  const AWSAnalyticsConfigSdkUnknown$(
    this.name,
    this.value,
  ) : super._();

  @override
  final String name;

  @override
  final Object value;
}

class AWSAnalyticsConfigSerializer
    extends _i1.StructuredSmithySerializer<AWSAnalyticsConfig> {
  const AWSAnalyticsConfigSerializer() : super('AWSAnalyticsConfig');

  @override
  Iterable<Type> get types => const [
        AWSAnalyticsConfig,
        AWSAnalyticsConfigPinpoint$,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'smithy.dart',
          shape: 'genericProtocol',
        )
      ];
  @override
  AWSAnalyticsConfig deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final [key as String, value as Object] = serialized.toList();
    switch (key) {
      case 'pinpoint':
        return AWSAnalyticsConfigPinpoint$((serializers.deserialize(
          value,
          specifiedType: const FullType(_i2.AWSAnalyticsPinpointConfig),
        ) as _i2.AWSAnalyticsPinpointConfig));
    }
    return AWSAnalyticsConfig.sdkUnknown(
      key,
      value,
    );
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    AWSAnalyticsConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return [
      object.name,
      switch (object) {
        AWSAnalyticsConfigPinpoint$(:final value) => serializers.serialize(
            value,
            specifiedType: const FullType(_i2.AWSAnalyticsPinpointConfig),
          ),
        AWSAnalyticsConfigSdkUnknown$(:final value) => value,
      },
    ];
  }
}
