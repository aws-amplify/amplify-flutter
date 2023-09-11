// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.capacity_reservation_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_preference.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_target.dart';

part 'capacity_reservation_specification.g.dart';

/// Describes an instance's Capacity Reservation targeting option. You can specify only one parameter at a time. If you specify `CapacityReservationPreference` and `CapacityReservationTarget`, the request fails.
///
/// Use the `CapacityReservationPreference` parameter to configure the instance to run as an On-Demand Instance or to run in any `open` Capacity Reservation that has matching attributes (instance type, platform, Availability Zone). Use the `CapacityReservationTarget` parameter to explicitly target a specific Capacity Reservation or a Capacity Reservation group.
abstract class CapacityReservationSpecification
    with
        _i1.AWSEquatable<CapacityReservationSpecification>
    implements
        Built<CapacityReservationSpecification,
            CapacityReservationSpecificationBuilder> {
  /// Describes an instance's Capacity Reservation targeting option. You can specify only one parameter at a time. If you specify `CapacityReservationPreference` and `CapacityReservationTarget`, the request fails.
  ///
  /// Use the `CapacityReservationPreference` parameter to configure the instance to run as an On-Demand Instance or to run in any `open` Capacity Reservation that has matching attributes (instance type, platform, Availability Zone). Use the `CapacityReservationTarget` parameter to explicitly target a specific Capacity Reservation or a Capacity Reservation group.
  factory CapacityReservationSpecification({
    CapacityReservationPreference? capacityReservationPreference,
    CapacityReservationTarget? capacityReservationTarget,
  }) {
    return _$CapacityReservationSpecification._(
      capacityReservationPreference: capacityReservationPreference,
      capacityReservationTarget: capacityReservationTarget,
    );
  }

  /// Describes an instance's Capacity Reservation targeting option. You can specify only one parameter at a time. If you specify `CapacityReservationPreference` and `CapacityReservationTarget`, the request fails.
  ///
  /// Use the `CapacityReservationPreference` parameter to configure the instance to run as an On-Demand Instance or to run in any `open` Capacity Reservation that has matching attributes (instance type, platform, Availability Zone). Use the `CapacityReservationTarget` parameter to explicitly target a specific Capacity Reservation or a Capacity Reservation group.
  factory CapacityReservationSpecification.build(
          [void Function(CapacityReservationSpecificationBuilder) updates]) =
      _$CapacityReservationSpecification;

  const CapacityReservationSpecification._();

  static const List<_i2.SmithySerializer<CapacityReservationSpecification>>
      serializers = [CapacityReservationSpecificationEc2QuerySerializer()];

  /// Indicates the instance's Capacity Reservation preferences. Possible preferences include:
  ///
  /// *   `open` \- The instance can run in any `open` Capacity Reservation that has matching attributes (instance type, platform, Availability Zone).
  ///
  /// *   `none` \- The instance avoids running in a Capacity Reservation even if one is available. The instance runs as an On-Demand Instance.
  CapacityReservationPreference? get capacityReservationPreference;

  /// Information about the target Capacity Reservation or Capacity Reservation group.
  CapacityReservationTarget? get capacityReservationTarget;
  @override
  List<Object?> get props => [
        capacityReservationPreference,
        capacityReservationTarget,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CapacityReservationSpecification')
          ..add(
            'capacityReservationPreference',
            capacityReservationPreference,
          )
          ..add(
            'capacityReservationTarget',
            capacityReservationTarget,
          );
    return helper.toString();
  }
}

class CapacityReservationSpecificationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<CapacityReservationSpecification> {
  const CapacityReservationSpecificationEc2QuerySerializer()
      : super('CapacityReservationSpecification');

  @override
  Iterable<Type> get types => const [
        CapacityReservationSpecification,
        _$CapacityReservationSpecification,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CapacityReservationSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CapacityReservationSpecificationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'CapacityReservationPreference':
          result.capacityReservationPreference = (serializers.deserialize(
            value,
            specifiedType: const FullType(CapacityReservationPreference),
          ) as CapacityReservationPreference);
        case 'CapacityReservationTarget':
          result.capacityReservationTarget.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(CapacityReservationTarget),
          ) as CapacityReservationTarget));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CapacityReservationSpecification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CapacityReservationSpecificationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CapacityReservationSpecification(
      :capacityReservationPreference,
      :capacityReservationTarget
    ) = object;
    if (capacityReservationPreference != null) {
      result$
        ..add(const _i2.XmlElementName('CapacityReservationPreference'))
        ..add(serializers.serialize(
          capacityReservationPreference,
          specifiedType: const FullType(CapacityReservationPreference),
        ));
    }
    if (capacityReservationTarget != null) {
      result$
        ..add(const _i2.XmlElementName('CapacityReservationTarget'))
        ..add(serializers.serialize(
          capacityReservationTarget,
          specifiedType: const FullType(CapacityReservationTarget),
        ));
    }
    return result$;
  }
}
