// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.spot_options_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_spot_maintenance_strategies_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_allocation_strategy.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_instance_interruption_behavior.dart';

part 'spot_options_request.g.dart';

/// Describes the configuration of Spot Instances in an EC2 Fleet request.
abstract class SpotOptionsRequest
    with _i1.AWSEquatable<SpotOptionsRequest>
    implements Built<SpotOptionsRequest, SpotOptionsRequestBuilder> {
  /// Describes the configuration of Spot Instances in an EC2 Fleet request.
  factory SpotOptionsRequest({
    SpotAllocationStrategy? allocationStrategy,
    FleetSpotMaintenanceStrategiesRequest? maintenanceStrategies,
    SpotInstanceInterruptionBehavior? instanceInterruptionBehavior,
    int? instancePoolsToUseCount,
    bool? singleInstanceType,
    bool? singleAvailabilityZone,
    int? minTargetCapacity,
    String? maxTotalPrice,
  }) {
    instancePoolsToUseCount ??= 0;
    singleInstanceType ??= false;
    singleAvailabilityZone ??= false;
    minTargetCapacity ??= 0;
    return _$SpotOptionsRequest._(
      allocationStrategy: allocationStrategy,
      maintenanceStrategies: maintenanceStrategies,
      instanceInterruptionBehavior: instanceInterruptionBehavior,
      instancePoolsToUseCount: instancePoolsToUseCount,
      singleInstanceType: singleInstanceType,
      singleAvailabilityZone: singleAvailabilityZone,
      minTargetCapacity: minTargetCapacity,
      maxTotalPrice: maxTotalPrice,
    );
  }

  /// Describes the configuration of Spot Instances in an EC2 Fleet request.
  factory SpotOptionsRequest.build(
          [void Function(SpotOptionsRequestBuilder) updates]) =
      _$SpotOptionsRequest;

  const SpotOptionsRequest._();

  static const List<_i2.SmithySerializer<SpotOptionsRequest>> serializers = [
    SpotOptionsRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SpotOptionsRequestBuilder b) {
    b
      ..instancePoolsToUseCount = 0
      ..singleInstanceType = false
      ..singleAvailabilityZone = false
      ..minTargetCapacity = 0;
  }

  /// The strategy that determines how to allocate the target Spot Instance capacity across the Spot Instance pools specified by the EC2 Fleet launch configuration. For more information, see [Allocation strategies for Spot Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-allocation-strategy.html) in the _Amazon EC2 User Guide_.
  ///
  /// price-capacity-optimized (recommended)
  ///
  /// EC2 Fleet identifies the pools with the highest capacity availability for the number of instances that are launching. This means that we will request Spot Instances from the pools that we believe have the lowest chance of interruption in the near term. EC2 Fleet then requests Spot Instances from the lowest priced of these pools.
  ///
  /// capacity-optimized
  ///
  /// EC2 Fleet identifies the pools with the highest capacity availability for the number of instances that are launching. This means that we will request Spot Instances from the pools that we believe have the lowest chance of interruption in the near term. To give certain instance types a higher chance of launching first, use `capacity-optimized-prioritized`. Set a priority for each instance type by using the `Priority` parameter for `LaunchTemplateOverrides`. You can assign the same priority to different `LaunchTemplateOverrides`. EC2 implements the priorities on a best-effort basis, but optimizes for capacity first. `capacity-optimized-prioritized` is supported only if your EC2 Fleet uses a launch template. Note that if the On-Demand `AllocationStrategy` is set to `prioritized`, the same priority is applied when fulfilling On-Demand capacity.
  ///
  /// diversified
  ///
  /// EC2 Fleet requests instances from all of the Spot Instance pools that you specify.
  ///
  /// lowest-price
  ///
  /// EC2 Fleet requests instances from the lowest priced Spot Instance pool that has available capacity. If the lowest priced pool doesn't have available capacity, the Spot Instances come from the next lowest priced pool that has available capacity. If a pool runs out of capacity before fulfilling your desired capacity, EC2 Fleet will continue to fulfill your request by drawing from the next lowest priced pool. To ensure that your desired capacity is met, you might receive Spot Instances from several pools. Because this strategy only considers instance price and not capacity availability, it might lead to high interruption rates.
  ///
  /// Default: `lowest-price`
  SpotAllocationStrategy? get allocationStrategy;

  /// The strategies for managing your Spot Instances that are at an elevated risk of being interrupted.
  FleetSpotMaintenanceStrategiesRequest? get maintenanceStrategies;

  /// The behavior when a Spot Instance is interrupted.
  ///
  /// Default: `terminate`
  SpotInstanceInterruptionBehavior? get instanceInterruptionBehavior;

  /// The number of Spot pools across which to allocate your target Spot capacity. Supported only when Spot `AllocationStrategy` is set to `lowest-price`. EC2 Fleet selects the cheapest Spot pools and evenly allocates your target Spot capacity across the number of Spot pools that you specify.
  ///
  /// Note that EC2 Fleet attempts to draw Spot Instances from the number of pools that you specify on a best effort basis. If a pool runs out of Spot capacity before fulfilling your target capacity, EC2 Fleet will continue to fulfill your request by drawing from the next cheapest pool. To ensure that your target capacity is met, you might receive Spot Instances from more than the number of pools that you specified. Similarly, if most of the pools have no Spot capacity, you might receive your full target capacity from fewer than the number of pools that you specified.
  int get instancePoolsToUseCount;

  /// Indicates that the fleet uses a single instance type to launch all Spot Instances in the fleet.
  ///
  /// Supported only for fleets of type `instant`.
  bool get singleInstanceType;

  /// Indicates that the fleet launches all Spot Instances into a single Availability Zone.
  ///
  /// Supported only for fleets of type `instant`.
  bool get singleAvailabilityZone;

  /// The minimum target capacity for Spot Instances in the fleet. If the minimum target capacity is not reached, the fleet launches no instances.
  ///
  /// Supported only for fleets of type `instant`.
  ///
  /// At least one of the following must be specified: `SingleAvailabilityZone` | `SingleInstanceType`
  int get minTargetCapacity;

  /// The maximum amount per hour for Spot Instances that you're willing to pay. We do not recommend using this parameter because it can lead to increased interruptions. If you do not specify this parameter, you will pay the current Spot price.
  ///
  /// If you specify a maximum price, your Spot Instances will be interrupted more frequently than if you do not specify this parameter.
  String? get maxTotalPrice;
  @override
  List<Object?> get props => [
        allocationStrategy,
        maintenanceStrategies,
        instanceInterruptionBehavior,
        instancePoolsToUseCount,
        singleInstanceType,
        singleAvailabilityZone,
        minTargetCapacity,
        maxTotalPrice,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SpotOptionsRequest')
      ..add(
        'allocationStrategy',
        allocationStrategy,
      )
      ..add(
        'maintenanceStrategies',
        maintenanceStrategies,
      )
      ..add(
        'instanceInterruptionBehavior',
        instanceInterruptionBehavior,
      )
      ..add(
        'instancePoolsToUseCount',
        instancePoolsToUseCount,
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

class SpotOptionsRequestEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<SpotOptionsRequest> {
  const SpotOptionsRequestEc2QuerySerializer() : super('SpotOptionsRequest');

  @override
  Iterable<Type> get types => const [
        SpotOptionsRequest,
        _$SpotOptionsRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SpotOptionsRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpotOptionsRequestBuilder();
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
            specifiedType: const FullType(SpotAllocationStrategy),
          ) as SpotAllocationStrategy);
        case 'MaintenanceStrategies':
          result.maintenanceStrategies.replace((serializers.deserialize(
            value,
            specifiedType:
                const FullType(FleetSpotMaintenanceStrategiesRequest),
          ) as FleetSpotMaintenanceStrategiesRequest));
        case 'InstanceInterruptionBehavior':
          result.instanceInterruptionBehavior = (serializers.deserialize(
            value,
            specifiedType: const FullType(SpotInstanceInterruptionBehavior),
          ) as SpotInstanceInterruptionBehavior);
        case 'InstancePoolsToUseCount':
          result.instancePoolsToUseCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
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
    SpotOptionsRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'SpotOptionsRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final SpotOptionsRequest(
      :allocationStrategy,
      :maintenanceStrategies,
      :instanceInterruptionBehavior,
      :instancePoolsToUseCount,
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
          specifiedType: const FullType(SpotAllocationStrategy),
        ));
    }
    if (maintenanceStrategies != null) {
      result$
        ..add(const _i2.XmlElementName('MaintenanceStrategies'))
        ..add(serializers.serialize(
          maintenanceStrategies,
          specifiedType: const FullType(FleetSpotMaintenanceStrategiesRequest),
        ));
    }
    if (instanceInterruptionBehavior != null) {
      result$
        ..add(const _i2.XmlElementName('InstanceInterruptionBehavior'))
        ..add(serializers.serialize(
          instanceInterruptionBehavior,
          specifiedType: const FullType(SpotInstanceInterruptionBehavior),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('InstancePoolsToUseCount'))
      ..add(serializers.serialize(
        instancePoolsToUseCount,
        specifiedType: const FullType(int),
      ));
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
