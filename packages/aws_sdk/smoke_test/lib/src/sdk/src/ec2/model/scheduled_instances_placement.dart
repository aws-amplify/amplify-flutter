// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.scheduled_instances_placement; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'scheduled_instances_placement.g.dart';

/// Describes the placement for a Scheduled Instance.
abstract class ScheduledInstancesPlacement
    with _i1.AWSEquatable<ScheduledInstancesPlacement>
    implements
        Built<ScheduledInstancesPlacement, ScheduledInstancesPlacementBuilder> {
  /// Describes the placement for a Scheduled Instance.
  factory ScheduledInstancesPlacement({
    String? availabilityZone,
    String? groupName,
  }) {
    return _$ScheduledInstancesPlacement._(
      availabilityZone: availabilityZone,
      groupName: groupName,
    );
  }

  /// Describes the placement for a Scheduled Instance.
  factory ScheduledInstancesPlacement.build(
          [void Function(ScheduledInstancesPlacementBuilder) updates]) =
      _$ScheduledInstancesPlacement;

  const ScheduledInstancesPlacement._();

  static const List<_i2.SmithySerializer<ScheduledInstancesPlacement>>
      serializers = [ScheduledInstancesPlacementEc2QuerySerializer()];

  /// The Availability Zone.
  String? get availabilityZone;

  /// The name of the placement group.
  String? get groupName;
  @override
  List<Object?> get props => [
        availabilityZone,
        groupName,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ScheduledInstancesPlacement')
      ..add(
        'availabilityZone',
        availabilityZone,
      )
      ..add(
        'groupName',
        groupName,
      );
    return helper.toString();
  }
}

class ScheduledInstancesPlacementEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ScheduledInstancesPlacement> {
  const ScheduledInstancesPlacementEc2QuerySerializer()
      : super('ScheduledInstancesPlacement');

  @override
  Iterable<Type> get types => const [
        ScheduledInstancesPlacement,
        _$ScheduledInstancesPlacement,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ScheduledInstancesPlacement deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScheduledInstancesPlacementBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AvailabilityZone':
          result.availabilityZone = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'GroupName':
          result.groupName = (serializers.deserialize(
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
    ScheduledInstancesPlacement object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ScheduledInstancesPlacementResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ScheduledInstancesPlacement(:availabilityZone, :groupName) = object;
    if (availabilityZone != null) {
      result$
        ..add(const _i2.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          availabilityZone,
          specifiedType: const FullType(String),
        ));
    }
    if (groupName != null) {
      result$
        ..add(const _i2.XmlElementName('GroupName'))
        ..add(serializers.serialize(
          groupName,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
