// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.fleet_launch_template_overrides_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_requirements_request.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/placement.dart';

part 'fleet_launch_template_overrides_request.g.dart';

/// Describes overrides for a launch template.
abstract class FleetLaunchTemplateOverridesRequest
    with
        _i1.AWSEquatable<FleetLaunchTemplateOverridesRequest>
    implements
        Built<FleetLaunchTemplateOverridesRequest,
            FleetLaunchTemplateOverridesRequestBuilder> {
  /// Describes overrides for a launch template.
  factory FleetLaunchTemplateOverridesRequest({
    InstanceType? instanceType,
    String? maxPrice,
    String? subnetId,
    String? availabilityZone,
    double? weightedCapacity,
    double? priority,
    Placement? placement,
    InstanceRequirementsRequest? instanceRequirements,
    String? imageId,
  }) {
    weightedCapacity ??= 0;
    priority ??= 0;
    return _$FleetLaunchTemplateOverridesRequest._(
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
  factory FleetLaunchTemplateOverridesRequest.build(
          [void Function(FleetLaunchTemplateOverridesRequestBuilder) updates]) =
      _$FleetLaunchTemplateOverridesRequest;

  const FleetLaunchTemplateOverridesRequest._();

  static const List<_i2.SmithySerializer<FleetLaunchTemplateOverridesRequest>>
      serializers = [FleetLaunchTemplateOverridesRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FleetLaunchTemplateOverridesRequestBuilder b) {
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

  /// The IDs of the subnets in which to launch the instances. Separate multiple subnet IDs using commas (for example, `subnet-1234abcdeexample1, subnet-0987cdef6example2`). A request of type `instant` can have only one subnet ID.
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
  /// Valid values are whole numbers starting at `0`. The lower the number, the higher the priority. If no number is set, the launch template override has the lowest priority. You can set the same priority for different launch template overrides.
  double get priority;

  /// The location where the instance launched, if applicable.
  Placement? get placement;

  /// The attributes for the instance types. When you specify instance attributes, Amazon EC2 will identify instance types with those attributes.
  ///
  /// If you specify `InstanceRequirements`, you can't specify `InstanceType`.
  InstanceRequirementsRequest? get instanceRequirements;

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
    final helper =
        newBuiltValueToStringHelper('FleetLaunchTemplateOverridesRequest')
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

class FleetLaunchTemplateOverridesRequestEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<FleetLaunchTemplateOverridesRequest> {
  const FleetLaunchTemplateOverridesRequestEc2QuerySerializer()
      : super('FleetLaunchTemplateOverridesRequest');

  @override
  Iterable<Type> get types => const [
        FleetLaunchTemplateOverridesRequest,
        _$FleetLaunchTemplateOverridesRequest,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FleetLaunchTemplateOverridesRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FleetLaunchTemplateOverridesRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'InstanceType':
          result.instanceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceType),
          ) as InstanceType);
        case 'MaxPrice':
          result.maxPrice = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SubnetId':
          result.subnetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AvailabilityZone':
          result.availabilityZone = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'WeightedCapacity':
          result.weightedCapacity = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'Priority':
          result.priority = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'Placement':
          result.placement.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(Placement),
          ) as Placement));
        case 'InstanceRequirements':
          result.instanceRequirements.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceRequirementsRequest),
          ) as InstanceRequirementsRequest));
        case 'ImageId':
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
    FleetLaunchTemplateOverridesRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'FleetLaunchTemplateOverridesRequestResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final FleetLaunchTemplateOverridesRequest(
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
          specifiedType: const FullType(Placement),
        ));
    }
    if (instanceRequirements != null) {
      result$
        ..add(const _i2.XmlElementName('InstanceRequirements'))
        ..add(serializers.serialize(
          instanceRequirements,
          specifiedType: const FullType(InstanceRequirementsRequest),
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
