// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.launch_template_capacity_reservation_specification_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_preference.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_target.dart';

part 'launch_template_capacity_reservation_specification_request.g.dart';

/// Describes an instance's Capacity Reservation targeting option. You can specify only one option at a time. Use the `CapacityReservationPreference` parameter to configure the instance to run in On-Demand capacity or to run in any `open` Capacity Reservation that has matching attributes (instance type, platform, Availability Zone). Use the `CapacityReservationTarget` parameter to explicitly target a specific Capacity Reservation or a Capacity Reservation group.
abstract class LaunchTemplateCapacityReservationSpecificationRequest
    with
        _i1.AWSEquatable<LaunchTemplateCapacityReservationSpecificationRequest>
    implements
        Built<LaunchTemplateCapacityReservationSpecificationRequest,
            LaunchTemplateCapacityReservationSpecificationRequestBuilder> {
  /// Describes an instance's Capacity Reservation targeting option. You can specify only one option at a time. Use the `CapacityReservationPreference` parameter to configure the instance to run in On-Demand capacity or to run in any `open` Capacity Reservation that has matching attributes (instance type, platform, Availability Zone). Use the `CapacityReservationTarget` parameter to explicitly target a specific Capacity Reservation or a Capacity Reservation group.
  factory LaunchTemplateCapacityReservationSpecificationRequest({
    CapacityReservationPreference? capacityReservationPreference,
    CapacityReservationTarget? capacityReservationTarget,
  }) {
    return _$LaunchTemplateCapacityReservationSpecificationRequest._(
      capacityReservationPreference: capacityReservationPreference,
      capacityReservationTarget: capacityReservationTarget,
    );
  }

  /// Describes an instance's Capacity Reservation targeting option. You can specify only one option at a time. Use the `CapacityReservationPreference` parameter to configure the instance to run in On-Demand capacity or to run in any `open` Capacity Reservation that has matching attributes (instance type, platform, Availability Zone). Use the `CapacityReservationTarget` parameter to explicitly target a specific Capacity Reservation or a Capacity Reservation group.
  factory LaunchTemplateCapacityReservationSpecificationRequest.build(
      [void Function(
              LaunchTemplateCapacityReservationSpecificationRequestBuilder)
          updates]) = _$LaunchTemplateCapacityReservationSpecificationRequest;

  const LaunchTemplateCapacityReservationSpecificationRequest._();

  static const List<
          _i2.SmithySerializer<
              LaunchTemplateCapacityReservationSpecificationRequest>>
      serializers = [
    LaunchTemplateCapacityReservationSpecificationRequestEc2QuerySerializer()
  ];

  /// Indicates the instance's Capacity Reservation preferences. Possible preferences include:
  ///
  /// *   `open` \- The instance can run in any `open` Capacity Reservation that has matching attributes (instance type, platform, Availability Zone).
  ///
  /// *   `none` \- The instance avoids running in a Capacity Reservation even if one is available. The instance runs in On-Demand capacity.
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
    final helper = newBuiltValueToStringHelper(
        'LaunchTemplateCapacityReservationSpecificationRequest')
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

class LaunchTemplateCapacityReservationSpecificationRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<
        LaunchTemplateCapacityReservationSpecificationRequest> {
  const LaunchTemplateCapacityReservationSpecificationRequestEc2QuerySerializer()
      : super('LaunchTemplateCapacityReservationSpecificationRequest');

  @override
  Iterable<Type> get types => const [
        LaunchTemplateCapacityReservationSpecificationRequest,
        _$LaunchTemplateCapacityReservationSpecificationRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  LaunchTemplateCapacityReservationSpecificationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        LaunchTemplateCapacityReservationSpecificationRequestBuilder();
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
    LaunchTemplateCapacityReservationSpecificationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'LaunchTemplateCapacityReservationSpecificationRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final LaunchTemplateCapacityReservationSpecificationRequest(
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
