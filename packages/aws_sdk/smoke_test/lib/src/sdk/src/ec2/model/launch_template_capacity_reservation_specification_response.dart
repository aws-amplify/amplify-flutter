// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.launch_template_capacity_reservation_specification_response; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_preference.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_target_response.dart';

part 'launch_template_capacity_reservation_specification_response.g.dart';

/// Information about the Capacity Reservation targeting option.
abstract class LaunchTemplateCapacityReservationSpecificationResponse
    with
        _i1.AWSEquatable<LaunchTemplateCapacityReservationSpecificationResponse>
    implements
        Built<LaunchTemplateCapacityReservationSpecificationResponse,
            LaunchTemplateCapacityReservationSpecificationResponseBuilder> {
  /// Information about the Capacity Reservation targeting option.
  factory LaunchTemplateCapacityReservationSpecificationResponse({
    CapacityReservationPreference? capacityReservationPreference,
    CapacityReservationTargetResponse? capacityReservationTarget,
  }) {
    return _$LaunchTemplateCapacityReservationSpecificationResponse._(
      capacityReservationPreference: capacityReservationPreference,
      capacityReservationTarget: capacityReservationTarget,
    );
  }

  /// Information about the Capacity Reservation targeting option.
  factory LaunchTemplateCapacityReservationSpecificationResponse.build(
      [void Function(
              LaunchTemplateCapacityReservationSpecificationResponseBuilder)
          updates]) = _$LaunchTemplateCapacityReservationSpecificationResponse;

  const LaunchTemplateCapacityReservationSpecificationResponse._();

  static const List<
          _i2.SmithySerializer<
              LaunchTemplateCapacityReservationSpecificationResponse>>
      serializers = [
    LaunchTemplateCapacityReservationSpecificationResponseEc2QuerySerializer()
  ];

  /// Indicates the instance's Capacity Reservation preferences. Possible preferences include:
  ///
  /// *   `open` \- The instance can run in any `open` Capacity Reservation that has matching attributes (instance type, platform, Availability Zone).
  ///
  /// *   `none` \- The instance avoids running in a Capacity Reservation even if one is available. The instance runs in On-Demand capacity.
  CapacityReservationPreference? get capacityReservationPreference;

  /// Information about the target Capacity Reservation or Capacity Reservation group.
  CapacityReservationTargetResponse? get capacityReservationTarget;
  @override
  List<Object?> get props => [
        capacityReservationPreference,
        capacityReservationTarget,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'LaunchTemplateCapacityReservationSpecificationResponse')
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

class LaunchTemplateCapacityReservationSpecificationResponseEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        LaunchTemplateCapacityReservationSpecificationResponse> {
  const LaunchTemplateCapacityReservationSpecificationResponseEc2QuerySerializer()
      : super('LaunchTemplateCapacityReservationSpecificationResponse');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateCapacityReservationSpecificationResponse,
        _$LaunchTemplateCapacityReservationSpecificationResponse,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateCapacityReservationSpecificationResponse deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        LaunchTemplateCapacityReservationSpecificationResponseBuilder();
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
    LaunchTemplateCapacityReservationSpecificationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'LaunchTemplateCapacityReservationSpecificationResponseResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LaunchTemplateCapacityReservationSpecificationResponse(
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
