// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.capacity_allocation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/allocation_type.dart';

part 'capacity_allocation.g.dart';

/// Information about instance capacity usage for a Capacity Reservation.
abstract class CapacityAllocation
    with _i1.AWSEquatable<CapacityAllocation>
    implements Built<CapacityAllocation, CapacityAllocationBuilder> {
  /// Information about instance capacity usage for a Capacity Reservation.
  factory CapacityAllocation({
    AllocationType? allocationType,
    int? count,
  }) {
    count ??= 0;
    return _$CapacityAllocation._(
      allocationType: allocationType,
      count: count,
    );
  }

  /// Information about instance capacity usage for a Capacity Reservation.
  factory CapacityAllocation.build(
          [void Function(CapacityAllocationBuilder) updates]) =
      _$CapacityAllocation;

  const CapacityAllocation._();

  static const List<_i2.SmithySerializer<CapacityAllocation>> serializers = [
    CapacityAllocationEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CapacityAllocationBuilder b) {
    b.count = 0;
  }

  /// The usage type. `used` indicates that the instance capacity is in use by instances that are running in the Capacity Reservation.
  AllocationType? get allocationType;

  /// The amount of instance capacity associated with the usage. For example a value of `4` indicates that instance capacity for 4 instances is currently in use.
  int get count;
  @override
  List<Object?> get props => [
        allocationType,
        count,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CapacityAllocation')
      ..add(
        'allocationType',
        allocationType,
      )
      ..add(
        'count',
        count,
      );
    return helper.toString();
  }
}

class CapacityAllocationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CapacityAllocation> {
  const CapacityAllocationEc2QuerySerializer() : super('CapacityAllocation');

  @override
  Iterable<Type> get types => const [
        CapacityAllocation,
        _$CapacityAllocation,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CapacityAllocation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CapacityAllocationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'allocationType':
          result.allocationType = (serializers.deserialize(
            value,
            specifiedType: const FullType(AllocationType),
          ) as AllocationType);
        case 'count':
          result.count = (serializers.deserialize(
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
    CapacityAllocation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CapacityAllocationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CapacityAllocation(:allocationType, :count) = object;
    if (allocationType != null) {
      result$
        ..add(const _i2.XmlElementName('AllocationType'))
        ..add(serializers.serialize(
          allocationType,
          specifiedType: const FullType.nullable(AllocationType),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('Count'))
      ..add(serializers.serialize(
        count,
        specifiedType: const FullType(int),
      ));
    return result$;
  }
}
