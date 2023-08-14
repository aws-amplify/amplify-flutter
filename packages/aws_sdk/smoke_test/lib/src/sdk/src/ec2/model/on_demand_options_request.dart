// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.on_demand_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_options_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_on_demand_allocation_strategy.dart';

part 'on_demand_options_request.g.dart';

/// Describes the configuration of On-Demand Instances in an EC2 Fleet.
abstract class OnDemandOptionsRequest
    with _i1.AWSEquatable<OnDemandOptionsRequest>
    implements Built<OnDemandOptionsRequest, OnDemandOptionsRequestBuilder> {
  /// Describes the configuration of On-Demand Instances in an EC2 Fleet.
  factory OnDemandOptionsRequest({
    FleetOnDemandAllocationStrategy? allocationStrategy,
    CapacityReservationOptionsRequest? capacityReservationOptions,
    bool? singleInstanceType,
    bool? singleAvailabilityZone,
    int? minTargetCapacity,
    String? maxTotalPrice,
  }) {
    singleInstanceType ??= false;
    singleAvailabilityZone ??= false;
    minTargetCapacity ??= 0;
    return _$OnDemandOptionsRequest._(
      allocationStrategy: allocationStrategy,
      capacityReservationOptions: capacityReservationOptions,
      singleInstanceType: singleInstanceType,
      singleAvailabilityZone: singleAvailabilityZone,
      minTargetCapacity: minTargetCapacity,
      maxTotalPrice: maxTotalPrice,
    );
  }

  /// Describes the configuration of On-Demand Instances in an EC2 Fleet.
  factory OnDemandOptionsRequest.build(
          [void Function(OnDemandOptionsRequestBuilder) updates]) =
      _$OnDemandOptionsRequest;

  const OnDemandOptionsRequest._();

  static const List<_i2.SmithySerializer<OnDemandOptionsRequest>> serializers =
      [OnDemandOptionsRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(OnDemandOptionsRequestBuilder b) {
    b
      ..singleInstanceType = false
      ..singleAvailabilityZone = false
      ..minTargetCapacity = 0;
  }

  /// The strategy that determines the order of the launch template overrides to use in fulfilling On-Demand capacity.
  ///
  /// `lowest-price` \- EC2 Fleet uses price to determine the order, launching the lowest price first.
  ///
  /// `prioritized` \- EC2 Fleet uses the priority that you assigned to each launch template override, launching the highest priority first.
  ///
  /// Default: `lowest-price`
  FleetOnDemandAllocationStrategy? get allocationStrategy;

  /// The strategy for using unused Capacity Reservations for fulfilling On-Demand capacity.
  ///
  /// Supported only for fleets of type `instant`.
  CapacityReservationOptionsRequest? get capacityReservationOptions;

  /// Indicates that the fleet uses a single instance type to launch all On-Demand Instances in the fleet.
  ///
  /// Supported only for fleets of type `instant`.
  bool get singleInstanceType;

  /// Indicates that the fleet launches all On-Demand Instances into a single Availability Zone.
  ///
  /// Supported only for fleets of type `instant`.
  bool get singleAvailabilityZone;

  /// The minimum target capacity for On-Demand Instances in the fleet. If the minimum target capacity is not reached, the fleet launches no instances.
  ///
  /// Supported only for fleets of type `instant`.
  ///
  /// At least one of the following must be specified: `SingleAvailabilityZone` | `SingleInstanceType`
  int get minTargetCapacity;

  /// The maximum amount per hour for On-Demand Instances that you're willing to pay.
  String? get maxTotalPrice;
  @override
  List<Object?> get props => [
        allocationStrategy,
        capacityReservationOptions,
        singleInstanceType,
        singleAvailabilityZone,
        minTargetCapacity,
        maxTotalPrice,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('OnDemandOptionsRequest')
      ..add(
        'allocationStrategy',
        allocationStrategy,
      )
      ..add(
        'capacityReservationOptions',
        capacityReservationOptions,
      )
      ..add(
        'singleInstanceType',
        singleInstanceType,
      )
      ..add(
        'singleAvailabilityZone',
        singleAvailabilityZone,
      )
      ..add(
        'minTargetCapacity',
        minTargetCapacity,
      )
      ..add(
        'maxTotalPrice',
        maxTotalPrice,
      );
    return helper.toString();
  }
}

class OnDemandOptionsRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<OnDemandOptionsRequest> {
  const OnDemandOptionsRequestEc2QuerySerializer()
      : super('OnDemandOptionsRequest');

  @override
  Iterable<Type> get types => const [
        OnDemandOptionsRequest,
        _$OnDemandOptionsRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  OnDemandOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OnDemandOptionsRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'AllocationStrategy':
          result.allocationStrategy = (serializers.deserialize(
            value,
            specifiedType: const FullType(FleetOnDemandAllocationStrategy),
          ) as FleetOnDemandAllocationStrategy);
        case 'CapacityReservationOptions':
          result.capacityReservationOptions.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(CapacityReservationOptionsRequest),
          ) as CapacityReservationOptionsRequest));
        case 'SingleInstanceType':
          result.singleInstanceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'SingleAvailabilityZone':
          result.singleAvailabilityZone = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'MinTargetCapacity':
          result.minTargetCapacity = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'MaxTotalPrice':
          result.maxTotalPrice = (serializers.deserialize(
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
    OnDemandOptionsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'OnDemandOptionsRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final OnDemandOptionsRequest(
      :allocationStrategy,
      :capacityReservationOptions,
      :singleInstanceType,
      :singleAvailabilityZone,
      :minTargetCapacity,
      :maxTotalPrice
    ) = object;
    if (allocationStrategy != null) {
      result$
        ..add(const _i2.XmlElementName('AllocationStrategy'))
        ..add(serializers.serialize(
          allocationStrategy,
          specifiedType:
              const FullType.nullable(FleetOnDemandAllocationStrategy),
        ));
    }
    if (capacityReservationOptions != null) {
      result$
        ..add(const _i2.XmlElementName('CapacityReservationOptions'))
        ..add(serializers.serialize(
          capacityReservationOptions,
          specifiedType: const FullType(CapacityReservationOptionsRequest),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('SingleInstanceType'))
      ..add(serializers.serialize(
        singleInstanceType,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i2.XmlElementName('SingleAvailabilityZone'))
      ..add(serializers.serialize(
        singleAvailabilityZone,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i2.XmlElementName('MinTargetCapacity'))
      ..add(serializers.serialize(
        minTargetCapacity,
        specifiedType: const FullType(int),
      ));
    if (maxTotalPrice != null) {
      result$
        ..add(const _i2.XmlElementName('MaxTotalPrice'))
        ..add(serializers.serialize(
          maxTotalPrice,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
