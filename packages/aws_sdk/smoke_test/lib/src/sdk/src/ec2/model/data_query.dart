// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.data_query; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/metric_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/period_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/statistic_type.dart';

part 'data_query.g.dart';

/// A query used for retrieving network health data.
abstract class DataQuery
    with _i1.AWSEquatable<DataQuery>
    implements Built<DataQuery, DataQueryBuilder> {
  /// A query used for retrieving network health data.
  factory DataQuery({
    String? id,
    String? source,
    String? destination,
    MetricType? metric,
    StatisticType? statistic,
    PeriodType? period,
  }) {
    return _$DataQuery._(
      id: id,
      source: source,
      destination: destination,
      metric: metric,
      statistic: statistic,
      period: period,
    );
  }

  /// A query used for retrieving network health data.
  factory DataQuery.build([void Function(DataQueryBuilder) updates]) =
      _$DataQuery;

  const DataQuery._();

  static const List<_i2.SmithySerializer<DataQuery>> serializers = [
    DataQueryEc2QuerySerializer()
  ];

  /// A user-defined ID associated with a data query that's returned in the `dataResponse` identifying the query. For example, if you set the Id to `MyQuery01`in the query, the `dataResponse` identifies the query as `MyQuery01`.
  String? get id;

  /// The Region or Availability Zone that's the source for the data query. For example, `us-east-1`.
  String? get source;

  /// The Region or Availability Zone that's the target for the data query. For example, `eu-north-1`.
  String? get destination;

  /// The metric, `aggregation-latency`, indicating that network latency is aggregated for the query. This is the only supported metric.
  MetricType? get metric;

  /// The metric data aggregation period, `p50`, between the specified `startDate` and `endDate`. For example, a metric of `five_minutes` is the median of all the data points gathered within those five minutes. `p50` is the only supported metric.
  StatisticType? get statistic;

  /// The aggregation period used for the data query.
  PeriodType? get period;
  @override
  List<Object?> get props => [
        id,
        source,
        destination,
        metric,
        statistic,
        period,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DataQuery')
      ..add(
        'id',
        id,
      )
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

class DataQueryEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<DataQuery> {
  const DataQueryEc2QuerySerializer() : super('DataQuery');

  @override
  Iterable<Type> get types => const [
        DataQuery,
        _$DataQuery,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DataQuery deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DataQueryBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'Id':
          result.id = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Source':
          result.source = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Destination':
          result.destination = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Metric':
          result.metric = (serializers.deserialize(
            value,
            specifiedType: const FullType(MetricType),
          ) as MetricType);
        case 'Statistic':
          result.statistic = (serializers.deserialize(
            value,
            specifiedType: const FullType(StatisticType),
          ) as StatisticType);
        case 'Period':
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
    DataQuery object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'DataQueryResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DataQuery(:id, :source, :destination, :metric, :statistic, :period) =
        object;
    if (id != null) {
      result$
        ..add(const _i2.XmlElementName('Id'))
        ..add(serializers.serialize(
          id,
          specifiedType: const FullType(String),
        ));
    }
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
