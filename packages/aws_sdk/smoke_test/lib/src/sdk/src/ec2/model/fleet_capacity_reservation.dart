// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.fleet_capacity_reservation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_instance_platform.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart';

part 'fleet_capacity_reservation.g.dart';

/// Information about a Capacity Reservation in a Capacity Reservation Fleet.
abstract class FleetCapacityReservation
    with _i1.AWSEquatable<FleetCapacityReservation>
    implements
        Built<FleetCapacityReservation, FleetCapacityReservationBuilder> {
  /// Information about a Capacity Reservation in a Capacity Reservation Fleet.
  factory FleetCapacityReservation({
    String? capacityReservationId,
    String? availabilityZoneId,
    InstanceType? instanceType,
    CapacityReservationInstancePlatform? instancePlatform,
    String? availabilityZone,
    int? totalInstanceCount,
    double? fulfilledCapacity,
    bool? ebsOptimized,
    DateTime? createDate,
    double? weight,
    int? priority,
  }) {
    totalInstanceCount ??= 0;
    fulfilledCapacity ??= 0;
    ebsOptimized ??= false;
    return _$FleetCapacityReservation._(
      capacityReservationId: capacityReservationId,
      availabilityZoneId: availabilityZoneId,
      instanceType: instanceType,
      instancePlatform: instancePlatform,
      availabilityZone: availabilityZone,
      totalInstanceCount: totalInstanceCount,
      fulfilledCapacity: fulfilledCapacity,
      ebsOptimized: ebsOptimized,
      createDate: createDate,
      weight: weight,
      priority: priority,
    );
  }

  /// Information about a Capacity Reservation in a Capacity Reservation Fleet.
  factory FleetCapacityReservation.build(
          [void Function(FleetCapacityReservationBuilder) updates]) =
      _$FleetCapacityReservation;

  const FleetCapacityReservation._();

  static const List<_i2.SmithySerializer<FleetCapacityReservation>>
      serializers = [FleetCapacityReservationEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(FleetCapacityReservationBuilder b) {
    b
      ..totalInstanceCount = 0
      ..fulfilledCapacity = 0
      ..ebsOptimized = false;
  }

  /// The ID of the Capacity Reservation.
  String? get capacityReservationId;

  /// The ID of the Availability Zone in which the Capacity Reservation reserves capacity.
  String? get availabilityZoneId;

  /// The instance type for which the Capacity Reservation reserves capacity.
  InstanceType? get instanceType;

  /// The type of operating system for which the Capacity Reservation reserves capacity.
  CapacityReservationInstancePlatform? get instancePlatform;

  /// The Availability Zone in which the Capacity Reservation reserves capacity.
  String? get availabilityZone;

  /// The total number of instances for which the Capacity Reservation reserves capacity.
  int get totalInstanceCount;

  /// The number of capacity units fulfilled by the Capacity Reservation. For more information, see [Total target capacity](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#target-capacity) in the Amazon EC2 User Guide.
  double get fulfilledCapacity;

  /// Indicates whether the Capacity Reservation reserves capacity for EBS-optimized instance types.
  bool get ebsOptimized;

  /// The date and time at which the Capacity Reservation was created.
  DateTime? get createDate;

  /// The weight of the instance type in the Capacity Reservation Fleet. For more information, see [Instance type weight](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#instance-weight) in the Amazon EC2 User Guide.
  double? get weight;

  /// The priority of the instance type in the Capacity Reservation Fleet. For more information, see [Instance type priority](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#instance-priority) in the Amazon EC2 User Guide.
  int? get priority;
  @override
  List<Object?> get props => [
        capacityReservationId,
        availabilityZoneId,
        instanceType,
        instancePlatform,
        availabilityZone,
        totalInstanceCount,
        fulfilledCapacity,
        ebsOptimized,
        createDate,
        weight,
        priority,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('FleetCapacityReservation')
      ..add(
        'capacityReservationId',
        capacityReservationId,
      )
      ..add(
        'availabilityZoneId',
        availabilityZoneId,
      )
      ..add(
        'instanceType',
        instanceType,
      )
      ..add(
        'instancePlatform',
        instancePlatform,
      )
      ..add(
        'availabilityZone',
        availabilityZone,
      )
      ..add(
        'totalInstanceCount',
        totalInstanceCount,
      )
      ..add(
        'fulfilledCapacity',
        fulfilledCapacity,
      )
      ..add(
        'ebsOptimized',
        ebsOptimized,
      )
      ..add(
        'createDate',
        createDate,
      )
      ..add(
        'weight',
        weight,
      )
      ..add(
        'priority',
        priority,
      );
    return helper.toString();
  }
}

class FleetCapacityReservationEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<FleetCapacityReservation> {
  const FleetCapacityReservationEc2QuerySerializer()
      : super('FleetCapacityReservation');

  @override
  Iterable<Type> get types => const [
        FleetCapacityReservation,
        _$FleetCapacityReservation,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  FleetCapacityReservation deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FleetCapacityReservationBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'capacityReservationId':
          result.capacityReservationId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'availabilityZoneId':
          result.availabilityZoneId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceType':
          result.instanceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceType),
          ) as InstanceType);
        case 'instancePlatform':
          result.instancePlatform = (serializers.deserialize(
            value,
            specifiedType: const FullType(CapacityReservationInstancePlatform),
          ) as CapacityReservationInstancePlatform);
        case 'availabilityZone':
          result.availabilityZone = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'totalInstanceCount':
          result.totalInstanceCount = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'fulfilledCapacity':
          result.fulfilledCapacity = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'ebsOptimized':
          result.ebsOptimized = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'createDate':
          result.createDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'weight':
          result.weight = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'priority':
          result.priority = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    FleetCapacityReservation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'FleetCapacityReservationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final FleetCapacityReservation(
      :capacityReservationId,
      :availabilityZoneId,
      :instanceType,
      :instancePlatform,
      :availabilityZone,
      :totalInstanceCount,
      :fulfilledCapacity,
      :ebsOptimized,
      :createDate,
      :weight,
      :priority
    ) = object;
    if (capacityReservationId != null) {
      result$
        ..add(const _i2.XmlElementName('CapacityReservationId'))
        ..add(serializers.serialize(
          capacityReservationId,
          specifiedType: const FullType(String),
        ));
    }
    if (availabilityZoneId != null) {
      result$
        ..add(const _i2.XmlElementName('AvailabilityZoneId'))
        ..add(serializers.serialize(
          availabilityZoneId,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceType != null) {
      result$
        ..add(const _i2.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          instanceType,
          specifiedType: const FullType(InstanceType),
        ));
    }
    if (instancePlatform != null) {
      result$
        ..add(const _i2.XmlElementName('InstancePlatform'))
        ..add(serializers.serialize(
          instancePlatform,
          specifiedType: const FullType(CapacityReservationInstancePlatform),
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
      ..add(const _i2.XmlElementName('TotalInstanceCount'))
      ..add(serializers.serialize(
        totalInstanceCount,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i2.XmlElementName('FulfilledCapacity'))
      ..add(serializers.serialize(
        fulfilledCapacity,
        specifiedType: const FullType(double),
      ));
    result$
      ..add(const _i2.XmlElementName('EbsOptimized'))
      ..add(serializers.serialize(
        ebsOptimized,
        specifiedType: const FullType(bool),
      ));
    if (createDate != null) {
      result$
        ..add(const _i2.XmlElementName('CreateDate'))
        ..add(serializers.serialize(
          createDate,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (weight != null) {
      result$
        ..add(const _i2.XmlElementName('Weight'))
        ..add(serializers.serialize(
          weight,
          specifiedType: const FullType(double),
        ));
    }
    if (priority != null) {
      result$
        ..add(const _i2.XmlElementName('Priority'))
        ..add(serializers.serialize(
          priority,
          specifiedType: const FullType(int),
        ));
    }
    return result$;
  }
}
