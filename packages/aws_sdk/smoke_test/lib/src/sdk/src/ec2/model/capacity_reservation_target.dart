// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.capacity_reservation_target; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'capacity_reservation_target.g.dart';

/// Describes a target Capacity Reservation or Capacity Reservation group.
abstract class CapacityReservationTarget
    with _i1.AWSEquatable<CapacityReservationTarget>
    implements
        Built<CapacityReservationTarget, CapacityReservationTargetBuilder> {
  /// Describes a target Capacity Reservation or Capacity Reservation group.
  factory CapacityReservationTarget({
    String? capacityReservationId,
    String? capacityReservationResourceGroupArn,
  }) {
    return _$CapacityReservationTarget._(
      capacityReservationId: capacityReservationId,
      capacityReservationResourceGroupArn: capacityReservationResourceGroupArn,
    );
  }

  /// Describes a target Capacity Reservation or Capacity Reservation group.
  factory CapacityReservationTarget.build(
          [void Function(CapacityReservationTargetBuilder) updates]) =
      _$CapacityReservationTarget;

  const CapacityReservationTarget._();

  static const List<_i2.SmithySerializer<CapacityReservationTarget>>
      serializers = [CapacityReservationTargetEc2QuerySerializer()];

  /// The ID of the Capacity Reservation in which to run the instance.
  String? get capacityReservationId;

  /// The ARN of the Capacity Reservation resource group in which to run the instance.
  String? get capacityReservationResourceGroupArn;
  @override
  List<Object?> get props => [
        capacityReservationId,
        capacityReservationResourceGroupArn,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CapacityReservationTarget')
      ..add(
        'capacityReservationId',
        capacityReservationId,
      )
      ..add(
        'capacityReservationResourceGroupArn',
        capacityReservationResourceGroupArn,
      );
    return helper.toString();
  }
}

class CapacityReservationTargetEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CapacityReservationTarget> {
  const CapacityReservationTargetEc2QuerySerializer()
      : super('CapacityReservationTarget');

  @override
  Iterable<Type> get types => const [
        CapacityReservationTarget,
        _$CapacityReservationTarget,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CapacityReservationTarget deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CapacityReservationTargetBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'CapacityReservationId':
          result.capacityReservationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'CapacityReservationResourceGroupArn':
          result.capacityReservationResourceGroupArn = (serializers.deserialize(
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
    CapacityReservationTarget object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CapacityReservationTargetResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CapacityReservationTarget(
      :capacityReservationId,
      :capacityReservationResourceGroupArn
    ) = object;
    if (capacityReservationId != null) {
      result$
        ..add(const _i2.XmlElementName('CapacityReservationId'))
        ..add(serializers.serialize(
          capacityReservationId,
          specifiedType: const FullType(String),
        ));
    }
    if (capacityReservationResourceGroupArn != null) {
      result$
        ..add(const _i2.XmlElementName('CapacityReservationResourceGroupArn'))
        ..add(serializers.serialize(
          capacityReservationResourceGroupArn,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
