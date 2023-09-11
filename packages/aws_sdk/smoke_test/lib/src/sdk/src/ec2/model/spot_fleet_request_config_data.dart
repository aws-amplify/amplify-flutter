// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.spot_fleet_request_config_data; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/allocation_strategy.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/excess_capacity_termination_policy.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_interruption_behavior.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_config.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/load_balancers_config.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/on_demand_allocation_strategy.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_fleet_launch_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/spot_maintenance_strategies.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/target_capacity_unit_type.dart';

part 'spot_fleet_request_config_data.g.dart';

/// Describes the configuration of a Spot Fleet request.
abstract class SpotFleetRequestConfigData
    with _i1.AWSEquatable<SpotFleetRequestConfigData>
    implements
        Built<SpotFleetRequestConfigData, SpotFleetRequestConfigDataBuilder> {
  /// Describes the configuration of a Spot Fleet request.
  factory SpotFleetRequestConfigData({
    AllocationStrategy? allocationStrategy,
    OnDemandAllocationStrategy? onDemandAllocationStrategy,
    SpotMaintenanceStrategies? spotMaintenanceStrategies,
    String? clientToken,
    ExcessCapacityTerminationPolicy? excessCapacityTerminationPolicy,
    double? fulfilledCapacity,
    double? onDemandFulfilledCapacity,
    String? iamFleetRole,
    List<SpotFleetLaunchSpecification>? launchSpecifications,
    List<LaunchTemplateConfig>? launchTemplateConfigs,
    String? spotPrice,
    int? targetCapacity,
    int? onDemandTargetCapacity,
    String? onDemandMaxTotalPrice,
    String? spotMaxTotalPrice,
    bool? terminateInstancesWithExpiration,
    FleetType? type,
    DateTime? validFrom,
    DateTime? validUntil,
    bool? replaceUnhealthyInstances,
    InstanceInterruptionBehavior? instanceInterruptionBehavior,
    LoadBalancersConfig? loadBalancersConfig,
    int? instancePoolsToUseCount,
    String? context,
    TargetCapacityUnitType? targetCapacityUnitType,
    List<TagSpecification>? tagSpecifications,
  }) {
    fulfilledCapacity ??= 0;
    onDemandFulfilledCapacity ??= 0;
    targetCapacity ??= 0;
    onDemandTargetCapacity ??= 0;
    terminateInstancesWithExpiration ??= false;
    replaceUnhealthyInstances ??= false;
    instancePoolsToUseCount ??= 0;
    return _$SpotFleetRequestConfigData._(
      allocationStrategy: allocationStrategy,
      onDemandAllocationStrategy: onDemandAllocationStrategy,
      spotMaintenanceStrategies: spotMaintenanceStrategies,
      clientToken: clientToken,
      excessCapacityTerminationPolicy: excessCapacityTerminationPolicy,
      fulfilledCapacity: fulfilledCapacity,
      onDemandFulfilledCapacity: onDemandFulfilledCapacity,
      iamFleetRole: iamFleetRole,
      launchSpecifications: launchSpecifications == null
          ? null
          : _i2.BuiltList(launchSpecifications),
      launchTemplateConfigs: launchTemplateConfigs == null
          ? null
          : _i2.BuiltList(launchTemplateConfigs),
      spotPrice: spotPrice,
      targetCapacity: targetCapacity,
      onDemandTargetCapacity: onDemandTargetCapacity,
      onDemandMaxTotalPrice: onDemandMaxTotalPrice,
      spotMaxTotalPrice: spotMaxTotalPrice,
      terminateInstancesWithExpiration: terminateInstancesWithExpiration,
      type: type,
      validFrom: validFrom,
      validUntil: validUntil,
      replaceUnhealthyInstances: replaceUnhealthyInstances,
      instanceInterruptionBehavior: instanceInterruptionBehavior,
      loadBalancersConfig: loadBalancersConfig,
      instancePoolsToUseCount: instancePoolsToUseCount,
      context: context,
      targetCapacityUnitType: targetCapacityUnitType,
      tagSpecifications:
          tagSpecifications == null ? null : _i2.BuiltList(tagSpecifications),
    );
  }

  /// Describes the configuration of a Spot Fleet request.
  factory SpotFleetRequestConfigData.build(
          [void Function(SpotFleetRequestConfigDataBuilder) updates]) =
      _$SpotFleetRequestConfigData;

  const SpotFleetRequestConfigData._();

  static const List<_i3.SmithySerializer<SpotFleetRequestConfigData>>
      serializers = [SpotFleetRequestConfigDataEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(SpotFleetRequestConfigDataBuilder b) {
    b
      ..fulfilledCapacity = 0
      ..onDemandFulfilledCapacity = 0
      ..targetCapacity = 0
      ..onDemandTargetCapacity = 0
      ..terminateInstancesWithExpiration = false
      ..replaceUnhealthyInstances = false
      ..instancePoolsToUseCount = 0;
  }

  /// The strategy that determines how to allocate the target Spot Instance capacity across the Spot Instance pools specified by the Spot Fleet launch configuration. For more information, see [Allocation strategies for Spot Instances](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-allocation-strategy.html) in the _Amazon EC2 User Guide_.
  ///
  /// priceCapacityOptimized (recommended)
  ///
  /// Spot Fleet identifies the pools with the highest capacity availability for the number of instances that are launching. This means that we will request Spot Instances from the pools that we believe have the lowest chance of interruption in the near term. Spot Fleet then requests Spot Instances from the lowest priced of these pools.
  ///
  /// capacityOptimized
  ///
  /// Spot Fleet identifies the pools with the highest capacity availability for the number of instances that are launching. This means that we will request Spot Instances from the pools that we believe have the lowest chance of interruption in the near term. To give certain instance types a higher chance of launching first, use `capacityOptimizedPrioritized`. Set a priority for each instance type by using the `Priority` parameter for `LaunchTemplateOverrides`. You can assign the same priority to different `LaunchTemplateOverrides`. EC2 implements the priorities on a best-effort basis, but optimizes for capacity first. `capacityOptimizedPrioritized` is supported only if your Spot Fleet uses a launch template. Note that if the `OnDemandAllocationStrategy` is set to `prioritized`, the same priority is applied when fulfilling On-Demand capacity.
  ///
  /// diversified
  ///
  /// Spot Fleet requests instances from all of the Spot Instance pools that you specify.
  ///
  /// lowestPrice
  ///
  /// Spot Fleet requests instances from the lowest priced Spot Instance pool that has available capacity. If the lowest priced pool doesn't have available capacity, the Spot Instances come from the next lowest priced pool that has available capacity. If a pool runs out of capacity before fulfilling your desired capacity, Spot Fleet will continue to fulfill your request by drawing from the next lowest priced pool. To ensure that your desired capacity is met, you might receive Spot Instances from several pools. Because this strategy only considers instance price and not capacity availability, it might lead to high interruption rates.
  ///
  /// Default: `lowestPrice`
  AllocationStrategy? get allocationStrategy;

  /// The order of the launch template overrides to use in fulfilling On-Demand capacity. If you specify `lowestPrice`, Spot Fleet uses price to determine the order, launching the lowest price first. If you specify `prioritized`, Spot Fleet uses the priority that you assign to each Spot Fleet launch template override, launching the highest priority first. If you do not specify a value, Spot Fleet defaults to `lowestPrice`.
  OnDemandAllocationStrategy? get onDemandAllocationStrategy;

  /// The strategies for managing your Spot Instances that are at an elevated risk of being interrupted.
  SpotMaintenanceStrategies? get spotMaintenanceStrategies;

  /// A unique, case-sensitive identifier that you provide to ensure the idempotency of your listings. This helps to avoid duplicate listings. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// Indicates whether running instances should be terminated if you decrease the target capacity of the Spot Fleet request below the current size of the Spot Fleet.
  ///
  /// Supported only for fleets of type `maintain`.
  ExcessCapacityTerminationPolicy? get excessCapacityTerminationPolicy;

  /// The number of units fulfilled by this request compared to the set target capacity. You cannot set this value.
  double get fulfilledCapacity;

  /// The number of On-Demand units fulfilled by this request compared to the set target On-Demand capacity.
  double get onDemandFulfilledCapacity;

  /// The Amazon Resource Name (ARN) of an Identity and Access Management (IAM) role that grants the Spot Fleet the permission to request, launch, terminate, and tag instances on your behalf. For more information, see [Spot Fleet prerequisites](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/spot-fleet-requests.html#spot-fleet-prerequisites) in the _Amazon EC2 User Guide_. Spot Fleet can terminate Spot Instances on your behalf when you cancel its Spot Fleet request using [CancelSpotFleetRequests](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CancelSpotFleetRequests) or when the Spot Fleet request expires, if you set `TerminateInstancesWithExpiration`.
  String? get iamFleetRole;

  /// The launch specifications for the Spot Fleet request. If you specify `LaunchSpecifications`, you can't specify `LaunchTemplateConfigs`. If you include On-Demand capacity in your request, you must use `LaunchTemplateConfigs`.
  _i2.BuiltList<SpotFleetLaunchSpecification>? get launchSpecifications;

  /// The launch template and overrides. If you specify `LaunchTemplateConfigs`, you can't specify `LaunchSpecifications`. If you include On-Demand capacity in your request, you must use `LaunchTemplateConfigs`.
  _i2.BuiltList<LaunchTemplateConfig>? get launchTemplateConfigs;

  /// The maximum price per unit hour that you are willing to pay for a Spot Instance. We do not recommend using this parameter because it can lead to increased interruptions. If you do not specify this parameter, you will pay the current Spot price.
  ///
  /// If you specify a maximum price, your instances will be interrupted more frequently than if you do not specify this parameter.
  String? get spotPrice;

  /// The number of units to request for the Spot Fleet. You can choose to set the target capacity in terms of instances or a performance characteristic that is important to your application workload, such as vCPUs, memory, or I/O. If the request type is `maintain`, you can specify a target capacity of 0 and add capacity later.
  int get targetCapacity;

  /// The number of On-Demand units to request. You can choose to set the target capacity in terms of instances or a performance characteristic that is important to your application workload, such as vCPUs, memory, or I/O. If the request type is `maintain`, you can specify a target capacity of 0 and add capacity later.
  int get onDemandTargetCapacity;

  /// The maximum amount per hour for On-Demand Instances that you're willing to pay. You can use the `onDemandMaxTotalPrice` parameter, the `spotMaxTotalPrice` parameter, or both parameters to ensure that your fleet cost does not exceed your budget. If you set a maximum price per hour for the On-Demand Instances and Spot Instances in your request, Spot Fleet will launch instances until it reaches the maximum amount you're willing to pay. When the maximum amount you're willing to pay is reached, the fleet stops launching instances even if it hasn’t met the target capacity.
  String? get onDemandMaxTotalPrice;

  /// The maximum amount per hour for Spot Instances that you're willing to pay. You can use the `spotdMaxTotalPrice` parameter, the `onDemandMaxTotalPrice` parameter, or both parameters to ensure that your fleet cost does not exceed your budget. If you set a maximum price per hour for the On-Demand Instances and Spot Instances in your request, Spot Fleet will launch instances until it reaches the maximum amount you're willing to pay. When the maximum amount you're willing to pay is reached, the fleet stops launching instances even if it hasn’t met the target capacity.
  String? get spotMaxTotalPrice;

  /// Indicates whether running Spot Instances are terminated when the Spot Fleet request expires.
  bool get terminateInstancesWithExpiration;

  /// The type of request. Indicates whether the Spot Fleet only requests the target capacity or also attempts to maintain it. When this value is `request`, the Spot Fleet only places the required requests. It does not attempt to replenish Spot Instances if capacity is diminished, nor does it submit requests in alternative Spot pools if capacity is not available. When this value is `maintain`, the Spot Fleet maintains the target capacity. The Spot Fleet places the required requests to meet capacity and automatically replenishes any interrupted instances. Default: `maintain`. `instant` is listed but is not used by Spot Fleet.
  FleetType? get type;

  /// The start date and time of the request, in UTC format (_YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z). By default, Amazon EC2 starts fulfilling the request immediately.
  DateTime? get validFrom;

  /// The end date and time of the request, in UTC format (_YYYY_-_MM_-_DD_T_HH_:_MM_:_SS_Z). After the end date and time, no new Spot Instance requests are placed or able to fulfill the request. If no value is specified, the Spot Fleet request remains until you cancel it.
  DateTime? get validUntil;

  /// Indicates whether Spot Fleet should replace unhealthy instances.
  bool get replaceUnhealthyInstances;

  /// The behavior when a Spot Instance is interrupted. The default is `terminate`.
  InstanceInterruptionBehavior? get instanceInterruptionBehavior;

  /// One or more Classic Load Balancers and target groups to attach to the Spot Fleet request. Spot Fleet registers the running Spot Instances with the specified Classic Load Balancers and target groups.
  ///
  /// With Network Load Balancers, Spot Fleet cannot register instances that have the following instance types: C1, CC1, CC2, CG1, CG2, CR1, CS1, G1, G2, HI1, HS1, M1, M2, M3, and T1.
  LoadBalancersConfig? get loadBalancersConfig;

  /// The number of Spot pools across which to allocate your target Spot capacity. Valid only when Spot **AllocationStrategy** is set to `lowest-price`. Spot Fleet selects the cheapest Spot pools and evenly allocates your target Spot capacity across the number of Spot pools that you specify.
  ///
  /// Note that Spot Fleet attempts to draw Spot Instances from the number of pools that you specify on a best effort basis. If a pool runs out of Spot capacity before fulfilling your target capacity, Spot Fleet will continue to fulfill your request by drawing from the next cheapest pool. To ensure that your target capacity is met, you might receive Spot Instances from more than the number of pools that you specified. Similarly, if most of the pools have no Spot capacity, you might receive your full target capacity from fewer than the number of pools that you specified.
  int get instancePoolsToUseCount;

  /// Reserved.
  String? get context;

  /// The unit for the target capacity. `TargetCapacityUnitType` can only be specified when `InstanceRequirements` is specified.
  ///
  /// Default: `units` (translates to number of instances)
  TargetCapacityUnitType? get targetCapacityUnitType;

  /// The key-value pair for tagging the Spot Fleet request on creation. The value for `ResourceType` must be `spot-fleet-request`, otherwise the Spot Fleet request fails. To tag instances at launch, specify the tags in the [launch template](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-launch-templates.html#create-launch-template) (valid only if you use `LaunchTemplateConfigs`) or in the `[SpotFleetTagSpecification](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_SpotFleetTagSpecification.html)` (valid only if you use `LaunchSpecifications`). For information about tagging after launch, see [Tagging Your Resources](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Using_Tags.html#tag-resources).
  _i2.BuiltList<TagSpecification>? get tagSpecifications;
  @override
  List<Object?> get props => [
        allocationStrategy,
        onDemandAllocationStrategy,
        spotMaintenanceStrategies,
        clientToken,
        excessCapacityTerminationPolicy,
        fulfilledCapacity,
        onDemandFulfilledCapacity,
        iamFleetRole,
        launchSpecifications,
        launchTemplateConfigs,
        spotPrice,
        targetCapacity,
        onDemandTargetCapacity,
        onDemandMaxTotalPrice,
        spotMaxTotalPrice,
        terminateInstancesWithExpiration,
        type,
        validFrom,
        validUntil,
        replaceUnhealthyInstances,
        instanceInterruptionBehavior,
        loadBalancersConfig,
        instancePoolsToUseCount,
        context,
        targetCapacityUnitType,
        tagSpecifications,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('SpotFleetRequestConfigData')
      ..add(
        'allocationStrategy',
        allocationStrategy,
      )
      ..add(
        'onDemandAllocationStrategy',
        onDemandAllocationStrategy,
      )
      ..add(
        'spotMaintenanceStrategies',
        spotMaintenanceStrategies,
      )
      ..add(
        'clientToken',
        clientToken,
      )
      ..add(
        'excessCapacityTerminationPolicy',
        excessCapacityTerminationPolicy,
      )
      ..add(
        'fulfilledCapacity',
        fulfilledCapacity,
      )
      ..add(
        'onDemandFulfilledCapacity',
        onDemandFulfilledCapacity,
      )
      ..add(
        'iamFleetRole',
        iamFleetRole,
      )
      ..add(
        'launchSpecifications',
        launchSpecifications,
      )
      ..add(
        'launchTemplateConfigs',
        launchTemplateConfigs,
      )
      ..add(
        'spotPrice',
        spotPrice,
      )
      ..add(
        'targetCapacity',
        targetCapacity,
      )
      ..add(
        'onDemandTargetCapacity',
        onDemandTargetCapacity,
      )
      ..add(
        'onDemandMaxTotalPrice',
        onDemandMaxTotalPrice,
      )
      ..add(
        'spotMaxTotalPrice',
        spotMaxTotalPrice,
      )
      ..add(
        'terminateInstancesWithExpiration',
        terminateInstancesWithExpiration,
      )
      ..add(
        'type',
        type,
      )
      ..add(
        'validFrom',
        validFrom,
      )
      ..add(
        'validUntil',
        validUntil,
      )
      ..add(
        'replaceUnhealthyInstances',
        replaceUnhealthyInstances,
      )
      ..add(
        'instanceInterruptionBehavior',
        instanceInterruptionBehavior,
      )
      ..add(
        'loadBalancersConfig',
        loadBalancersConfig,
      )
      ..add(
        'instancePoolsToUseCount',
        instancePoolsToUseCount,
      )
      ..add(
        'context',
        context,
      )
      ..add(
        'targetCapacityUnitType',
        targetCapacityUnitType,
      )
      ..add(
        'tagSpecifications',
        tagSpecifications,
      );
    return helper.toString();
  }
}

class SpotFleetRequestConfigDataEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<SpotFleetRequestConfigData> {
  const SpotFleetRequestConfigDataEc2QuerySerializer()
      : super('SpotFleetRequestConfigData');

  @override
  Iterable<Type> get types => const [
        SpotFleetRequestConfigData,
        _$SpotFleetRequestConfigData,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  SpotFleetRequestConfigData deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SpotFleetRequestConfigDataBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'allocationStrategy':
          result.allocationStrategy = (serializers.deserialize(
            value,
            specifiedType: const FullType(AllocationStrategy),
          ) as AllocationStrategy);
        case 'onDemandAllocationStrategy':
          result.onDemandAllocationStrategy = (serializers.deserialize(
            value,
            specifiedType: const FullType(OnDemandAllocationStrategy),
          ) as OnDemandAllocationStrategy);
        case 'spotMaintenanceStrategies':
          result.spotMaintenanceStrategies.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(SpotMaintenanceStrategies),
          ) as SpotMaintenanceStrategies));
        case 'clientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'excessCapacityTerminationPolicy':
          result.excessCapacityTerminationPolicy = (serializers.deserialize(
            value,
            specifiedType: const FullType(ExcessCapacityTerminationPolicy),
          ) as ExcessCapacityTerminationPolicy);
        case 'fulfilledCapacity':
          result.fulfilledCapacity = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'onDemandFulfilledCapacity':
          result.onDemandFulfilledCapacity = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'iamFleetRole':
          result.iamFleetRole = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'launchSpecifications':
          result.launchSpecifications.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(SpotFleetLaunchSpecification)],
            ),
          ) as _i2.BuiltList<SpotFleetLaunchSpecification>));
        case 'launchTemplateConfigs':
          result.launchTemplateConfigs
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(LaunchTemplateConfig)],
            ),
          ) as _i2.BuiltList<LaunchTemplateConfig>));
        case 'spotPrice':
          result.spotPrice = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'targetCapacity':
          result.targetCapacity = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'onDemandTargetCapacity':
          result.onDemandTargetCapacity = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'onDemandMaxTotalPrice':
          result.onDemandMaxTotalPrice = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'spotMaxTotalPrice':
          result.spotMaxTotalPrice = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'terminateInstancesWithExpiration':
          result.terminateInstancesWithExpiration = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'type':
          result.type = (serializers.deserialize(
            value,
            specifiedType: const FullType(FleetType),
          ) as FleetType);
        case 'validFrom':
          result.validFrom = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'validUntil':
          result.validUntil = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'replaceUnhealthyInstances':
          result.replaceUnhealthyInstances = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'instanceInterruptionBehavior':
          result.instanceInterruptionBehavior = (serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceInterruptionBehavior),
          ) as InstanceInterruptionBehavior);
        case 'loadBalancersConfig':
          result.loadBalancersConfig.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(LoadBalancersConfig),
          ) as LoadBalancersConfig));
        case 'instancePoolsToUseCount':
          result.instancePoolsToUseCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'context':
          result.context = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'targetCapacityUnitType':
          result.targetCapacityUnitType = (serializers.deserialize(
            value,
            specifiedType: const FullType(TargetCapacityUnitType),
          ) as TargetCapacityUnitType);
        case 'TagSpecification':
          result.tagSpecifications.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(TagSpecification)],
            ),
          ) as _i2.BuiltList<TagSpecification>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SpotFleetRequestConfigData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'SpotFleetRequestConfigDataResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final SpotFleetRequestConfigData(
      :allocationStrategy,
      :onDemandAllocationStrategy,
      :spotMaintenanceStrategies,
      :clientToken,
      :excessCapacityTerminationPolicy,
      :fulfilledCapacity,
      :onDemandFulfilledCapacity,
      :iamFleetRole,
      :launchSpecifications,
      :launchTemplateConfigs,
      :spotPrice,
      :targetCapacity,
      :onDemandTargetCapacity,
      :onDemandMaxTotalPrice,
      :spotMaxTotalPrice,
      :terminateInstancesWithExpiration,
      :type,
      :validFrom,
      :validUntil,
      :replaceUnhealthyInstances,
      :instanceInterruptionBehavior,
      :loadBalancersConfig,
      :instancePoolsToUseCount,
      :context,
      :targetCapacityUnitType,
      :tagSpecifications
    ) = object;
    if (allocationStrategy != null) {
      result$
        ..add(const _i3.XmlElementName('AllocationStrategy'))
        ..add(serializers.serialize(
          allocationStrategy,
          specifiedType: const FullType(AllocationStrategy),
        ));
    }
    if (onDemandAllocationStrategy != null) {
      result$
        ..add(const _i3.XmlElementName('OnDemandAllocationStrategy'))
        ..add(serializers.serialize(
          onDemandAllocationStrategy,
          specifiedType: const FullType(OnDemandAllocationStrategy),
        ));
    }
    if (spotMaintenanceStrategies != null) {
      result$
        ..add(const _i3.XmlElementName('SpotMaintenanceStrategies'))
        ..add(serializers.serialize(
          spotMaintenanceStrategies,
          specifiedType: const FullType(SpotMaintenanceStrategies),
        ));
    }
    if (clientToken != null) {
      result$
        ..add(const _i3.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    if (excessCapacityTerminationPolicy != null) {
      result$
        ..add(const _i3.XmlElementName('ExcessCapacityTerminationPolicy'))
        ..add(serializers.serialize(
          excessCapacityTerminationPolicy,
          specifiedType: const FullType(ExcessCapacityTerminationPolicy),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('FulfilledCapacity'))
      ..add(serializers.serialize(
        fulfilledCapacity,
        specifiedType: const FullType(double),
      ));
    result$
      ..add(const _i3.XmlElementName('OnDemandFulfilledCapacity'))
      ..add(serializers.serialize(
        onDemandFulfilledCapacity,
        specifiedType: const FullType(double),
      ));
    if (iamFleetRole != null) {
      result$
        ..add(const _i3.XmlElementName('IamFleetRole'))
        ..add(serializers.serialize(
          iamFleetRole,
          specifiedType: const FullType(String),
        ));
    }
    if (launchSpecifications != null) {
      result$
        ..add(const _i3.XmlElementName('LaunchSpecifications'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          launchSpecifications,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(SpotFleetLaunchSpecification)],
          ),
        ));
    }
    if (launchTemplateConfigs != null) {
      result$
        ..add(const _i3.XmlElementName('LaunchTemplateConfigs'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          launchTemplateConfigs,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(LaunchTemplateConfig)],
          ),
        ));
    }
    if (spotPrice != null) {
      result$
        ..add(const _i3.XmlElementName('SpotPrice'))
        ..add(serializers.serialize(
          spotPrice,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('TargetCapacity'))
      ..add(serializers.serialize(
        targetCapacity,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i3.XmlElementName('OnDemandTargetCapacity'))
      ..add(serializers.serialize(
        onDemandTargetCapacity,
        specifiedType: const FullType(int),
      ));
    if (onDemandMaxTotalPrice != null) {
      result$
        ..add(const _i3.XmlElementName('OnDemandMaxTotalPrice'))
        ..add(serializers.serialize(
          onDemandMaxTotalPrice,
          specifiedType: const FullType(String),
        ));
    }
    if (spotMaxTotalPrice != null) {
      result$
        ..add(const _i3.XmlElementName('SpotMaxTotalPrice'))
        ..add(serializers.serialize(
          spotMaxTotalPrice,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('TerminateInstancesWithExpiration'))
      ..add(serializers.serialize(
        terminateInstancesWithExpiration,
        specifiedType: const FullType(bool),
      ));
    if (type != null) {
      result$
        ..add(const _i3.XmlElementName('Type'))
        ..add(serializers.serialize(
          type,
          specifiedType: const FullType(FleetType),
        ));
    }
    if (validFrom != null) {
      result$
        ..add(const _i3.XmlElementName('ValidFrom'))
        ..add(serializers.serialize(
          validFrom,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (validUntil != null) {
      result$
        ..add(const _i3.XmlElementName('ValidUntil'))
        ..add(serializers.serialize(
          validUntil,
          specifiedType: const FullType(DateTime),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('ReplaceUnhealthyInstances'))
      ..add(serializers.serialize(
        replaceUnhealthyInstances,
        specifiedType: const FullType(bool),
      ));
    if (instanceInterruptionBehavior != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceInterruptionBehavior'))
        ..add(serializers.serialize(
          instanceInterruptionBehavior,
          specifiedType: const FullType(InstanceInterruptionBehavior),
        ));
    }
    if (loadBalancersConfig != null) {
      result$
        ..add(const _i3.XmlElementName('LoadBalancersConfig'))
        ..add(serializers.serialize(
          loadBalancersConfig,
          specifiedType: const FullType(LoadBalancersConfig),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('InstancePoolsToUseCount'))
      ..add(serializers.serialize(
        instancePoolsToUseCount,
        specifiedType: const FullType(int),
      ));
    if (context != null) {
      result$
        ..add(const _i3.XmlElementName('Context'))
        ..add(serializers.serialize(
          context,
          specifiedType: const FullType(String),
        ));
    }
    if (targetCapacityUnitType != null) {
      result$
        ..add(const _i3.XmlElementName('TargetCapacityUnitType'))
        ..add(serializers.serialize(
          targetCapacityUnitType,
          specifiedType: const FullType(TargetCapacityUnitType),
        ));
    }
    if (tagSpecifications != null) {
      result$
        ..add(const _i3.XmlElementName('TagSpecification'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tagSpecifications,
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(TagSpecification)],
          ),
        ));
    }
    return result$;
  }
}
