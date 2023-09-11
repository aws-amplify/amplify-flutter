// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.capacity_reservation_specification_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_preference.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_target_response.dart';

part 'capacity_reservation_specification_response.g.dart';

/// Describes the instance's Capacity Reservation targeting preferences. The action returns the `capacityReservationPreference` response element if the instance is configured to run in On-Demand capacity, or if it is configured in run in any `open` Capacity Reservation that has matching attributes (instance type, platform, Availability Zone). The action returns the `capacityReservationTarget` response element if the instance explicily targets a specific Capacity Reservation or Capacity Reservation group.
abstract class CapacityReservationSpecificationResponse
    with
        _i1.AWSEquatable<CapacityReservationSpecificationResponse>
    implements
        Built<CapacityReservationSpecificationResponse,
            CapacityReservationSpecificationResponseBuilder> {
  /// Describes the instance's Capacity Reservation targeting preferences. The action returns the `capacityReservationPreference` response element if the instance is configured to run in On-Demand capacity, or if it is configured in run in any `open` Capacity Reservation that has matching attributes (instance type, platform, Availability Zone). The action returns the `capacityReservationTarget` response element if the instance explicily targets a specific Capacity Reservation or Capacity Reservation group.
  factory CapacityReservationSpecificationResponse({
    CapacityReservationPreference? capacityReservationPreference,
    CapacityReservationTargetResponse? capacityReservationTarget,
  }) {
    return _$CapacityReservationSpecificationResponse._(
      capacityReservationPreference: capacityReservationPreference,
      capacityReservationTarget: capacityReservationTarget,
    );
  }

  /// Describes the instance's Capacity Reservation targeting preferences. The action returns the `capacityReservationPreference` response element if the instance is configured to run in On-Demand capacity, or if it is configured in run in any `open` Capacity Reservation that has matching attributes (instance type, platform, Availability Zone). The action returns the `capacityReservationTarget` response element if the instance explicily targets a specific Capacity Reservation or Capacity Reservation group.
  factory CapacityReservationSpecificationResponse.build(
      [void Function(CapacityReservationSpecificationResponseBuilder)
          updates]) = _$CapacityReservationSpecificationResponse;

  const CapacityReservationSpecificationResponse._();

  static const List<
          _i2.SmithySerializer<CapacityReservationSpecificationResponse>>
      serializers = [
    CapacityReservationSpecificationResponseEc2QuerySerializer()
  ];

  /// Describes the instance's Capacity Reservation preferences. Possible preferences include:
  ///
  /// *   `open` \- The instance can run in any `open` Capacity Reservation that has matching attributes (instance type, platform, Availability Zone).
  ///
  /// *   `none` \- The instance avoids running in a Capacity Reservation even if one is available. The instance runs in On-Demand capacity.
  CapacityReservationPreference? get capacityReservationPreference;

  /// Information about the targeted Capacity Reservation or Capacity Reservation group.
  CapacityReservationTargetResponse? get capacityReservationTarget;
  @override
  List<Object?> get props => [
        capacityReservationPreference,
        capacityReservationTarget,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CapacityReservationSpecificationResponse')
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

class CapacityReservationSpecificationResponseEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<CapacityReservationSpecificationResponse> {
  const CapacityReservationSpecificationResponseEc2QuerySerializer()
      : super('CapacityReservationSpecificationResponse');

  @override
  Iterable<Type> get types => const [
        CapacityReservationSpecificationResponse,
        _$CapacityReservationSpecificationResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CapacityReservationSpecificationResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CapacityReservationSpecificationResponseBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'capacityReservationPreference':
          result.capacityReservationPreference = (serializers.deserialize(
            value,
            specifiedType: const FullType(CapacityReservationPreference),
          ) as CapacityReservationPreference);
        case 'capacityReservationTarget':
          result.capacityReservationTarget.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(CapacityReservationTargetResponse),
          ) as CapacityReservationTargetResponse));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CapacityReservationSpecificationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CapacityReservationSpecificationResponseResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CapacityReservationSpecificationResponse(
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
          specifiedType: const FullType(CapacityReservationTargetResponse),
        ));
    }
    return result$;
  }
}
