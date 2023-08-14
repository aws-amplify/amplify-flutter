// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.data_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/metric_point.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/metric_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/period_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/statistic_type.dart';

part 'data_response.g.dart';

/// The response to a `DataQuery`.
abstract class DataResponse
    with _i1.AWSEquatable<DataResponse>
    implements Built<DataResponse, DataResponseBuilder> {
  /// The response to a `DataQuery`.
  factory DataResponse({
    String? id,
    String? source,
    String? destination,
    MetricType? metric,
    StatisticType? statistic,
    PeriodType? period,
    List<MetricPoint>? metricPoints,
  }) {
    return _$DataResponse._(
      id: id,
      source: source,
      destination: destination,
      metric: metric,
      statistic: statistic,
      period: period,
      metricPoints: metricPoints == null ? null : _i2.BuiltList(metricPoints),
    );
  }

  /// The response to a `DataQuery`.
  factory DataResponse.build([void Function(DataResponseBuilder) updates]) =
      _$DataResponse;

  const DataResponse._();

  static const List<_i3.SmithySerializer<DataResponse>> serializers = [
    DataResponseEc2QuerySerializer()
  ];

  /// The ID passed in the `DataQuery`.
  String? get id;

  /// The Region or Availability Zone that's the source for the data query. For example, `us-east-1`.
  String? get source;

  /// The Region or Availability Zone that's the destination for the data query. For example, `eu-west-1`.
  String? get destination;

  /// The metric used for the network performance request. Only `aggregate-latency` is supported, which shows network latency during a specified period.
  MetricType? get metric;

  /// The statistic used for the network performance request.
  StatisticType? get statistic;

  /// The period used for the network performance request.
  PeriodType? get period;

  /// A list of `MetricPoint` objects.
  _i2.BuiltList<MetricPoint>? get metricPoints;
  @override
  List<Object?> get props => [
        id,
        source,
        destination,
        metric,
        statistic,
        period,
        metricPoints,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DataResponse')
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
      )
      ..add(
        'metricPoints',
        metricPoints,
      );
    return helper.toString();
  }
}

class DataResponseEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DataResponse> {
  const DataResponseEc2QuerySerializer() : super('DataResponse');

  @override
  Iterable<Type> get types => const [
        DataResponse,
        _$DataResponse,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DataResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DataResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'id':
          result.id = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
        case 'metricPointSet':
          result.metricPoints.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(MetricPoint)],
            ),
          ) as _i2.BuiltList<MetricPoint>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DataResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DataResponseResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DataResponse(
      :id,
      :source,
      :destination,
      :metric,
      :statistic,
      :period,
      :metricPoints
    ) = object;
    if (id != null) {
      result$
        ..add(const _i3.XmlElementName('Id'))
        ..add(serializers.serialize(
          id,
          specifiedType: const FullType(String),
        ));
    }
    if (source != null) {
      result$
        ..add(const _i3.XmlElementName('Source'))
        ..add(serializers.serialize(
          source,
          specifiedType: const FullType(String),
        ));
    }
    if (destination != null) {
      result$
        ..add(const _i3.XmlElementName('Destination'))
        ..add(serializers.serialize(
          destination,
          specifiedType: const FullType(String),
        ));
    }
    if (metric != null) {
      result$
        ..add(const _i3.XmlElementName('Metric'))
        ..add(serializers.serialize(
          metric,
          specifiedType: const FullType.nullable(MetricType),
        ));
    }
    if (statistic != null) {
      result$
        ..add(const _i3.XmlElementName('Statistic'))
        ..add(serializers.serialize(
          statistic,
          specifiedType: const FullType.nullable(StatisticType),
        ));
    }
    if (period != null) {
      result$
        ..add(const _i3.XmlElementName('Period'))
        ..add(serializers.serialize(
          period,
          specifiedType: const FullType.nullable(PeriodType),
        ));
    }
    if (metricPoints != null) {
      result$
        ..add(const _i3.XmlElementName('MetricPointSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          metricPoints,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(MetricPoint)],
          ),
        ));
    }
    return result$;
  }
}
