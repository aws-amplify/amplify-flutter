// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.metric_point; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'metric_point.g.dart';

/// Indicates whether the network was healthy or degraded at a particular point. The value is aggregated from the `startDate` to the `endDate`. Currently only `five_minutes` is supported.
abstract class MetricPoint
    with _i1.AWSEquatable<MetricPoint>
    implements Built<MetricPoint, MetricPointBuilder> {
  /// Indicates whether the network was healthy or degraded at a particular point. The value is aggregated from the `startDate` to the `endDate`. Currently only `five_minutes` is supported.
  factory MetricPoint({
    DateTime? startDate,
    DateTime? endDate,
    double? value,
    String? status,
  }) {
    value ??= 0;
    return _$MetricPoint._(
      startDate: startDate,
      endDate: endDate,
      value: value,
      status: status,
    );
  }

  /// Indicates whether the network was healthy or degraded at a particular point. The value is aggregated from the `startDate` to the `endDate`. Currently only `five_minutes` is supported.
  factory MetricPoint.build([void Function(MetricPointBuilder) updates]) =
      _$MetricPoint;

  const MetricPoint._();

  static const List<_i2.SmithySerializer<MetricPoint>> serializers = [
    MetricPointEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MetricPointBuilder b) {
    b.value = 0;
  }

  /// The start date for the metric point. The starting date for the metric point. The starting time must be formatted as `yyyy-mm-ddThh:mm:ss`. For example, `2022-06-10T12:00:00.000Z`.
  DateTime? get startDate;

  /// The end date for the metric point. The ending time must be formatted as `yyyy-mm-ddThh:mm:ss`. For example, `2022-06-12T12:00:00.000Z`.
  DateTime? get endDate;
  double get value;

  /// The status of the metric point.
  String? get status;
  @override
  List<Object?> get props => [
        startDate,
        endDate,
        value,
        status,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MetricPoint')
      ..add(
        'startDate',
        startDate,
      )
      ..add(
        'endDate',
        endDate,
      )
      ..add(
        'value',
        value,
      )
      ..add(
        'status',
        status,
      );
    return helper.toString();
  }
}

class MetricPointEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<MetricPoint> {
  const MetricPointEc2QuerySerializer() : super('MetricPoint');

  @override
  Iterable<Type> get types => const [
        MetricPoint,
        _$MetricPoint,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  MetricPoint deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MetricPointBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'startDate':
          result.startDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'endDate':
          result.endDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'value':
          result.value = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'status':
          result.status = (serializers.deserialize(
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
    MetricPoint object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'MetricPointResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final MetricPoint(:startDate, :endDate, :value, :status) = object;
    if (startDate != null) {
      result$
        ..add(const _i2.XmlElementName('StartDate'))
        ..add(serializers.serialize(
          startDate,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (endDate != null) {
      result$
        ..add(const _i2.XmlElementName('EndDate'))
        ..add(serializers.serialize(
          endDate,
          specifiedType: const FullType(DateTime),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('Value'))
      ..add(serializers.serialize(
        value,
        specifiedType: const FullType(double),
      ));
    if (status != null) {
      result$
        ..add(const _i2.XmlElementName('Status'))
        ..add(serializers.serialize(
          status,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
