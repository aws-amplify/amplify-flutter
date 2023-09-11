// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_capacity_reservation_fleet_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

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

part 'create_capacity_reservation_fleet_result.g.dart';

abstract class CreateCapacityReservationFleetResult
    with
        _i1.AWSEquatable<CreateCapacityReservationFleetResult>
    implements
        Built<CreateCapacityReservationFleetResult,
            CreateCapacityReservationFleetResultBuilder> {
  factory CreateCapacityReservationFleetResult({
    String? capacityReservationFleetId,
    CapacityReservationFleetState? state,
    int? totalTargetCapacity,
    double? totalFulfilledCapacity,
    FleetInstanceMatchCriteria? instanceMatchCriteria,
    String? allocationStrategy,
    DateTime? createTime,
    DateTime? endDate,
    FleetCapacityReservationTenancy? tenancy,
    List<FleetCapacityReservation>? fleetCapacityReservations,
    List<Tag>? tags,
  }) {
    totalTargetCapacity ??= 0;
    totalFulfilledCapacity ??= 0;
    return _$CreateCapacityReservationFleetResult._(
      capacityReservationFleetId: capacityReservationFleetId,
      state: state,
      totalTargetCapacity: totalTargetCapacity,
      totalFulfilledCapacity: totalFulfilledCapacity,
      instanceMatchCriteria: instanceMatchCriteria,
      allocationStrategy: allocationStrategy,
      createTime: createTime,
      endDate: endDate,
      tenancy: tenancy,
      fleetCapacityReservations: fleetCapacityReservations == null
          ? null
          : _i2.BuiltList(fleetCapacityReservations),
      tags: tags == null ? null : _i2.BuiltList(tags),
    );
  }

  factory CreateCapacityReservationFleetResult.build(
      [void Function(CreateCapacityReservationFleetResultBuilder)
          updates]) = _$CreateCapacityReservationFleetResult;

  const CreateCapacityReservationFleetResult._();

  /// Constructs a [CreateCapacityReservationFleetResult] from a [payload] and [response].
  factory CreateCapacityReservationFleetResult.fromResponse(
    CreateCapacityReservationFleetResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer<CreateCapacityReservationFleetResult>>
      serializers = [CreateCapacityReservationFleetResultEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateCapacityReservationFleetResultBuilder b) {
    b
      ..totalTargetCapacity = 0
      ..totalFulfilledCapacity = 0;
  }

  /// The ID of the Capacity Reservation Fleet.
  String? get capacityReservationFleetId;

  /// The status of the Capacity Reservation Fleet.
  CapacityReservationFleetState? get state;

  /// The total number of capacity units for which the Capacity Reservation Fleet reserves capacity.
  int get totalTargetCapacity;

  /// The requested capacity units that have been successfully reserved.
  double get totalFulfilledCapacity;

  /// The instance matching criteria for the Capacity Reservation Fleet.
  FleetInstanceMatchCriteria? get instanceMatchCriteria;

  /// The allocation strategy used by the Capacity Reservation Fleet.
  String? get allocationStrategy;

  /// The date and time at which the Capacity Reservation Fleet was created.
  DateTime? get createTime;

  /// The date and time at which the Capacity Reservation Fleet expires.
  DateTime? get endDate;

  /// Indicates the tenancy of Capacity Reservation Fleet.
  FleetCapacityReservationTenancy? get tenancy;

  /// Information about the individual Capacity Reservations in the Capacity Reservation Fleet.
  _i2.BuiltList<FleetCapacityReservation>? get fleetCapacityReservations;

  /// The tags assigned to the Capacity Reservation Fleet.
  _i2.BuiltList<Tag>? get tags;
  @override
  List<Object?> get props => [
        capacityReservationFleetId,
        state,
        totalTargetCapacity,
        totalFulfilledCapacity,
        instanceMatchCriteria,
        allocationStrategy,
        createTime,
        endDate,
        tenancy,
        fleetCapacityReservations,
        tags,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateCapacityReservationFleetResult')
          ..add(
            'capacityReservationFleetId',
            capacityReservationFleetId,
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
            'instanceMatchCriteria',
            instanceMatchCriteria,
          )
          ..add(
            'allocationStrategy',
            allocationStrategy,
          )
          ..add(
            'createTime',
            createTime,
          )
          ..add(
            'endDate',
            endDate,
          )
          ..add(
            'tenancy',
            tenancy,
          )
          ..add(
            'fleetCapacityReservations',
            fleetCapacityReservations,
          )
          ..add(
            'tags',
            tags,
          );
    return helper.toString();
  }
}

class CreateCapacityReservationFleetResultEc2QuerySerializer extends _i3
    .StructuredSmithySerializer<CreateCapacityReservationFleetResult> {
  const CreateCapacityReservationFleetResultEc2QuerySerializer()
      : super('CreateCapacityReservationFleetResult');

  @override
  Iterable<Type> get types => const [
        CreateCapacityReservationFleetResult,
        _$CreateCapacityReservationFleetResult,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateCapacityReservationFleetResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateCapacityReservationFleetResultBuilder();
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
        case 'createTime':
          result.createTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'endDate':
          result.endDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'tenancy':
          result.tenancy = (serializers.deserialize(
            value,
            specifiedType: const FullType(FleetCapacityReservationTenancy),
          ) as FleetCapacityReservationTenancy);
        case 'fleetCapacityReservationSet':
          result.fleetCapacityReservations
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
    CreateCapacityReservationFleetResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'CreateCapacityReservationFleetResultResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateCapacityReservationFleetResult(
      :capacityReservationFleetId,
      :state,
      :totalTargetCapacity,
      :totalFulfilledCapacity,
      :instanceMatchCriteria,
      :allocationStrategy,
      :createTime,
      :endDate,
      :tenancy,
      :fleetCapacityReservations,
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
    if (state != null) {
      result$
        ..add(const _i3.XmlElementName('State'))
        ..add(serializers.serialize(
          state,
          specifiedType: const FullType(CapacityReservationFleetState),
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
    if (instanceMatchCriteria != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceMatchCriteria'))
        ..add(serializers.serialize(
          instanceMatchCriteria,
          specifiedType: const FullType(FleetInstanceMatchCriteria),
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
    if (createTime != null) {
      result$
        ..add(const _i3.XmlElementName('CreateTime'))
        ..add(serializers.serialize(
          createTime,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (endDate != null) {
      result$
        ..add(const _i3.XmlElementName('EndDate'))
        ..add(serializers.serialize(
          endDate,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (tenancy != null) {
      result$
        ..add(const _i3.XmlElementName('Tenancy'))
        ..add(serializers.serialize(
          tenancy,
          specifiedType: const FullType(FleetCapacityReservationTenancy),
        ));
    }
    if (fleetCapacityReservations != null) {
      result$
        ..add(const _i3.XmlElementName('FleetCapacityReservationSet'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          fleetCapacityReservations,
          specifiedType: const FullType(
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
          specifiedType: const FullType(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    return result$;
  }
}
