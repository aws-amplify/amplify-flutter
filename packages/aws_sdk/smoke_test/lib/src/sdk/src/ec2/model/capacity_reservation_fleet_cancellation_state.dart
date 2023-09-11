// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.capacity_reservation_fleet_cancellation_state; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/capacity_reservation_fleet_state.dart';

part 'capacity_reservation_fleet_cancellation_state.g.dart';

/// Describes a Capacity Reservation Fleet that was successfully cancelled.
abstract class CapacityReservationFleetCancellationState
    with
        _i1.AWSEquatable<CapacityReservationFleetCancellationState>
    implements
        Built<CapacityReservationFleetCancellationState,
            CapacityReservationFleetCancellationStateBuilder> {
  /// Describes a Capacity Reservation Fleet that was successfully cancelled.
  factory CapacityReservationFleetCancellationState({
    CapacityReservationFleetState? currentFleetState,
    CapacityReservationFleetState? previousFleetState,
    String? capacityReservationFleetId,
  }) {
    return _$CapacityReservationFleetCancellationState._(
      currentFleetState: currentFleetState,
      previousFleetState: previousFleetState,
      capacityReservationFleetId: capacityReservationFleetId,
    );
  }

  /// Describes a Capacity Reservation Fleet that was successfully cancelled.
  factory CapacityReservationFleetCancellationState.build(
      [void Function(CapacityReservationFleetCancellationStateBuilder)
          updates]) = _$CapacityReservationFleetCancellationState;

  const CapacityReservationFleetCancellationState._();

  static const List<
          _i2.SmithySerializer<CapacityReservationFleetCancellationState>>
      serializers = [
    CapacityReservationFleetCancellationStateEc2QuerySerializer()
  ];

  /// The current state of the Capacity Reservation Fleet.
  CapacityReservationFleetState? get currentFleetState;

  /// The previous state of the Capacity Reservation Fleet.
  CapacityReservationFleetState? get previousFleetState;

  /// The ID of the Capacity Reservation Fleet that was successfully cancelled.
  String? get capacityReservationFleetId;
  @override
  List<Object?> get props => [
        currentFleetState,
        previousFleetState,
        capacityReservationFleetId,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CapacityReservationFleetCancellationState')
          ..add(
            'currentFleetState',
            currentFleetState,
          )
          ..add(
            'previousFleetState',
            previousFleetState,
          )
          ..add(
            'capacityReservationFleetId',
            capacityReservationFleetId,
          );
    return helper.toString();
  }
}

class CapacityReservationFleetCancellationStateEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<CapacityReservationFleetCancellationState> {
  const CapacityReservationFleetCancellationStateEc2QuerySerializer()
      : super('CapacityReservationFleetCancellationState');

  @override
  Iterable<Type> get types => const [
        CapacityReservationFleetCancellationState,
        _$CapacityReservationFleetCancellationState,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CapacityReservationFleetCancellationState deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CapacityReservationFleetCancellationStateBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'currentFleetState':
          result.currentFleetState = (serializers.deserialize(
            value,
            specifiedType: const FullType(CapacityReservationFleetState),
          ) as CapacityReservationFleetState);
        case 'previousFleetState':
          result.previousFleetState = (serializers.deserialize(
            value,
            specifiedType: const FullType(CapacityReservationFleetState),
          ) as CapacityReservationFleetState);
        case 'capacityReservationFleetId':
          result.capacityReservationFleetId = (serializers.deserialize(
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
    CapacityReservationFleetCancellationState object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CapacityReservationFleetCancellationStateResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CapacityReservationFleetCancellationState(
      :currentFleetState,
      :previousFleetState,
      :capacityReservationFleetId
    ) = object;
    if (currentFleetState != null) {
      result$
        ..add(const _i2.XmlElementName('CurrentFleetState'))
        ..add(serializers.serialize(
          currentFleetState,
          specifiedType: const FullType(CapacityReservationFleetState),
        ));
    }
    if (previousFleetState != null) {
      result$
        ..add(const _i2.XmlElementName('PreviousFleetState'))
        ..add(serializers.serialize(
          previousFleetState,
          specifiedType: const FullType(CapacityReservationFleetState),
        ));
    }
    if (capacityReservationFleetId != null) {
      result$
        ..add(const _i2.XmlElementName('CapacityReservationFleetId'))
        ..add(serializers.serialize(
          capacityReservationFleetId,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}
