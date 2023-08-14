// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.capacity_reservation_group; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'capacity_reservation_group.g.dart';

/// Describes a resource group to which a Capacity Reservation has been added.
abstract class CapacityReservationGroup
    with _i1.AWSEquatable<CapacityReservationGroup>
    implements
        Built<CapacityReservationGroup, CapacityReservationGroupBuilder> {
  /// Describes a resource group to which a Capacity Reservation has been added.
  factory CapacityReservationGroup({
    String? groupArn,
    String? ownerId,
  }) {
    return _$CapacityReservationGroup._(
      groupArn: groupArn,
      ownerId: ownerId,
    );
  }

  /// Describes a resource group to which a Capacity Reservation has been added.
  factory CapacityReservationGroup.build(
          [void Function(CapacityReservationGroupBuilder) updates]) =
      _$CapacityReservationGroup;

  const CapacityReservationGroup._();

  static const List<_i2.SmithySerializer<CapacityReservationGroup>>
      serializers = [CapacityReservationGroupEc2QuerySerializer()];

  /// The ARN of the resource group.
  String? get groupArn;

  /// The ID of the Amazon Web Services account that owns the resource group.
  String? get ownerId;
  @override
  List<Object?> get props => [
        groupArn,
        ownerId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CapacityReservationGroup')
      ..add(
        'groupArn',
        groupArn,
      )
      ..add(
        'ownerId',
        ownerId,
      );
    return helper.toString();
  }
}

class CapacityReservationGroupEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CapacityReservationGroup> {
  const CapacityReservationGroupEc2QuerySerializer()
      : super('CapacityReservationGroup');

  @override
  Iterable<Type> get types => const [
        CapacityReservationGroup,
        _$CapacityReservationGroup,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CapacityReservationGroup deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CapacityReservationGroupBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'groupArn':
          result.groupArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ownerId':
          result.ownerId = (serializers.deserialize(
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
    CapacityReservationGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CapacityReservationGroupResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CapacityReservationGroup(:groupArn, :ownerId) = object;
    if (groupArn != null) {
      result$
        ..add(const _i2.XmlElementName('GroupArn'))
        ..add(serializers.serialize(
          groupArn,
          specifiedType: const FullType(String),
        ));
    }
    if (ownerId != null) {
      result$
        ..add(const _i2.XmlElementName('OwnerId'))
        ..add(serializers.serialize(
          ownerId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
