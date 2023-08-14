// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_capacity_reservation_fleet_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;

part 'modify_capacity_reservation_fleet_request.g.dart';

abstract class ModifyCapacityReservationFleetRequest
    with
        _i1.HttpInput<ModifyCapacityReservationFleetRequest>,
        _i2.AWSEquatable<ModifyCapacityReservationFleetRequest>
    implements
        Built<ModifyCapacityReservationFleetRequest,
            ModifyCapacityReservationFleetRequestBuilder> {
  factory ModifyCapacityReservationFleetRequest({
    String? capacityReservationFleetId,
    int? totalTargetCapacity,
    DateTime? endDate,
    bool? dryRun,
    bool? removeEndDate,
  }) {
    totalTargetCapacity ??= 0;
    dryRun ??= false;
    removeEndDate ??= false;
    return _$ModifyCapacityReservationFleetRequest._(
      capacityReservationFleetId: capacityReservationFleetId,
      totalTargetCapacity: totalTargetCapacity,
      endDate: endDate,
      dryRun: dryRun,
      removeEndDate: removeEndDate,
    );
  }

  factory ModifyCapacityReservationFleetRequest.build(
      [void Function(ModifyCapacityReservationFleetRequestBuilder)
          updates]) = _$ModifyCapacityReservationFleetRequest;

  const ModifyCapacityReservationFleetRequest._();

  factory ModifyCapacityReservationFleetRequest.fromRequest(
    ModifyCapacityReservationFleetRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<_i1.SmithySerializer<ModifyCapacityReservationFleetRequest>>
      serializers = [ModifyCapacityReservationFleetRequestEc2QuerySerializer()];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ModifyCapacityReservationFleetRequestBuilder b) {
    b
      ..totalTargetCapacity = 0
      ..dryRun = false
      ..removeEndDate = false;
  }

  /// The ID of the Capacity Reservation Fleet to modify.
  String? get capacityReservationFleetId;

  /// The total number of capacity units to be reserved by the Capacity Reservation Fleet. This value, together with the instance type weights that you assign to each instance type used by the Fleet determine the number of instances for which the Fleet reserves capacity. Both values are based on units that make sense for your workload. For more information, see [Total target capacity](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/crfleet-concepts.html#target-capacity) in the Amazon EC2 User Guide.
  int get totalTargetCapacity;

  /// The date and time at which the Capacity Reservation Fleet expires. When the Capacity Reservation Fleet expires, its state changes to `expired` and all of the Capacity Reservations in the Fleet expire.
  ///
  /// The Capacity Reservation Fleet expires within an hour after the specified time. For example, if you specify `5/31/2019`, `13:30:55`, the Capacity Reservation Fleet is guaranteed to expire between `13:30:55` and `14:30:55` on `5/31/2019`.
  ///
  /// You can't specify **EndDate** and **RemoveEndDate** in the same request.
  DateTime? get endDate;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// Indicates whether to remove the end date from the Capacity Reservation Fleet. If you remove the end date, the Capacity Reservation Fleet does not expire and it remains active until you explicitly cancel it using the **CancelCapacityReservationFleet** action.
  ///
  /// You can't specify **RemoveEndDate** and **EndDate** in the same request.
  bool get removeEndDate;
  @override
  ModifyCapacityReservationFleetRequest getPayload() => this;
  @override
  List<Object?> get props => [
        capacityReservationFleetId,
        totalTargetCapacity,
        endDate,
        dryRun,
        removeEndDate,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ModifyCapacityReservationFleetRequest')
          ..add(
            'capacityReservationFleetId',
            capacityReservationFleetId,
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
            'dryRun',
            dryRun,
          )
          ..add(
            'removeEndDate',
            removeEndDate,
          );
    return helper.toString();
  }
}

class ModifyCapacityReservationFleetRequestEc2QuerySerializer extends _i1
    .StructuredSmithySerializer<ModifyCapacityReservationFleetRequest> {
  const ModifyCapacityReservationFleetRequestEc2QuerySerializer()
      : super('ModifyCapacityReservationFleetRequest');

  @override
  Iterable<Type> get types => const [
        ModifyCapacityReservationFleetRequest,
        _$ModifyCapacityReservationFleetRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyCapacityReservationFleetRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyCapacityReservationFleetRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'CapacityReservationFleetId':
          result.capacityReservationFleetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
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
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'RemoveEndDate':
          result.removeEndDate = (serializers.deserialize(
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
    ModifyCapacityReservationFleetRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyCapacityReservationFleetRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyCapacityReservationFleetRequest(
      :capacityReservationFleetId,
      :totalTargetCapacity,
      :endDate,
      :dryRun,
      :removeEndDate
    ) = object;
    if (capacityReservationFleetId != null) {
      result$
        ..add(const _i1.XmlElementName('CapacityReservationFleetId'))
        ..add(serializers.serialize(
          capacityReservationFleetId,
          specifiedType: const FullType(String),
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
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    result$
      ..add(const _i1.XmlElementName('RemoveEndDate'))
      ..add(serializers.serialize(
        removeEndDate,
        specifiedType: const FullType(bool),
      ));
    return result$;
  }
}
