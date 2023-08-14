// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.capacity_reservation_fleet; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_fleet_state.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_capacity_reservation.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_capacity_reservation_tenancy.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_instance_match_criteria.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag.dart';

part 'capacity_reservation_fleet.g.dart';

/// Information about a Capacity Reservation Fleet.
abstract class CapacityReservationFleet
    with _i1.AWSEquatable<CapacityReservationFleet>
    implements
        Built<CapacityReservationFleet, CapacityReservationFleetBuilder> {
  /// Information about a Capacity Reservation Fleet.
  factory CapacityReservationFleet({
    String? capacityReservationFleetId,
    String? capacityReservationFleetArn,
    CapacityReservationFleetState? state,
    int? totalTargetCapacity,
    double? totalFulfilledCapacity,
    FleetCapacityReservationTenancy? tenancy,
    DateTime? endDate,
    DateTime? createTime,
    FleetInstanceMatchCriteria? instanceMatchCriteria,
    String? allocationStrategy,
    List<FleetCapacityReservation>? instanceTypeSpecifications,
    List<Tag>? tags,
  }) {
    totalTargetCapacity ??= 0;
    totalFulfilledCapacity ??= 0;
    return _$CapacityReservationFleet._(
      capacityReservationFleetId: capacityReservationFleetId,
      capacityReservationFleetArn: capacityReservationFleetArn,
      state: state,
      totalTargetCapacity: totalTargetCapacity,
      totalFulfilledCapacity: totalFulfilledCapacity,
      tenancy: tenancy,
      endDate: endDate,
      createTime: createTime,
      instanceMatchCriteria: instanceMatchCriteria,
      allocationStrategy: allocationStrategy,
      instanceTypeSpecifications: instanceTypeSpecifications == null
          ? null
          : _i2.BuiltList(instanceTypeSpecifications),
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  /// Information about a Capacity Reservation Fleet.
  factory CapacityReservationFleet.build(
          [void Function(CapacityReservationFleetBuilder) updates]) =
      _$CapacityReservationFleet;

  const CapacityReservationFleet._();

  static const List<_i3.SmithySerializer<CapacityReservationFleet>>
      serializers = [CapacityReservationFleetEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CapacityReservationFleetBuilder b) {
    b
      ..totalTargetCapacity = 0
      ..totalFulfilledCapacity = 0;
  }

  /// The ID of the Capacity Reservation Fleet.
  String? get capacityReservationFleetId;

  /// The ARN of the Capacity Reservation Fleet.
  String? get capacityReservationFleetArn;

  /// The state of the Capacity Reservation Fleet. Possible states include:
  ///
  /// *   `submitted` \- The Capacity Reservation Fleet request has been submitted and Amazon Elastic Compute Cloud is preparing to create the Capacity Reservations.
  ///
  /// *   `modifying` \- The Capacity Reservation Fleet is being modified. The Fleet remains in this state until the modification is complete.
  ///
  /// *   `active` \- The Capacity Reservation Fleet has fulfilled its total target capacity and it is attempting to maintain this capacity. The Fleet remains in this state until it is modified or deleted.
  ///
  /// *   `partially_fulfilled` \- The Capacity Reservation Fleet has partially fulfilled its total target capacity. There is insufficient Amazon EC2 to fulfill the total target capacity. The Fleet is attempting to asynchronously fulfill its total target capacity.
  ///
  /// *   `expiring` \- The Capacity Reservation Fleet has reach its end date and it is in the process of expiring. One or more of its Capacity reservations might still be active.
  ///
  /// *   `expired` \- The Capacity Reservation Fleet has reach its end date. The Fleet and its Capacity Reservations are expired. The Fleet can't create new Capacity Reservations.
  ///
  /// *   `cancelling` \- The Capacity Reservation Fleet is in the process of being cancelled. One or more of its Capacity reservations might still be active.
  ///
  /// *   `cancelled` \- The Capacity Reservation Fleet has been manually cancelled. The Fleet and its Capacity Reservations are cancelled and the Fleet can't create new Capacity Reservations.
  ///
  /// *   `failed` \- The Capacity Reservation Fleet failed to reserve capacity for the specified instance types.
  CapacityReservationFleetState? get state;

  /// The total number of capacity units for which the Capacity Reservation Fleet reserves capacity. For more information, see [Total target capacity](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#target-capacity) in the Amazon EC2 User Guide.
  int get totalTargetCapacity;

  /// The capacity units that have been fulfilled.
  double get totalFulfilledCapacity;

  /// The tenancy of the Capacity Reservation Fleet. Tenancies include:
  ///
  /// *   `default` \- The Capacity Reservation Fleet is created on hardware that is shared with other Amazon Web Services accounts.
  ///
  /// *   `dedicated` \- The Capacity Reservation Fleet is created on single-tenant hardware that is dedicated to a single Amazon Web Services account.
  FleetCapacityReservationTenancy? get tenancy;

  /// The date and time at which the Capacity Reservation Fleet expires.
  DateTime? get endDate;

  /// The date and time at which the Capacity Reservation Fleet was created.
  DateTime? get createTime;

  /// Indicates the type of instance launches that the Capacity Reservation Fleet accepts. All Capacity Reservations in the Fleet inherit this instance matching criteria.
  ///
  /// Currently, Capacity Reservation Fleets support `open` instance matching criteria only. This means that instances that have matching attributes (instance type, platform, and Availability Zone) run in the Capacity Reservations automatically. Instances do not need to explicitly target a Capacity Reservation Fleet to use its reserved capacity.
  FleetInstanceMatchCriteria? get instanceMatchCriteria;

  /// The strategy used by the Capacity Reservation Fleet to determine which of the specified instance types to use. For more information, see For more information, see [Allocation strategy](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#allocation-strategy) in the Amazon EC2 User Guide.
  String? get allocationStrategy;

  /// Information about the instance types for which to reserve the capacity.
  _i2.BuiltList<FleetCapacityReservation>? get instanceTypeSpecifications;

  /// The tags assigned to the Capacity Reservation Fleet.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        capacityReservationFleetId,
        capacityReservationFleetArn,
        state,
        totalTargetCapacity,
        totalFulfilledCapacity,
        tenancy,
        endDate,
        createTime,
        instanceMatchCriteria,
        allocationStrategy,
        instanceTypeSpecifications,
        tags,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('CapacityReservationFleet')
      ..add(
        'capacityReservationFleetId',
        capacityReservationFleetId,
      )
      ..add(
        'capacityReservationFleetArn',
        capacityReservationFleetArn,
      )
      ..add(
        'state',
        state,
      )
      ..add(
        'totalTargetCapacity',
        totalTargetCapacity,
      )
      ..add(
        'totalFulfilledCapacity',
        totalFulfilledCapacity,
      )
      ..add(
        'tenancy',
        tenancy,
      )
      ..add(
        'endDate',
        endDate,
      )
      ..add(
        'createTime',
        createTime,
      )
      ..add(
        'instanceMatchCriteria',
        instanceMatchCriteria,
      )
      ..add(
        'allocationStrategy',
        allocationStrategy,
      )
      ..add(
        'instanceTypeSpecifications',
        instanceTypeSpecifications,
      )
      ..add(
        'tags',
        tags,
      );
    return helper.toString();
  }
}

class CapacityReservationFleetEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<CapacityReservationFleet> {
  const CapacityReservationFleetEc2QuerySerializer()
      : super('CapacityReservationFleet');

  @override
  Iterable<Type> get types => const [
        CapacityReservationFleet,
        _$CapacityReservationFleet,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CapacityReservationFleet deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CapacityReservationFleetBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'capacityReservationFleetId':
          result.capacityReservationFleetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'capacityReservationFleetArn':
          result.capacityReservationFleetArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'state':
          result.state = (serializers.deserialize(
            value,
            specifiedType: const FullType(CapacityReservationFleetState),
          ) as CapacityReservationFleetState);
        case 'totalTargetCapacity':
          result.totalTargetCapacity = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'totalFulfilledCapacity':
          result.totalFulfilledCapacity = (serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double);
        case 'tenancy':
          result.tenancy = (serializers.deserialize(
            value,
            specifiedType: const FullType(FleetCapacityReservationTenancy),
          ) as FleetCapacityReservationTenancy);
        case 'endDate':
          result.endDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'createTime':
          result.createTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'instanceMatchCriteria':
          result.instanceMatchCriteria = (serializers.deserialize(
            value,
            specifiedType: const FullType(FleetInstanceMatchCriteria),
          ) as FleetInstanceMatchCriteria);
        case 'allocationStrategy':
          result.allocationStrategy = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'instanceTypeSpecificationSet':
          result.instanceTypeSpecifications
              .replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(FleetCapacityReservation)],
            ),
          ) as _i2.BuiltList<FleetCapacityReservation>));
        case 'tagSet':
          result.tags.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i2.BuiltList<Tag>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CapacityReservationFleet object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'CapacityReservationFleetResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CapacityReservationFleet(
      :capacityReservationFleetId,
      :capacityReservationFleetArn,
      :state,
      :totalTargetCapacity,
      :totalFulfilledCapacity,
      :tenancy,
      :endDate,
      :createTime,
      :instanceMatchCriteria,
      :allocationStrategy,
      :instanceTypeSpecifications,
      :tags
    ) = object;
    if (capacityReservationFleetId != null) {
      result$
        ..add(const _i3.XmlElementName('CapacityReservationFleetId'))
        ..add(serializers.serialize(
          capacityReservationFleetId,
          specifiedType: const FullType(String),
        ));
    }
    if (capacityReservationFleetArn != null) {
      result$
        ..add(const _i3.XmlElementName('CapacityReservationFleetArn'))
        ..add(serializers.serialize(
          capacityReservationFleetArn,
          specifiedType: const FullType(String),
        ));
    }
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType.nullable(CapacityReservationFleetState),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('TotalTargetCapacity'))
      ..add(serializers.serialize(
        totalTargetCapacity,
        specifiedType: const FullType(int),
      ));
    result$
      ..add(const _i3.XmlElementName('TotalFulfilledCapacity'))
      ..add(serializers.serialize(
        totalFulfilledCapacity,
        specifiedType: const FullType(double),
      ));
    if (tenancy != null) {
      result$
        ..add(const _i3.XmlElementName('Tenancy'))
        ..add(serializers.serialize(
          tenancy,
          specifiedType:
              const FullType.nullable(FleetCapacityReservationTenancy),
        ));
    }
    if (endDate != null) {
      result$
        ..add(const _i3.XmlElementName('EndDate'))
        ..add(serializers.serialize(
          endDate,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (createTime != null) {
      result$
        ..add(const _i3.XmlElementName('CreateTime'))
        ..add(serializers.serialize(
          createTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (instanceMatchCriteria != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceMatchCriteria'))
        ..add(serializers.serialize(
          instanceMatchCriteria,
          specifiedType: const FullType.nullable(FleetInstanceMatchCriteria),
        ));
    }
    if (allocationStrategy != null) {
      result$
        ..add(const _i3.XmlElementName('AllocationStrategy'))
        ..add(serializers.serialize(
          allocationStrategy,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceTypeSpecifications != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceTypeSpecificationSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          instanceTypeSpecifications,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(FleetCapacityReservation)],
          ),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i3.XmlElementName('TagSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
