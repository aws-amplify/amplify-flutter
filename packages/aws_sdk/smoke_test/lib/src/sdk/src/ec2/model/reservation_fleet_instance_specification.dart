// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.reservation_fleet_instance_specification; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_instance_platform.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart';

part 'reservation_fleet_instance_specification.g.dart';

/// Information about an instance type to use in a Capacity Reservation Fleet.
abstract class ReservationFleetInstanceSpecification
    with
        _i1.AWSEquatable<ReservationFleetInstanceSpecification>
    implements
        Built<ReservationFleetInstanceSpecification,
            ReservationFleetInstanceSpecificationBuilder> {
  /// Information about an instance type to use in a Capacity Reservation Fleet.
  factory ReservationFleetInstanceSpecification({
    InstanceType? instanceType,
    CapacityReservationInstancePlatform? instancePlatform,
    double? weight,
    String? availabilityZone,
    String? availabilityZoneId,
    bool? ebsOptimized,
    int? priority,
  }) {
    ebsOptimized ??= false;
    return _$ReservationFleetInstanceSpecification._(
      instanceType: instanceType,
      instancePlatform: instancePlatform,
      weight: weight,
      availabilityZone: availabilityZone,
      availabilityZoneId: availabilityZoneId,
      ebsOptimized: ebsOptimized,
      priority: priority,
    );
  }

  /// Information about an instance type to use in a Capacity Reservation Fleet.
  factory ReservationFleetInstanceSpecification.build(
      [void Function(ReservationFleetInstanceSpecificationBuilder)
          updates]) = _$ReservationFleetInstanceSpecification;

  const ReservationFleetInstanceSpecification._();

  static const List<_i2.SmithySerializer<ReservationFleetInstanceSpecification>>
      serializers = [ReservationFleetInstanceSpecificationEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ReservationFleetInstanceSpecificationBuilder b) {
    b.ebsOptimized = false;
  }

  /// The instance type for which the Capacity Reservation Fleet reserves capacity.
  InstanceType? get instanceType;

  /// The type of operating system for which the Capacity Reservation Fleet reserves capacity.
  CapacityReservationInstancePlatform? get instancePlatform;

  /// The number of capacity units provided by the specified instance type. This value, together with the total target capacity that you specify for the Fleet determine the number of instances for which the Fleet reserves capacity. Both values are based on units that make sense for your workload. For more information, see [Total target capacity](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#target-capacity) in the Amazon EC2 User Guide.
  double? get weight;

  /// The Availability Zone in which the Capacity Reservation Fleet reserves the capacity. A Capacity Reservation Fleet can't span Availability Zones. All instance type specifications that you specify for the Fleet must use the same Availability Zone.
  String? get availabilityZone;

  /// The ID of the Availability Zone in which the Capacity Reservation Fleet reserves the capacity. A Capacity Reservation Fleet can't span Availability Zones. All instance type specifications that you specify for the Fleet must use the same Availability Zone.
  String? get availabilityZoneId;

  /// Indicates whether the Capacity Reservation Fleet supports EBS-optimized instances types. This optimization provides dedicated throughput to Amazon EBS and an optimized configuration stack to provide optimal I/O performance. This optimization isn't available with all instance types. Additional usage charges apply when using EBS-optimized instance types.
  bool get ebsOptimized;

  /// The priority to assign to the instance type. This value is used to determine which of the instance types specified for the Fleet should be prioritized for use. A lower value indicates a high priority. For more information, see [Instance type priority](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#instance-priority) in the Amazon EC2 User Guide.
  int? get priority;
  @override
  List<Object?> get props => [
        instanceType,
        instancePlatform,
        weight,
        availabilityZone,
        availabilityZoneId,
        ebsOptimized,
        priority,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ReservationFleetInstanceSpecification')
          ..add(
            'instanceType',
            instanceType,
          )
          ..add(
            'instancePlatform',
            instancePlatform,
          )
          ..add(
            'weight',
            weight,
          )
          ..add(
            'availabilityZone',
            availabilityZone,
          )
          ..add(
            'availabilityZoneId',
            availabilityZoneId,
          )
          ..add(
            'ebsOptimized',
            ebsOptimized,
          )
          ..add(
            'priority',
            priority,
          );
    return helper.toString();
  }
}

class ReservationFleetInstanceSpecificationEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<ReservationFleetInstanceSpecification> {
  const ReservationFleetInstanceSpecificationEc2QuerySerializer()
      : super('ReservationFleetInstanceSpecification');

  @override
  Iterable<Type> get types => const [
        ReservationFleetInstanceSpecification,
        _$ReservationFleetInstanceSpecification,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ReservationFleetInstanceSpecification deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReservationFleetInstanceSpecificationBuilder();
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
        case 'InstancePlatform':
          result.instancePlatform = (serializers.deserialize(
            value,
            specifiedType: const FullType(CapacityReservationInstancePlatform),
          ) as CapacityReservationInstancePlatform);
        case 'Weight':
          result.weight = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'AvailabilityZone':
          result.availabilityZone = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AvailabilityZoneId':
          result.availabilityZoneId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'EbsOptimized':
          result.ebsOptimized = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'Priority':
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
    ReservationFleetInstanceSpecification object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ReservationFleetInstanceSpecificationResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ReservationFleetInstanceSpecification(
      :instanceType,
      :instancePlatform,
      :weight,
      :availabilityZone,
      :availabilityZoneId,
      :ebsOptimized,
      :priority
    ) = object;
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
    if (weight != null) {
      result$
        ..add(const _i2.XmlElementName('Weight'))
        ..add(serializers.serialize(
          weight,
          specifiedType: const FullType(double),
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
    if (availabilityZoneId != null) {
      result$
        ..add(const _i2.XmlElementName('AvailabilityZoneId'))
        ..add(serializers.serialize(
          availabilityZoneId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i2.XmlElementName('EbsOptimized'))
      ..add(serializers.serialize(
        ebsOptimized,
        specifiedType: const FullType(bool),
      ));
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
