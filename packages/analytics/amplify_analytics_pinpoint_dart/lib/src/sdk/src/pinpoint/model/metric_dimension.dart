// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library amplify_analytics_pinpoint_dart.pinpoint.model.metric_dimension; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'metric_dimension.g.dart';

/// Specifies metric-based criteria for including or excluding endpoints from a segment. These criteria derive from custom metrics that you define for endpoints.
abstract class MetricDimension
    with _i1.AWSEquatable<MetricDimension>
    implements Built<MetricDimension, MetricDimensionBuilder> {
  /// Specifies metric-based criteria for including or excluding endpoints from a segment. These criteria derive from custom metrics that you define for endpoints.
  factory MetricDimension({
    required String comparisonOperator,
    double? value,
  }) {
    value ??= 0;
    return _$MetricDimension._(
      comparisonOperator: comparisonOperator,
      value: value,
    );
  }

  /// Specifies metric-based criteria for including or excluding endpoints from a segment. These criteria derive from custom metrics that you define for endpoints.
  factory MetricDimension.build(
      [void Function(MetricDimensionBuilder) updates]) = _$MetricDimension;

  const MetricDimension._();

  static const List<_i2.SmithySerializer> serializers = [
    MetricDimensionRestJson1Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(MetricDimensionBuilder b) {
    b.value = 0;
  }

  /// The operator to use when comparing metric values. Valid values are: GREATER\_THAN, LESS\_THAN, GREATER\_THAN\_OR\_EQUAL, LESS\_THAN\_OR\_EQUAL, and EQUAL.
  String get comparisonOperator;

  /// The value to compare.
  double get value;
  @override
  List<Object?> get props => [
        comparisonOperator,
        value,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('MetricDimension');
    helper.add(
      'comparisonOperator',
      comparisonOperator,
    );
    helper.add(
      'value',
      value,
    );
    return helper.toString();
  }
}

class MetricDimensionRestJson1Serializer
    extends _i2.StructuredSmithySerializer<MetricDimension> {
  const MetricDimensionRestJson1Serializer() : super('MetricDimension');

  @override
  Iterable<Type> get types => const [
        MetricDimension,
        _$MetricDimension,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ];
  @override
  MetricDimension deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MetricDimensionBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ComparisonOperator':
          result.comparisonOperator = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'Value':
          result.value = (serializers.deserialize(
            value!,
            specifiedType: const FullType(double),
          ) as double);
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as MetricDimension);
    final result = <Object?>[
      'ComparisonOperator',
      serializers.serialize(
        payload.comparisonOperator,
        specifiedType: const FullType(String),
      ),
      'Value',
      serializers.serialize(
        payload.value,
        specifiedType: const FullType(double),
      ),
    ];
    return result;
  }
}
