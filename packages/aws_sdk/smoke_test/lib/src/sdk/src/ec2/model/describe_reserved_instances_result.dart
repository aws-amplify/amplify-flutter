// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_reserved_instances_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/reserved_instances.dart';

part 'describe_reserved_instances_result.g.dart';

/// Contains the output for DescribeReservedInstances.
abstract class DescribeReservedInstancesResult
    with
        _i1.AWSEquatable<DescribeReservedInstancesResult>
    implements
        Built<DescribeReservedInstancesResult,
            DescribeReservedInstancesResultBuilder> {
  /// Contains the output for DescribeReservedInstances.
  factory DescribeReservedInstancesResult(
      {List<ReservedInstances>? reservedInstances}) {
    return _$DescribeReservedInstancesResult._(
        reservedInstances: reservedInstances == null
            ? null
            : _i2.BuiltList(reservedInstances));
  }

  /// Contains the output for DescribeReservedInstances.
  factory DescribeReservedInstancesResult.build(
          [void Function(DescribeReservedInstancesResultBuilder) updates]) =
      _$DescribeReservedInstancesResult;

  const DescribeReservedInstancesResult._();

  /// Constructs a [DescribeReservedInstancesResult] from a [payload] and [response].
  factory DescribeReservedInstancesResult.fromResponse(
    DescribeReservedInstancesResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<DescribeReservedInstancesResult>>
      serializers = [DescribeReservedInstancesResultEc2QuerySerializer()];

  /// A list of Reserved Instances.
  _i2.BuiltList<ReservedInstances>? get reservedInstances;
  @override
  List<Object?> get props => [reservedInstances];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('DescribeReservedInstancesResult')
          ..add(
            'reservedInstances',
            reservedInstances,
          );
    return helper.toString();
  }
}

class DescribeReservedInstancesResultEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeReservedInstancesResult> {
  const DescribeReservedInstancesResultEc2QuerySerializer()
      : super('DescribeReservedInstancesResult');

  @override
  Iterable<Type> get types => const [
        DescribeReservedInstancesResult,
        _$DescribeReservedInstancesResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeReservedInstancesResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeReservedInstancesResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'reservedInstancesSet':
          result.reservedInstances.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(ReservedInstances)],
            ),
          ) as _i2.BuiltList<ReservedInstances>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeReservedInstancesResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeReservedInstancesResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeReservedInstancesResult(:reservedInstances) = object;
    if (reservedInstances != null) {
      result$
        ..add(const _i3.XmlElementName('ReservedInstancesSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          reservedInstances,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(ReservedInstances)],
          ),
        ));
    }
    return result$;
  }
}
