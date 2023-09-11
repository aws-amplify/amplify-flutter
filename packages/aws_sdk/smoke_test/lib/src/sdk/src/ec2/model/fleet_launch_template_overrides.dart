// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.fleet_launch_template_overrides; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_requirements.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/placement_response.dart';

part 'fleet_launch_template_overrides.g.dart';

/// Describes overrides for a launch template.
abstract class FleetLaunchTemplateOverrides
    with
        _i1.AWSEquatable<FleetLaunchTemplateOverrides>
    implements
        Built<FleetLaunchTemplateOverrides,
            FleetLaunchTemplateOverridesBuilder> {
  /// Describes overrides for a launch template.
  factory FleetLaunchTemplateOverrides({
    InstanceType? instanceType,
    String? maxPrice,
    String? subnetId,
    String? availabilityZone,
    double? weightedCapacity,
    double? priority,
    PlacementResponse? placement,
    InstanceRequirements? instanceRequirements,
    String? imageId,
  }) {
    weightedCapacity ??= 0;
    priority ??= 0;
    return _$FleetLaunchTemplateOverrides._(
      instanceType: instanceType,
      maxPrice: maxPrice,
      subnetId: subnetId,
      availabilityZone: availabilityZone,
      weightedCapacity: weightedCapacity,
      priority: priority,
      placement: placement,
      instanceRequirements: instanceRequirements,
      imageId: imageId,
    );
  }

  /// Describes overrides for a launch template.
  factory FleetLaunchTemplateOverrides.build(
          [void Function(FleetLaunchTemplateOverridesBuilder) updates]) =
      _$FleetLaunchTemplateOverrides;

  const FleetLaunchTemplateOverrides._();

  static const List<_i2.SmithySerializer<FleetLaunchTemplateOverrides>>
      serializers = [FleetLaunchTemplateOverridesEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FleetLaunchTemplateOverridesBuilder b) {
    b
      ..weightedCapacity = 0
      ..priority = 0;
  }

  /// The instance type.
  ///
  /// `mac1.metal` is not supported as a launch template override.
  ///
  /// If you specify `InstanceType`, you can't specify `InstanceRequirements`.
  InstanceType? get instanceType;

  /// The maximum price per unit hour that you are willing to pay for a Spot Instance. We do not recommend using this parameter because it can lead to increased interruptions. If you do not specify this parameter, you will pay the current Spot price.
  ///
  /// If you specify a maximum price, your instances will be interrupted more frequently than if you do not specify this parameter.
  String? get maxPrice;

  /// The ID of the subnet in which to launch the instances.
  String? get subnetId;

  /// The Availability Zone in which to launch the instances.
  String? get availabilityZone;

  /// The number of units provided by the specified instance type.
  double get weightedCapacity;

  /// The priority for the launch template override. The highest priority is launched first.
  ///
  /// If the On-Demand `AllocationStrategy` is set to `prioritized`, EC2 Fleet uses priority to determine which launch template override to use first in fulfilling On-Demand capacity.
  ///
  /// If the Spot `AllocationStrategy` is set to `capacity-optimized-prioritized`, EC2 Fleet uses priority on a best-effort basis to determine which launch template override to use in fulfilling Spot capacity, but optimizes for capacity first.
  ///
  /// Valid values are whole numbers starting at `0`. The lower the number, the higher the priority. If no number is set, the override has the lowest priority. You can set the same priority for different launch template overrides.
  double get priority;

  /// The location where the instance launched, if applicable.
  PlacementResponse? get placement;

  /// The attributes for the instance types. When you specify instance attributes, Amazon EC2 will identify instance types with those attributes.
  ///
  /// If you specify `InstanceRequirements`, you can't specify `InstanceType`.
  InstanceRequirements? get instanceRequirements;

  /// The ID of the AMI. An AMI is required to launch an instance. This parameter is only available for fleets of type `instant`. For fleets of type `maintain` and `request`, you must specify the AMI ID in the launch template.
  String? get imageId;
  @override
  List<Object?> get props => [
        instanceType,
        maxPrice,
        subnetId,
        availabilityZone,
        weightedCapacity,
        priority,
        placement,
        instanceRequirements,
        imageId,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FleetLaunchTemplateOverrides')
      ..add(
        'instanceType',
        instanceType,
      )
      ..add(
        'maxPrice',
        maxPrice,
      )
      ..add(
        'subnetId',
        subnetId,
      )
      ..add(
        'availabilityZone',
        availabilityZone,
      )
      ..add(
        'weightedCapacity',
        weightedCapacity,
      )
      ..add(
        'priority',
        priority,
      )
      ..add(
        'placement',
        placement,
      )
      ..add(
        'instanceRequirements',
        instanceRequirements,
      )
      ..add(
        'imageId',
        imageId,
      );
    return helper.toString();
  }
}

class FleetLaunchTemplateOverridesEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<FleetLaunchTemplateOverrides> {
  const FleetLaunchTemplateOverridesEc2QuerySerializer()
      : super('FleetLaunchTemplateOverrides');

  @override
  Iterable<Type> get types => const [
        FleetLaunchTemplateOverrides,
        _$FleetLaunchTemplateOverrides,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FleetLaunchTemplateOverrides deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FleetLaunchTemplateOverridesBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'instanceType':
          result.instanceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceType),
          ) as InstanceType);
        case 'maxPrice':
          result.maxPrice = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'subnetId':
          result.subnetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'availabilityZone':
          result.availabilityZone = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'weightedCapacity':
          result.weightedCapacity = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'priority':
          result.priority = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'placement':
          result.placement.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(PlacementResponse),
          ) as PlacementResponse));
        case 'instanceRequirements':
          result.instanceRequirements.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceRequirements),
          ) as InstanceRequirements));
        case 'imageId':
          result.imageId = (serializers.deserialize(
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
    FleetLaunchTemplateOverrides object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'FleetLaunchTemplateOverridesResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final FleetLaunchTemplateOverrides(
      :instanceType,
      :maxPrice,
      :subnetId,
      :availabilityZone,
      :weightedCapacity,
      :priority,
      :placement,
      :instanceRequirements,
      :imageId
    ) = object;
    if (instanceType != null) {
      result$
        ..add(const _i2.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          instanceType,
          specifiedType: const FullType(InstanceType),
        ));
    }
    if (maxPrice != null) {
      result$
        ..add(const _i2.XmlElementName('MaxPrice'))
        ..add(serializers.serialize(
          maxPrice,
          specifiedType: const FullType(String),
        ));
    }
    if (subnetId != null) {
      result$
        ..add(const _i2.XmlElementName('SubnetId'))
        ..add(serializers.serialize(
          subnetId,
          specifiedType: const FullType(String),
        ));
    }
    if (availabilityZone != null) {
      result$
        ..add(const _i2.XmlElementName('AvailabilityZone'))
        ..add(serializers.serialize(
          availabilityZone,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('WeightedCapacity'))
      ..add(serializers.serialize(
        weightedCapacity,
        specifiedType: const FullType(double),
      ));
    result$
      ..add(const _i2.XmlElementName('Priority'))
      ..add(serializers.serialize(
        priority,
        specifiedType: const FullType(double),
      ));
    if (placement != null) {
      result$
        ..add(const _i2.XmlElementName('Placement'))
        ..add(serializers.serialize(
          placement,
          specifiedType: const FullType(PlacementResponse),
        ));
    }
    if (instanceRequirements != null) {
      result$
        ..add(const _i2.XmlElementName('InstanceRequirements'))
        ..add(serializers.serialize(
          instanceRequirements,
          specifiedType: const FullType(InstanceRequirements),
        ));
    }
    if (imageId != null) {
      result$
        ..add(const _i2.XmlElementName('ImageId'))
        ..add(serializers.serialize(
          imageId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
