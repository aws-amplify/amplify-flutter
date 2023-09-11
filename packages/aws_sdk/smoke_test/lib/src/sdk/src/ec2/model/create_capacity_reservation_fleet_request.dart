// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_capacity_reservation_fleet_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_collection/built_collection.dart' as _i3;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_capacity_reservation_tenancy.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/fleet_instance_match_criteria.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/reservation_fleet_instance_specification.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/tag_specification.dart';

part 'create_capacity_reservation_fleet_request.g.dart';

abstract class CreateCapacityReservationFleetRequest
    with
        _i1.HttpInput<CreateCapacityReservationFleetRequest>,
        _i2.AWSEquatable<CreateCapacityReservationFleetRequest>
    implements
        Built<CreateCapacityReservationFleetRequest,
            CreateCapacityReservationFleetRequestBuilder> {
  factory CreateCapacityReservationFleetRequest({
    String? allocationStrategy,
    String? clientToken,
    List<ReservationFleetInstanceSpecification>? instanceTypeSpecifications,
    FleetCapacityReservationTenancy? tenancy,
    int? totalTargetCapacity,
    DateTime? endDate,
    FleetInstanceMatchCriteria? instanceMatchCriteria,
    List<TagSpecification>? tagSpecifications,
    bool? dryRun,
  }) {
    totalTargetCapacity ??= 0;
    dryRun ??= false;
    return _$CreateCapacityReservationFleetRequest._(
      allocationStrategy: allocationStrategy,
      clientToken: clientToken,
      instanceTypeSpecifications: instanceTypeSpecifications == null
          ? null
          : _i3.BuiltList(instanceTypeSpecifications),
      tenancy: tenancy,
      totalTargetCapacity: totalTargetCapacity,
      endDate: endDate,
      instanceMatchCriteria: instanceMatchCriteria,
      tagSpecifications:
          tagSpecifications == null ? null : _i3.BuiltList(tagSpecifications),
      dryRun: dryRun,
    );
  }

  factory CreateCapacityReservationFleetRequest.build(
      [void Function(CreateCapacityReservationFleetRequestBuilder)
          updates]) = _$CreateCapacityReservationFleetRequest;

  const CreateCapacityReservationFleetRequest._();

  factory CreateCapacityReservationFleetRequest.fromRequest(
    CreateCapacityReservationFleetRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<CreateCapacityReservationFleetRequest>>
      serializers = [CreateCapacityReservationFleetRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(CreateCapacityReservationFleetRequestBuilder b) {
    b
      ..clientToken = const bool.hasEnvironment('SMITHY_TEST')
          ? '00000000-0000-4000-8000-000000000000'
          : _i2.uuid(secure: true)
      ..totalTargetCapacity = 0
      ..dryRun = false;
  }

  /// The strategy used by the Capacity Reservation Fleet to determine which of the specified instance types to use. Currently, only the `prioritized` allocation strategy is supported. For more information, see [Allocation strategy](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#allocation-strategy) in the Amazon EC2 User Guide.
  ///
  /// Valid values: `prioritized`
  String? get allocationStrategy;

  /// Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. For more information, see [Ensure Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;

  /// Information about the instance types for which to reserve the capacity.
  _i3.BuiltList<ReservationFleetInstanceSpecification>?
      get instanceTypeSpecifications;

  /// Indicates the tenancy of the Capacity Reservation Fleet. All Capacity Reservations in the Fleet inherit this tenancy. The Capacity Reservation Fleet can have one of the following tenancy settings:
  ///
  /// *   `default` \- The Capacity Reservation Fleet is created on hardware that is shared with other Amazon Web Services accounts.
  ///
  /// *   `dedicated` \- The Capacity Reservations are created on single-tenant hardware that is dedicated to a single Amazon Web Services account.
  FleetCapacityReservationTenancy? get tenancy;

  /// The total number of capacity units to be reserved by the Capacity Reservation Fleet. This value, together with the instance type weights that you assign to each instance type used by the Fleet determine the number of instances for which the Fleet reserves capacity. Both values are based on units that make sense for your workload. For more information, see [Total target capacity](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#target-capacity) in the Amazon EC2 User Guide.
  int get totalTargetCapacity;

  /// The date and time at which the Capacity Reservation Fleet expires. When the Capacity Reservation Fleet expires, its state changes to `expired` and all of the Capacity Reservations in the Fleet expire.
  ///
  /// The Capacity Reservation Fleet expires within an hour after the specified time. For example, if you specify `5/31/2019`, `13:30:55`, the Capacity Reservation Fleet is guaranteed to expire between `13:30:55` and `14:30:55` on `5/31/2019`.
  DateTime? get endDate;

  /// Indicates the type of instance launches that the Capacity Reservation Fleet accepts. All Capacity Reservations in the Fleet inherit this instance matching criteria.
  ///
  /// Currently, Capacity Reservation Fleets support `open` instance matching criteria only. This means that instances that have matching attributes (instance type, platform, and Availability Zone) run in the Capacity Reservations automatically. Instances do not need to explicitly target a Capacity Reservation Fleet to use its reserved capacity.
  FleetInstanceMatchCriteria? get instanceMatchCriteria;

  /// The tags to assign to the Capacity Reservation Fleet. The tags are automatically assigned to the Capacity Reservations in the Fleet.
  _i3.BuiltList<TagSpecification>? get tagSpecifications;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;
  @override
  CreateCapacityReservationFleetRequest getPayload() => this;
  @override
  List<Object?> get props => [
        allocationStrategy,
        clientToken,
        instanceTypeSpecifications,
        tenancy,
        totalTargetCapacity,
        endDate,
        instanceMatchCriteria,
        tagSpecifications,
        dryRun,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateCapacityReservationFleetRequest')
          ..add(
            'allocationStrategy',
            allocationStrategy,
          )
          ..add(
            'clientToken',
            clientToken,
          )
          ..add(
            'instanceTypeSpecifications',
            instanceTypeSpecifications,
          )
          ..add(
            'tenancy',
            tenancy,
          )
          ..add(
            'totalTargetCapacity',
            totalTargetCapacity,
          )
          ..add(
            'endDate',
            endDate,
          )
          ..add(
            'instanceMatchCriteria',
            instanceMatchCriteria,
          )
          ..add(
            'tagSpecifications',
            tagSpecifications,
          )
          ..add(
            'dryRun',
            dryRun,
          );
    return helper.toString();
  }
}

class CreateCapacityReservationFleetRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<CreateCapacityReservationFleetRequest> {
  const CreateCapacityReservationFleetRequestEc2QuerySerializer()
      : super('CreateCapacityReservationFleetRequest');

  @override
  Iterable<Type> get types => const [
        CreateCapacityReservationFleetRequest,
        _$CreateCapacityReservationFleetRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateCapacityReservationFleetRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateCapacityReservationFleetRequestBuilder();
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
            specifiedType: const FullType(String),
          ) as String);
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'InstanceTypeSpecification':
          result.instanceTypeSpecifications.replace(
              (const _i1.XmlBuiltListSerializer(
                      indexer: _i1.XmlIndexer.ec2QueryList)
                  .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(ReservationFleetInstanceSpecification)],
            ),
          ) as _i3.BuiltList<ReservationFleetInstanceSpecification>));
        case 'Tenancy':
          result.tenancy = (serializers.deserialize(
            value,
            specifiedType: const FullType(FleetCapacityReservationTenancy),
          ) as FleetCapacityReservationTenancy);
        case 'TotalTargetCapacity':
          result.totalTargetCapacity = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'EndDate':
          result.endDate = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'InstanceMatchCriteria':
          result.instanceMatchCriteria = (serializers.deserialize(
            value,
            specifiedType: const FullType(FleetInstanceMatchCriteria),
          ) as FleetInstanceMatchCriteria);
        case 'TagSpecification':
          result.tagSpecifications.replace((const _i1.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i1.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i3.BuiltList,
              [FullType(TagSpecification)],
            ),
          ) as _i3.BuiltList<TagSpecification>));
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateCapacityReservationFleetRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'CreateCapacityReservationFleetRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateCapacityReservationFleetRequest(
      :allocationStrategy,
      :clientToken,
      :instanceTypeSpecifications,
      :tenancy,
      :totalTargetCapacity,
      :endDate,
      :instanceMatchCriteria,
      :tagSpecifications,
      :dryRun
    ) = object;
    if (allocationStrategy != null) {
      result$
        ..add(const _i1.XmlElementName('AllocationStrategy'))
        ..add(serializers.serialize(
          allocationStrategy,
          specifiedType: const FullType(String),
        ));
    }
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    if (instanceTypeSpecifications != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceTypeSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
                indexer: _i1.XmlIndexer.ec2QueryList)
            .serialize(
          serializers,
          instanceTypeSpecifications,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(ReservationFleetInstanceSpecification)],
          ),
        ));
    }
    if (tenancy != null) {
      result$
        ..add(const _i1.XmlElementName('Tenancy'))
        ..add(serializers.serialize(
          tenancy,
          specifiedType: const FullType(FleetCapacityReservationTenancy),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('TotalTargetCapacity'))
      ..add(serializers.serialize(
        totalTargetCapacity,
        specifiedType: const FullType(int),
      ));
    if (endDate != null) {
      result$
        ..add(const _i1.XmlElementName('EndDate'))
        ..add(serializers.serialize(
          endDate,
          specifiedType: const FullType(DateTime),
        ));
    }
    if (instanceMatchCriteria != null) {
      result$
        ..add(const _i1.XmlElementName('InstanceMatchCriteria'))
        ..add(serializers.serialize(
          instanceMatchCriteria,
          specifiedType: const FullType(FleetInstanceMatchCriteria),
        ));
    }
    if (tagSpecifications != null) {
      result$
        ..add(const _i1.XmlElementName('TagSpecification'))
        ..add(const _i1.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i1.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          tagSpecifications,
          specifiedType: const FullType(
            _i3.BuiltList,
            [FullType(TagSpecification)],
          ),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
