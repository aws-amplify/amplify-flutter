// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.subscription; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/metric_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/period_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/statistic_type.dart';

part 'subscription.g.dart';

/// Describes an Infrastructure Performance subscription.
abstract class Subscription
    with _i1.AWSEquatable<Subscription>
    implements Built<Subscription, SubscriptionBuilder> {
  /// Describes an Infrastructure Performance subscription.
  factory Subscription({
    String? source,
    String? destination,
    MetricType? metric,
    StatisticType? statistic,
    PeriodType? period,
  }) {
    return _$Subscription._(
      source: source,
      destination: destination,
      metric: metric,
      statistic: statistic,
      period: period,
    );
  }

  /// Describes an Infrastructure Performance subscription.
  factory Subscription.build([void Function(SubscriptionBuilder) updates]) =
      _$Subscription;

  const Subscription._();

  static const List<_i2.SmithySerializer<Subscription>> serializers = [
    SubscriptionEc2QuerySerializer()
  ];

  /// The Region or Availability Zone that's the source for the subscription. For example, `us-east-1`.
  String? get source;

  /// The Region or Availability Zone that's the target for the subscription. For example, `eu-west-1`.
  String? get destination;

  /// The metric used for the subscription.
  MetricType? get metric;

  /// The statistic used for the subscription.
  StatisticType? get statistic;

  /// The data aggregation time for the subscription.
  PeriodType? get period;
  @override
  List<Object?> get props => [
        source,
        destination,
        metric,
        statistic,
        period,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Subscription')
      ..add(
        'source',
        source,
      )
      ..add(
        'destination',
        destination,
      )
      ..add(
        'metric',
        metric,
      )
      ..add(
        'statistic',
        statistic,
      )
      ..add(
        'period',
        period,
      );
    return helper.toString();
  }
}

class SubscriptionEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<Subscription> {
  const SubscriptionEc2QuerySerializer() : super('Subscription');

  @override
  Iterable<Type> get types => const [
        Subscription,
        _$Subscription,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  Subscription deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SubscriptionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'source':
          result.source = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'destination':
          result.destination = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'metric':
          result.metric = (serializers.deserialize(
            value,
            specifiedType: const FullType(MetricType),
          ) as MetricType);
        case 'statistic':
          result.statistic = (serializers.deserialize(
            value,
            specifiedType: const FullType(StatisticType),
          ) as StatisticType);
        case 'period':
          result.period = (serializers.deserialize(
            value,
            specifiedType: const FullType(PeriodType),
          ) as PeriodType);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Subscription object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'SubscriptionResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final Subscription(:source, :destination, :metric, :statistic, :period) =
        object;
    if (source != null) {
      result$
        ..add(const _i2.XmlElementName('Source'))
        ..add(serializers.serialize(
          source,
          specifiedType: const FullType(String),
        ));
    }
    if (destination != null) {
      result$
        ..add(const _i2.XmlElementName('Destination'))
        ..add(serializers.serialize(
          destination,
          specifiedType: const FullType(String),
        ));
    }
    if (metric != null) {
      result$
        ..add(const _i2.XmlElementName('Metric'))
        ..add(serializers.serialize(
          metric,
          specifiedType: const FullType(MetricType),
        ));
    }
    if (statistic != null) {
      result$
        ..add(const _i2.XmlElementName('Statistic'))
        ..add(serializers.serialize(
          statistic,
          specifiedType: const FullType(StatisticType),
        ));
    }
    if (period != null) {
      result$
        ..add(const _i2.XmlElementName('Period'))
        ..add(serializers.serialize(
          period,
          specifiedType: const FullType(PeriodType),
        ));
    }
    return result$;
  }
}
